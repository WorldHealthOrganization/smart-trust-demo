This page lists every place where the site's journeys differ from the policy-maker track's shared story deck, *The Immunization Journey: End-to-End Use Case Narrative* (M1, 30 November and 1 December 2026, 30 slides). The deck is the reference for names, countries and story. **Nothing on the site has been changed to match it yet.** Each row needs a decision first: change the site, change the deck, or keep both as they are.

The names and countries already match. Both tell the story of Khamla, Somsak and Bounmy, Vilay, Nurse Chanthason and Dr Anan, in Onesa and Taifafeki, with Hep B and BCG birth doses, a GDHCN trust list and a 12-month return to Taifafeki. Somsak's birth date on the site, 2025-10-28, is a Tuesday, as the deck says.

Two sources are still to be reviewed: the editable country canvas (A3) and the DPI-H glossary for the policy-maker track. Rows for them will be added here when they are.

### A. The site differs from the deck

| # | Topic | Deck (reference) | Site today | Proposed resolution |
|---|---|---|---|---|
| A1 | Journey titles | J1 *Recorded and vaccinated*, J2 *Found and registered at home*, J3 *A foreign record used for the next vaccine*, J4 *Continuity across border* | J1 *Born abroad*, J2 *Found at home*, J3 *Made official*, J4 *One family, one phone, a history abroad* (“Crossing back”), split into J4.0 and J4.1 | Retitle the site's journeys to the deck's titles once B1 to B3 settle the deck's own wording. Keep J4.0 and J4.1 as two parts of the deck's J4 |
| A2 | Where Khamla lives | A citizen of Onesa, **working in** neighbouring Taifafeki | An Onesan national **living in Onesa** who gave birth in Taifafeki, “away from home” | Decide which is true. If she works in Taifafeki, the J2 “back in Onesa” return needs a reason |
| A3 | Who gives the birth doses | Slide 4: Dr Anan. Slide 8: “the midwife” | Dr Anan | See B4. The site matches slide 4 |
| A4 | Somsak's identifier at birth | “Has an identifier from birth”; found “through the mother's record” | “He has no Taifafeki identity number”; no identity document needed for the DVC | Decide. The site's version is what the library tests (DVCMinPreQual, STT-PAY-005) |
| A5 | What Khamla leaves hospital with | “A paper card that carries a QR code”, plus the same record in Taifafeki's citizen app | **Two** paper DVCs, one per dose; no Taifafeki citizen app | Keep two cards (one HCERT per dose is how the DVC works) and change the deck to “cards”, or add a note. Decide whether an Onesan mother has a Taifafeki citizen app |
| A6 | J2 timing | Somsak is **7 weeks** old | “3 weeks later” | Use 7 weeks on the site |
| A7 | J3 timing | Somsak is **10 weeks** old | “4 weeks later” (about 7 weeks) | Use 10 weeks on the site. Pentavalent 1, bOPV 1 and PCV 1 were due at 6 weeks, so J3 becomes a catch-up |
| A8 | J2 location | “Khamla village” | Village 04 | Pick one place name |
| A9 | How Vilay finds Somsak's family | Searches the client registry by **Khamla's national ID**, registers Somsak as her child | Adds Somsak to the Sengmany household with a temporary id; **Bounmy** confirms as head of household | Add the national-ID search to J2b; decide whether Bounmy (deck: not in J2) or Khamla confirms |
| A10 | Late birth registration | J2 notifies the civil registry (late birth registration, born abroad) | Not in the story | Add a CRVS notification to J2b (a FHIR message or task), or say the site leaves it out |
| A11 | Reminder | The CHW app schedules a reminder | A referral to the district health center; the reminder comes in J3 | Add a J2 reminder, or move the deck's reminder to the referral |
| A12 | Where “reported, not verified” happens | J3, at the health centre | J2, on the CHW phone; J3 replaces the reported doses with verified ones | Decide. The site's split is the “key trust boundary” its workshop teaches (discussion q2, M4) |
| A13 | What Khamla shows in J3 | The paper card **and the record on her phone** | The two paper cards only; the family's one phone is Bounmy's (J4) | See B5 |
| A14 | The Hep B product with no mapping | Not in the story: the schedule runs | Nurse Chanthason makes the clinical call; it is added to the national map (J3b) | Keep on the site (it drives M3 and M6), or drop it to match the deck |
| A15 | J4 mechanism | The family shares Somsak's **IPS** with consent; Dr Anan reads it | The same, through a passcode-protected **Verifiable Health Link** (4 digits, 14 days), every view logged in Onesa | Compatible. Mention the link and the audit in the deck, or keep it out of the policy story |
| A16 | Where J4 takes place | A paediatrician in Taifafeki | A primary care clinic in Kesaro, Taifafeki | Compatible. Pick “paediatrician” or “primary care” |
| A17 | Onesa's FHIR | “No national FHIR implementation guide yet” | A national FHIR server and gateway issue the family's links (J4) | Decide. If Onesa has no IG yet, J4's portal is part of the first move, not the baseline |

