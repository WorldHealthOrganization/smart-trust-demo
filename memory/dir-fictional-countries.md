---
$schema: folio-memory/v1
id: dir-fictional-countries
label: stable
summary: "Owner directive: the journeys use two fictional countries, Onesa (XXU, home; XXK until 2026-11-16) and Taifafeki (XXR, visited), defined once in scenarios/countries/ for reuse"
createdAt: 2026-11-11
---
Given by the owner on 2026-11-11 (issue #113): instead of Thailand, Malaysia, KSA and Lao PDR, the journeys use the fictional countries Onesa and Taifafeki, each with an ISO 3166-1 user-assigned code, defined once in this repository so other journeys, such as the pilgrimage, reuse them.

Mapping (choice "B", by role): Onesa is the home country (Lao PDR in these journeys, Malaysia in the pilgrimage) and Taifafeki the country visited (Thailand here, KSA in the pilgrimage). Codes: Taifafeki is XXR, the GDHCN DEV test participant whose DSC already signed the J1 DVCs; Onesa is XXK ("another code for the journey home parts... like XXK"), also an onboarded DEV test participant in WorldHealthOrganization/tng-participants-dev. It replaces XXH, which Country B used before. SMART Trust's Participants-DEV value set names the two codes "Onesa" and "Taifafeki" (litlfred/smart-trust).

Places are fictional too: Kesaro (border province of Taifafeki, was Chiang Rai), Lumara (capital of Taifafeki, was Bangkok), Lomaru (capital of Onesa, was Vientiane). The people keep their names. "Malaysia's Hajj Health Card" stays as a real-world policy precedent. Older directives (dir-journeys-demo, dir-vaxlink-story) name the real countries; this one supersedes them on countries and codes.

The WHO guide's own QR Code Generation §12 example, kept as the library's test vector, is a signed payload and keeps its own nationality field.

Owner, 2026-11-16: Onesa moves from XXK to XXU ("change use of XXK code to XXU including changing name in DEV codesystem"). XXU is also an onboarded DEV test participant (certificate locality Geneva); SMART Trust's Participants-DEV now names XXU "Onesa" and XXK goes back to "Rengo" (WorldHealthOrganization/smart-trust#161). Every use of XXK in this repository became XXU: the country definition, the Onesan identifiers, schedule codes and lot numbers, the national portal, the processes, screens, examples and translations. The history in changes.md keeps XXK where it describes what was done then.
