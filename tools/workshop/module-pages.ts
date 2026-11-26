#!/usr/bin/env bun
/**
 * The workshop in the journeys viewer, and the IG pages that point there.
 *
 * A general two-day workshop in two tracks: the policy-maker track (M1–M7,
 * `workshops/dpi-h-policy-track.workshop.json`, authored by hand) and the
 * technical track (T1–T7). Both live in the journeys viewer's workshops
 * section (owner, 2026-11-17), not as stand-alone IG pages. This script:
 *
 * | writes | from |
 * |---|---|
 * | `workshops/technical-track.workshop.json` (the harness's `workshop/0.1.0` kind, which the viewer draws at `…/journeys/smart-trust-demo/workshops/technical-track/`) | `technical-track.json` (modules, sessions, outcomes, steps, teams), `schedule.json` and `policy-agenda.json` (the two-day calendar, both tracks, as the workshop's `schedule`), `materials.json` (resources), and the policy workshop (the step → journey map, the M modules' titles) |
 * | `input/pagecontent/workshop.md`, `workshop-m<n>.md`, `workshop-t<n>.md` | short stubs that keep the old IG URLs working and link to the workshop's new home in the viewer (the IG's content gate refuses a meta refresh, so a stub links rather than redirects) |
 *
 * Nothing names a person, a date or a venue: leads are roles, times are a
 * suggested timetable a host adapts. `--check` fails if any output is stale.
 */
import { readFileSync, writeFileSync } from "node:fs";

const read = (p: string) => JSON.parse(readFileSync(p, "utf8"));
const ws = read("workshops/dpi-h-policy-track.workshop.json");
const tech = read("workshops/technical-track.json");
const agenda: { days: Record<string, AgendaItem[]> } = read("workshops/policy-agenda.json");
const schedule: { days: { day: number; shared: { time: string; end: string; kind: string; title: string; note?: string }[]; policy: { time: string; end: string; module: string }[] }[] } = read("workshops/schedule.json");
const materials: { title: string; kind: string; href: string; what: string; also?: { label: string; href: string }[] }[] = read("workshops/materials.json").materials;

type Mod = { id: string; title: string; day?: number; carries?: string };
type TSession = { time: string; end: string; minutes: number; type: string; title: string; leads: string[]; supports: string[]; what: string };
type TStep = { step: string; technical: string; question: string };
type TTeam = { name: string; device: string; what: string; steps: string[] };
type AgendaItem = { id?: string; kind: "registration" | "plenary" | "module" | "showcase" | "break"; title: string; what?: string; module?: string };
type TMod = { id: string; pairedWith: string; day: number; title: string; carries?: string; sessions?: TSession[]; outcomes?: string[]; steps?: TStep[]; teams?: TTeam[] };
const mods: Mod[] = ws.modules;
const tmods: TMod[] = tech.modules;

/** The published site, for the IG pages a viewer resource links to (as the policy workshop's own resources do). */
const SITE = "https://worldhealthorganization.github.io/smart-trust-demo/";
/** The viewer's workshops section, from an IG page at the site root. */
const WORKSHOPS = "en/smart-trust-demo/journeys/smart-trust-demo/workshops/";
const TECH_ID = "technical-track";
const seg = (id: string) => id.toLowerCase();

/** Each step id the workshops teach from, and its journey (scenario), from the policy workshop. */
const scenarioOf = new Map<string, string>((ws.steps as { scenario: string; step: string }[]).map((s) => [s.step, s.scenario]));

const errors: string[] = [];
for (const t of tmods) {
  if (!mods.some((m) => m.id === t.pairedWith)) errors.push(`technical-track.json: ${t.id} pairs with no module ${t.pairedWith}`);
  for (const s of [...(t.steps ?? []).map((x) => x.step), ...(t.teams ?? []).flatMap((x) => x.steps)]) if (!scenarioOf.has(s)) errors.push(`technical-track.json: ${t.id} names step ${s}, which the policy workshop does not teach`);
}
if (errors.length) (console.error(errors.join("\n")), process.exit(1));

const policyHref = (fromWorkshop: string, m: string) => `${fromWorkshop}../${ws.id}/${seg(m)}/`;

