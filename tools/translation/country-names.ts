#!/usr/bin/env bun
/**
 * The fictional countries are renameable: every text names them by the bare
 * name, in a form the journeys viewer can substitute (memory
 * dir-renameable-countries, owner 2026-11-17).
 *
 * The viewer (cat-harness-tools `scripts/journeys/assets/present.js`,
 * `renameCountries()`) replaces each name of the page's `jp-countries` list
 * wherever it stands as a whole word, `(^|[^\p{L}\p{N}])Name(?=$|[^\p{L}\p{N}])`:
 * the English name, case-sensitive, on every locale's page. A demonym
 * ("Onesan"), a possessive ("Onesa's"), an inflected or transliterated form
 * (Онесы, أونيسا, 奥内萨) or a name glued to other letters (在Onesa出生, بOnesa)
 * is left behind when a room renames the country. This fails on each.
 *
 * The names are those of `scenarios/countries/*.json`; each country's
 * `notForms` lists the derived forms and transliterations once used for it,
 * matched as substrings in every text.
 *
 * Read:
 * - the English sources the viewer, the IG and the catalogues draw from
 *   (`SOURCES`): no name touching a letter, no possessive, no "a"/"an" before
 *   a name, no `notForms`;
 * - every `translations/**.po` entry's `msgstr` (obsolete `#~` entries
 *   excepted): the same, plus no French elision before a name (d’Onesa), and
 *   a translation keeps every name its msgid names.
 *
 * An identifier is not prose: a name inside an ASCII CamelCase word
 * (`TrustDemoOnesaPatient`, `OnesaVhl`) is skipped.
 *
 * Usage:
 *   bun tools/translation/country-names.ts           # report; exit 0
 *   bun tools/translation/country-names.ts --check   # exit 1 on any finding
 *   bun tools/translation/country-names.ts --json    # the findings as JSON: [{file, line, problem}]
 */
import { existsSync, readdirSync, readFileSync, statSync } from "node:fs";
import { join, relative, resolve } from "node:path";

const ROOT = resolve(import.meta.dir, "..", "..");

/** The English sources: what the viewer, the IG pages and the catalogues are made from. */
const SOURCES = [
  "README.md",
  "smart-trust-demo.json",
  "scenarios",
  "workshops",
  "processes/content",
  "docs",
  "input/pagecontent",
  "input/fsh",
  "glossary",
  "archimate",
  "code-lists",
  "skills",
  "tools/ig-gen/ig_gen.py",
  "tools/archimate/overlay.py",
];
const TEXT = /\.(md|json|bpmn|fsh|py|ts|xml|svg|html)$/;

interface Country { name: string; notForms: string[] }

function countries(): Country[] {
  const dir = join(ROOT, "scenarios", "countries");
  return readdirSync(dir)
    .filter((f) => f.endsWith(".json"))
    .sort()
    .map((f) => JSON.parse(readFileSync(join(dir, f), "utf8")) as { name: string; notForms?: string[] })
    .map((c) => ({ name: c.name, notForms: c.notForms ?? [] }));
}

function walk(p: string, want: RegExp = TEXT): string[] {
  const abs = join(ROOT, p);
  if (!existsSync(abs)) return [];
  if (!statSync(abs).isDirectory()) return want.test(p) ? [p] : [];
  return readdirSync(abs, { withFileTypes: true })
    .filter((e) => !e.name.startsWith(".") && e.name !== "node_modules" && e.name !== "__pycache__")
    .flatMap((e) => walk(join(p, e.name), want));
}

const LETTER = /[\p{L}\p{N}]/u;
const reEsc = (t: string) => t.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");

/** Is the name at [i, i+len) inside an ASCII CamelCase identifier (TrustDemoOnesaPatient)? */
function inIdentifier(s: string, i: number, len: number): boolean {
  const before = s[i - 1] ?? "";
  const after = s[i + len] ?? "";
  return /[a-z0-9_]/.test(before) || /[A-Z0-9_]/.test(after);
}

