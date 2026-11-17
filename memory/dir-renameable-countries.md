---
$schema: folio-memory/v1
id: dir-renameable-countries
label: stable
summary: "Owner directive: the fictional countries' names are renameable in the journeys viewer, so every text names them only by the bare name (Onesa, Taifafeki), in Latin script, in a construction that works for any name: no demonyms, adjectives, possessives, inflected or transliterated forms, in English or in any translation"
createdAt: 2026-11-17
---
Given by the owner on 2026-11-17: the journeys viewer lets a workshop room rename the fictional countries (litlfred/cat-harness-tools#2409), but derived forms such as "Onesan" were left behind. "Can we reword the narrative so substitutions are clear and we don't need to have derivative terms."

How the viewer substitutes: `present.js` `renameCountries()` replaces each name in the page's `jp-countries` list (the English names, the same list on every locale's page) wherever it stands as a whole word, `(^|[^\p{L}\p{N}])Name(?=$|[^\p{L}\p{N}])`. Exact string, case-sensitive, Latin script, in every locale. So a name substitutes only when it is written exactly `Onesa` or `Taifafeki` with no letter or digit touching either side.

The rules (checked by `bun tools/translation/country-names.ts --check`):

- **English.** Only the bare name. No demonym or adjective ("Onesan", "Taifafekian"), no possessive ("Onesa's"), no indefinite article before the name ("a Taifafeki doctor" breaks for a name starting with a vowel). Use "the ministry of Onesa", "a doctor in Taifafeki", "people in Onesa", "a baby from Onesa", "the national schedule of Onesa"; the name as a noun after "the" is fine ("the Onesa national schedule"). Identifiers (`TrustDemoOnesaPatient`, `onesa-national-portal`) and codes (XXU, XXR) are not prose and stay.
- **Every translation.** The name stays in Latin script exactly as in English, never transliterated (not Онеса, أونيسا, 奥内萨) and never inflected or given an affix. Where the language inflects or attaches, put a common noun beside the name and inflect that noun instead:
  - ru: «в стране Onesa», «из страны Onesa», «министерство здравоохранения страны Onesa»; no «онесский».
  - ar: «في Onesa», «من Onesa», «دولة Onesa»; no nisba adjective (الأونيسي), and no prefix attached to the name (بـ، لـ، وـ، الـ): a space always separates the name from Arabic letters.
  - fr: no elision before the name (not «d’Onesa», «l’Onesa»): «du pays Onesa», «dans le pays Onesa», «à Onesa», «Onesa» as a bare subject.
  - es: «de Onesa», «en Onesa»; no «onesano».
  - zh: the Latin name with a space (or punctuation) on each side, since Han characters are letters to the matcher: «在 Onesa 出生», «Onesa 国家免疫规划».
- A translation of a string that names a country names it too, in the same form.

The place names (Lomaru, Kesaro, Lumara) are not renameable and keep their usual forms. The memory dir-fictional-countries still holds for the countries themselves.
