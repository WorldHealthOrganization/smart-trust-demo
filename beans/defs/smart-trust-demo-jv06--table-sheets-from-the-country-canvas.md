# smart-trust-demo-jv06
title: 'JV-06: journeys viewer, the Table sheets tab shows the Country Canvas'
status: in-progress
type: feature
priority: high
tags:
    - upstream
    - journeys-viewer-parity
created_at: 2026-11-16T10:00:00Z
updated_at: 2026-11-19T12:00:00Z
---

The owner gave the workshop's Country Canvas (A3, a cover and Sheets 1 to 6) on 2026-11-16 and asked that it replace the current canvas sheets.

**Today (this repository):** the editable Word file, a print PDF and page previews are published on the IG page `country-canvas.html`. The workshop's `a3-canvas` resource points there. The viewer's sheets now carry the canvas's titles and write-in fields, cover fields, patterns, legal bases and cost drivers, but the viewer draws its own sheets. It cannot draw the canvas's tables: the four touchpoints with Works / Partly / Breaks, the 30-row architecture map with E / P / A, the 15 data elements, the four decisions with their formal basis, cards A to C and the Sheet 6 form. Each sheet also keeps a fixed A3 shape, so short sheets show a large blank area on screen.

**Fix (upstream, cat-harness-tools `schemas/process/workshop.ts`, `scripts/journeys/render.ts`, `present-views.ts`):** let a workshop name a canvas file (`sheetsSource: { docx, pdf, previews[] }`) that the Table sheets tab shows, with Download and Print buttons, in place of the generated sheets. Or let a sheet carry typed blocks (rating rows, E/P/A grids, element tables, cards). On screen, size a sheet to its content and keep the A3 shape for print only.

## Done when

- the Table sheets tab shows and prints the Country Canvas;
- the on-screen sheets have no empty half-pages.

## 2026-11-19: the canvas as its printed pages

The owner asked that the interactive sheets look exactly like the PDF, each part under its module, with no additional questions ([[dir-canvas-as-printed]]). The fix is the second option above, typed blocks: the viewer's canvas (cat-harness-tools `schemas/process/workshop.ts`, `scripts/journeys/canvas-form.ts`) now draws a sheet's band, header write-ins and footer, numbered sections with minutes, DISCUSS and RULES and their module, tables with printed columns (the 25-row architecture map with E / P / A, the 15 data elements with Same / Differently / Not at all, the four decisions with their formal basis), cards (the four touchpoints with Works / Partly / Breaks, the propositions A to C, the Sheet 6 form) and sentences with blanks; each sheet is sized to its content on screen. The canvas data in `workshops/dpi-h-policy-track.workshop.json` follows the PDF page by page.

The viewer change is litlfred/cat-harness-tools#2471, merged as e5b7b181 and pinned here in #175.