### B. The deck is inconsistent with itself

| # | Slide(s) | Inconsistency | Proposed fix to the deck |
|---|---|---|---|
| B1 | 7, 8 | J1 is “Recorded and vaccinated” on the divider, “Vaccinated and recorded” on the story | One title |
| B2 | 17, 18 | J3 is “A foreign record used for the next vaccine” on the divider, “A foreign record trusted at the clinic” on the story | One title |
| B3 | 22, 23 | “Continuity across border” and “Continuity across a border” | “across a border” |
| B4 | 4, 8 | Dr Anan gives the birth doses (4); the midwife does (8) | Dr Anan, as on the site and in J4 (the same doctor sees him a year later) |
| B5 | 4, 18 | Khamla holds records “on paper and on her phone”; Bounmy holds the phone with the digital record | One phone, Bounmy's, as on the site (J4.0's equity point depends on it) |
| B6 | 4, 8 | Somsak is “he” (3, 13) but “her birth doses” and “gives her the birth doses” (4, 8) | “his” |
| B7 | 24, 25 | J4's *What must be true* and *What this journey draws on* describe a **digital ICVP issued and checked by a port health verifier** (IHR, designated issuing authority). The J4 story is an IPS shared with a doctor | Rewrite both slides for the IPS story, or bring the ICVP back into the J4 story |
| B8 | 24 | “A verifier can check it without access to Onesa's systems” | True for a signed certificate, not for the IPS, which is fetched from Onesa. Rewrite with B7 |
| B9 | 29 | M4 “who verifies (Journeys 3 and **5**)” | There is no Journey 5: “Journeys 3 and 4” |
| B10 | 29 | M3 “data elements in Journeys 1 and 4” | J4 has no data-capture step. Probably “Journeys 1 and 3” |
| B11 | 27 | HMIS (coverage indicators) is marked for J3 only | The site counts a child born abroad into the coverage denominator at J2 (M2). Mark J2 too, or say why not |
| B12 | 6 | “At a glance” is a placeholder: “To attach the scenario and illustration from git webpage” | Use the journeys viewer's overview, `en/smart-trust-demo/journeys/` |
| B13 | 8, 26 | “Taifafekis health authority” (no apostrophe); “Both countries is connected” | “Taifafeki's”; “Both countries are” |
| B14 | Throughout | *immunization* and *immunisation* both used | One spelling. WHO uses *immunization* |

### C. Not a discrepancy, worth a check

| # | Note |
|---|---|
| C1 | Slide 26 names real countries (Saudi Arabia, Malaysia, Indonesia, Oman) as examples of a narrow start. That is fine for a policy deck. The site's own pilgrimage journey keeps to the two fictional countries |
| C2 | The deck's four journeys map to the site's steps as J1 → J1; J2 → J2a, J2b; J3 → J3a, J3b; J4 → J4.0a, J4.0b, J4.1. The [module × journey map](module-journey-map.html) uses the site's steps |