// ── the two days, both tracks, as the technical workshop's schedule ──
// Data, not markup: the journeys viewer draws it as a calendar (time down the
// side, the policy and technical tracks side by side, joint sessions, breaks
// and logistics across both) on both workshops' pages and overviews.
type Slot = { start: string; end: string; kind: "session" | "joint" | "break" | "logistics"; track?: string; module?: string; title: string; type?: string; note?: string; sessions?: string[] };
function scheduleData() {
  return {
    intro: "Only the joint sessions have fixed times. Every other session runs for its stated length, so a lead trims content rather than overrun.",
    tracks: [
      { id: "policy", label: "Policy track", workshop: ws.id },
      { id: "technical", label: "Technical track" },
    ],
    days: schedule.days.map((d) => {
      const slots: Slot[] = [];
      for (const x of d.shared) slots.push({ start: x.time, end: x.end, kind: x.kind === "break" ? "break" : "logistics", title: x.title, ...(x.note ? { note: x.note } : {}) });
      const dayItems = agenda.days[String(d.day)] ?? [];
      for (const j of (tech.joint ?? []).filter((x: any) => x.day === d.day)) {
        const kind = j.time < "12:00" ? "plenary" : "showcase";
        const parts = dayItems.filter((x) => x.kind === kind).map((x) => `${x.id} ${x.title}`);
        slots.push({ start: j.time, end: j.end, kind: "joint", title: j.title, note: j.leads, ...(parts.length ? { sessions: parts } : {}) });
      }
      for (const p of d.policy) slots.push({ start: p.time, end: p.end, kind: "session", track: "policy", module: p.module, title: mods.find((x) => x.id === p.module)!.title });
      for (const t of tmods.filter((x) => x.day === d.day))
        for (const x of t.sessions ?? []) slots.push({ start: x.time, end: x.end, kind: "session", track: "technical", module: t.id, title: x.title, type: x.type });
      slots.sort((a, b) => a.start.localeCompare(b.start) || (a.track ?? "").localeCompare(b.track ?? ""));
      const sum = tech.days?.[d.day]?.summary;
      return { day: d.day, ...(sum ? { summary: sum } : {}), slots };
    }),
  };
}

const description = [
  `The technical track of a general two-day workshop on verifiable immunization records across borders, taught from the journeys J1 to J4.1 of one cross-border family. It runs beside the [policy-maker track](../${ws.id}/) (M1 to M7): each technical module serves the policy module it is paired with, and both tracks meet in joint sessions each morning and at the close of each day.`,
  `${tech.promise}`,
  tech.prepare?.length ? `## Before you run it\n\n${tech.prepare.map((x: string) => `- ${x}`).join("\n")}` : "",
]
  .filter(Boolean)
  .join("\n\n");

/** A technical module's page text: its pair, its sessions, where it meets the journey, and (T7) the teams. */
function moduleDescription(t: TMod): string {
  const m = mods.find((x) => x.id === t.pairedWith)!;
  const parts: string[] = [`Day ${t.day}. Serves the policy module [${m.id} ${m.title}](${policyHref("../", m.id)}).`];
  if (t.sessions?.length)
    parts.push(
      `### Sessions\n\n${t.sessions
        .map((x) => `- **${x.time}–${x.end} · ${x.type} · ${x.title}** (${x.minutes} min). ${x.what} *Leads:* ${x.leads.join(", ")}${x.supports.length ? `; *supports:* ${x.supports.join(", ")}` : ""}.`)
        .join("\n")}`,
    );
  if (t.steps?.length) parts.push(`### Where it meets the journey\n\n${t.steps.map((x) => `- **${x.step}**: ${x.technical}`).join("\n")}`);
  if (t.teams?.length) parts.push(`### The four apps\n\n${t.teams.map((x) => `- **${x.name}** (${x.device}): ${x.what} Steps ${x.steps.join(", ")}.`).join("\n")}`);
  return parts.join("\n\n");
}

const stepsOut: { scenario: string; step: string; questions: { module: string; text: string }[] }[] = [];
for (const s of ws.steps as { scenario: string; step: string }[]) {
  const qs = tmods.flatMap((t) => (t.steps ?? []).filter((x) => x.step === s.step && x.question).map((x) => ({ module: t.id, text: x.question })));
  if (qs.length) stepsOut.push({ scenario: s.scenario, step: s.step, questions: qs });
}

