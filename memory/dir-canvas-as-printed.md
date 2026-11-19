---
$schema: folio-memory/v1
id: dir-canvas-as-printed
label: stable
summary: "Owner directive: the interactive Country Canvas looks exactly like the source PDF, each part under its module (M1 … M7), with no question the PDF does not ask; the schedule sits near the top for presenters and participants"
createdAt: 2026-11-19
---
Given by the owner on 2026-11-19: "the interactive canvas sheets on smart-trust-demo i want them to look exactly like source PDF and position with M1 M2 as appropriate. there should be no additional questions. how do presenters and participants see schedule? should be towards top".

The source is `input/images/country-canvas-a3.pdf` (and its `.docx`): a cover and Sheets 1 to 6. The canvas data in `workshops/dpi-h-policy-track.workshop.json` follows it page by page, word for word, in the PDF's order: its tables, rows, columns, rating options, cards and write-ins. Nothing the PDF does not print is asked: the canvas has no annex of journey questions (`annex: false`), and the lab's steps are the cover, one sheet per module and the summary. Each section names the module it is worked in (`module`), as `workshops/country-canvas.json` maps the parts.

The schedule (one source: `workshops/schedule.json`, `policy-agenda.json`, `technical-track.json`, drawn as the technical workshop's `schedule`) shows at a glance near the top of the workshop's page, first on the presenter's overview and on the participants' discussion, and on each module page as the module's own slot.

When the PDF changes, the canvas data changes with it; a question that is not on the PDF is asked elsewhere (the walkthrough), never on the canvas.
