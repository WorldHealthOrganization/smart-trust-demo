---
$schema: folio-memory/v1
id: dir-general-workshop
label: stable
summary: "Owner directive: the workshop is a general two-day workshop that lives in the journeys viewer (policy-maker track and technical track side by side), naming no person, date or venue"
createdAt: 2026-11-17
---
Given by the owner on 2026-11-17: the workshop pages (the hub `workshop.html` and the module pages such as `workshop-t3.html`) live under the journeys viewer's workshops section, next to the `dpi-h-policy-track` workshop, not as stand-alone IG pages. They describe a general two-day workshop, not one event: no people's names, no specific dates and no venue ("Day 1", "Day 2", "facilitator"). The same holds for the policy-maker track's pages and the Country Canvas sheets.

How it is kept: `workshops/technical-track.json` (leads are roles), `schedule.json` and `policy-agenda.json` (a suggested timetable; a country presentation is a slot for the host or an invited country) are the sources; `tools/workshop/module-pages.ts` writes `workshops/technical-track.workshop.json`, which the viewer draws, and the stubs at the old `workshop*.html` addresses, which link to the viewer (the IG's content gate refuses a meta refresh). The IG menu reaches the workshops through the viewer.