const kindOf = (k: string) => (/slides/i.test(k) ? "slides" : /sheet|canvas/i.test(k) ? "template" : "handout");
const abs = (h: string) => (/^[a-z][a-z0-9+.-]*:/i.test(h) ? h : `${SITE}${h}`);
const workshop = {
  $schema: "workshop/0.1.0",
  id: TECH_ID,
  title: "Verifiable immunization records across borders: the technical track",
  description,
  audience: "Developers, implementers and digital health architects, walking the journey in small groups, with one of the four apps each",
  promise: tech.promise,
  scenarios: ws.scenarios,
  modules: tmods.map((t) => {
    const minutes = (t.sessions ?? []).reduce((n, x) => n + x.minutes, 0);
    return {
      id: t.id,
      title: t.title,
      day: t.day,
      ...(t.carries ? { carries: t.carries } : {}),
      description: moduleDescription(t),
      ...(t.outcomes?.length ? { objectives: t.outcomes } : {}),
      ...(minutes ? { durationMinutes: minutes } : {}),
    };
  }),
  steps: stepsOut,
  matrix: {
    intro: "Where each technical module meets each journey step, and what the system does there.",
    cells: tmods.flatMap((t) => (t.steps ?? []).map((x) => ({ module: t.id, step: x.step, technical: x.technical }))),
  },
  schedule: scheduleData(),
  resources: [
    { id: "policy-track", title: "The policy-maker track (M1 to M7)", kind: "link", description: "The other track of the same two days; each technical module is paired with one of its modules.", href: `../${ws.id}/` },
    ...materials.map((x, i) => ({
      id: `material-${i + 1}`,
      title: x.title,
      kind: kindOf(x.kind),
      description: `${x.what}${x.also?.length ? ` Also: ${x.also.map((a) => `${a.label} (${abs(a.href)})`).join("; ")}.` : ""}`,
      href: abs(x.href),
    })),
    { id: "module-journey-map", title: "Module × journey map", kind: "reading", description: "Where each module of both tracks meets each journey step, technical and policy.", href: `${SITE}module-journey-map.html` },
  ],
};

const files: Record<string, string> = {};
files[`workshops/${TECH_ID}.workshop.json`] = JSON.stringify(workshop, null, 2) + "\n";

// ── the old IG pages: stubs that point to the viewer ────────────────────
const STUB = "<!-- Generated by tools/workshop/module-pages.ts. The workshop lives in the journeys viewer; this page keeps the old address working. Do not edit by hand. -->\n\n";
const techUrl = `${WORKSHOPS}${TECH_ID}/`;
const polUrl = `${WORKSHOPS}${ws.id}/`;
files["input/pagecontent/workshop.md"] =
  STUB +
  `The workshop has moved to the [journeys viewer](${WORKSHOPS.replace(/workshops\/$/, "")}), where each track sits beside the journeys it teaches from. It is a general two-day workshop in two tracks:\n\n` +
  `- **[The two days](${techUrl}overview/#the-days)**: the calendar of both tracks side by side, each session linked to its module\n` +
  `- **[Technical track (T1 to T7)](${techUrl})**\n` +
  `- **[Policy-maker track (M1 to M7)](${polUrl})**, with the Country Canvas each table fills in\n\n` +
  `Also on this site: the [module × journey map](module-journey-map.html), the [Country Canvas](country-canvas.html) and the [glossary](glossary.html).\n`;
for (const m of mods)
  files[`input/pagecontent/workshop-${seg(m.id)}.md`] = STUB + `Module ${m.id}, *${m.title}*, of the policy-maker track has moved to the journeys viewer: [${m.id} in the journeys viewer](${polUrl}${seg(m.id)}/).\n\nThe whole workshop: [policy-maker track](${polUrl}) · [technical track](${techUrl}).\n`;
for (const t of tmods)
  files[`input/pagecontent/workshop-${seg(t.id)}.md`] = STUB + `Module ${t.id}, *${t.title}*, of the technical track has moved to the journeys viewer: [${t.id} in the journeys viewer](${techUrl}${seg(t.id)}/).\n\nThe whole workshop: [technical track](${techUrl}) · [policy-maker track](${polUrl}).\n`;

let stale = 0;
for (const [p, c] of Object.entries(files)) {
  if (process.argv.includes("--check")) {
    let cur = "";
    try {
      cur = readFileSync(p, "utf8");
    } catch {}
    if (cur !== c) (console.error(`${p} is stale`), stale++);
  } else writeFileSync(p, c);
}
if (stale) (console.error("run bun tools/workshop/module-pages.ts"), process.exit(1));
console.log(process.argv.includes("--check") ? `${Object.keys(files).length} workshop files are current` : `wrote ${Object.keys(files).length} workshop files`);