/** What is wrong with how `text` names the countries; `english` adds the English-only rules. */
export function problems(text: string, cs: Country[], opts: { english: boolean; french?: boolean }): string[] {
  const out: string[] = [];
  for (const c of cs) {
    for (const f of c.notForms) if (text.includes(f)) out.push(`"${f}": a derived form of ${c.name}; write the bare name`);
    const re = new RegExp(reEsc(c.name), "g");
    for (const m of text.matchAll(re)) {
      const i = m.index!;
      const before = text[i - 1] ?? "";
      const after = text[i + c.name.length] ?? "";
      const touches = LETTER.test(before) || LETTER.test(after);
      const listed = c.notForms.some((f) => text.slice(i, i + f.length) === f);
      if (touches && !listed && !inIdentifier(text, i, c.name.length)) {
        out.push(`"${text.slice(Math.max(0, i - 3), i + c.name.length + 3).trim()}": ${c.name} touches another letter, so a renamed country is not substituted; separate it with a space or punctuation`);
      }
    }
    if (opts.english) {
      for (const m of text.matchAll(new RegExp(`${reEsc(c.name)}['’]s\\b`, "g"))) out.push(`"${m[0]}": a possessive; write "of ${c.name}"`);
      for (const m of text.matchAll(new RegExp(`\\b(?:a|an|A|An) ${reEsc(c.name)}\\b`, "g"))) out.push(`"${m[0]}": an article chosen for this name; write "… in/from ${c.name}"`);
    }
    if (opts.french) {
      for (const m of text.matchAll(new RegExp(`(?:^|[^\\p{L}])(?:[dDlLjJsSnN]|[qQ]u|[lL]orsqu|[pP]uisqu|[jJ]usqu)['’]${reEsc(c.name)}`, "gu"))) out.push(`"${m[0].trim()}": an elision chosen for this name; write "du pays ${c.name}", "à ${c.name}", …`);
    }
  }
  return out;
}

/** The entries of a .po: msgid, msgstr and the line the entry starts on; `#~` entries are left out. */
function poEntries(text: string): { line: number; msgid: string; msgstr: string }[] {
  const unq = (s: string) => s.slice(1, -1).replace(/\\(.)/g, (_, c: string) => ({ n: "\n", t: "\t", r: "\r" } as Record<string, string>)[c] ?? c);
  const out: { line: number; msgid: string; msgstr: string }[] = [];
  const lines = text.split("\n");
  let cur: { line: number; msgid: string; msgstr: string } | null = null;
  let field = "";
  const flush = () => {
    if (cur && cur.msgid) out.push(cur);
    cur = null;
  };
  lines.forEach((l, n) => {
    if (l === "") return flush();
    if (l.startsWith("#")) {
      if (cur && field === "msgstr") flush();
      return;
    }
    const m = /^(msgctxt|msgid|msgstr(?:\[\d+\])?) (".*")$/.exec(l);
    if (m) {
      if (m[1] === "msgctxt" || (m[1] === "msgid" && cur && field.startsWith("msgstr"))) flush();
      if (!cur) cur = { line: n + 1, msgid: "", msgstr: "" };
      field = m[1]!.startsWith("msgstr") ? "msgstr" : m[1]!;
      if (field === "msgid" || field === "msgstr") cur[field] += unq(m[2]!);
      return;
    }
    if (l.startsWith('"') && cur && (field === "msgid" || field === "msgstr")) cur[field] += unq(l);
  });
  flush();
  return out;
}

function main(): void {
  const check = process.argv.includes("--check");
  const cs = countries();
  const findings: string[] = [];
  const found: { file: string; line: number; problem: string }[] = [];
  const add = (file: string, line: number, problem: string) => {
    findings.push(`${file}:${line}: ${problem}`);
    found.push({ file, line, problem });
  };

  let nSources = 0;
  for (const f of [...new Set(SOURCES.flatMap((s) => walk(s)))].sort()) {
    nSources++;
    readFileSync(join(ROOT, f), "utf8")
      .split("\n")
      .forEach((line, i) => {
        // A country's own `notForms` list names the forms it refuses.
        const listed = /^\s*"([^"]*)",?\s*$/.exec(line)?.[1];
        if (f.startsWith("scenarios/countries/") && listed && cs.some((c) => c.notForms.includes(listed))) return;
        for (const p of problems(line, cs, { english: true })) add(f, i + 1, p);
      });
  }

  let nEntries = 0;
  const tr = join(ROOT, "translations");
  const pos = walk("translations", /\.po$/);
  for (const f of pos.sort()) {
    const locale = relative(tr, join(ROOT, f)).split(/[\\/]/)[0]!;
    for (const e of poEntries(readFileSync(join(ROOT, f), "utf8"))) {
      if (!e.msgstr) continue;
      nEntries++;
      for (const p of problems(e.msgstr, cs, { english: false, french: locale === "fr" })) add(f, e.line, p);
      for (const c of cs) {
        const named = (s: string) => [...s.matchAll(new RegExp(reEsc(c.name), "g"))].some((m) => !inIdentifier(s, m.index!, c.name.length));
        if (named(e.msgid) && !named(e.msgstr)) add(f, e.line, `the msgid names ${c.name} and the translation does not; keep the name, in Latin script`);
      }
    }
  }

  if (process.argv.includes("--json")) {
    console.log(JSON.stringify(found, null, 1));
    return;
  }
  for (const x of findings) console.log(`✗ ${x}`);
  console.log(`${findings.length ? "✗" : "✓"} ${cs.map((c) => c.name).join(", ")}: ${nSources} source file(s), ${nEntries} translated entr(ies) in ${pos.length} catalogue(s); ${findings.length} finding(s)`);
  if (check && findings.length) process.exit(1);
}

if (import.meta.main) main();
