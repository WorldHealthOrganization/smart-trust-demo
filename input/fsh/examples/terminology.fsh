Alias: $PreQualProductIds = http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualProductIds

// The vaccine codings of the journeys. The issuer's product coding (as signed
// in a DVC, DVCMinPreQual vp) is the WHO PreQual product id, from the code
// system of the SMART Product Dataset for Prequalified Vaccines
// (smart.who.int/pcmt-vaxprequal, ValueSet PreQualProductIds); which PreQual
// product each fictional dose was given is illustrative. Only the national
// schedule's antigen-and-dose codes, TrustDemoOnesaEpiSchedule, are a
// stand-in, as in the VaxLink walkthrough: real deployments use the
// country's own schedule codes.

CodeSystem: TrustDemoOnesaEpiSchedule
Id: TrustDemoOnesaEpiSchedule
Title: "National schedule antigen-dose codes (illustrative, Onesa)"
Description: "Illustrative antigen-and-dose codes of a national immunization schedule, as the VaxLink walkthrough names them for Onesa. Not the official EPI coding of Onesa."
* ^experimental = true
* ^caseSensitive = true
* #XXU-EPI-HEPB-BD "Hepatitis B birth dose"
* #XXU-EPI-BCG "BCG"
* #XXU-EPI-PENTA-1 "Pentavalent (DTP-HepB-Hib), dose 1"
* #XXU-EPI-OPV-1 "bOPV, dose 1"
* #XXU-EPI-PCV-1 "PCV, dose 1"
* #XXU-EPI-MR-1 "Measles-rubella, dose 1"

ValueSet: TrustDemoVaccineProducts
Id: TrustDemoVaccineProducts
Title: "Vaccine products of the journeys"
Description: "The WHO PreQual product ids (PreQualProductIds, smart.who.int/pcmt-vaxprequal) of the doses given in the journeys: the issuer's coding of each dose, as signed in its DVC, and the source of the national ConceptMap."
* ^experimental = true
* $PreQualProductIds#a3K3X000006MiiXUAS "Hepatitis B Vaccine (rDNA) (Paediatric) (HepB), Serum Institute of India, Vial, 10 doses [FVP-P-132]"
* $PreQualProductIds#a3K3X000006MiisUAC "BCG Vaccine (BCG), Serum Institute of India, Vial, 20 doses [FVP-P-117]"
* $PreQualProductIds#a3K3X000006MijGUAS "Eupenta (DTwP-HepB-Hib), LG Chem Ltd (LGC), Vial, 10 doses [FVP-P-305]"
* $PreQualProductIds#a3K3X000006MijBUAS "Poliomyelitis Vaccine (Oral) Bivalent types 1 and 3 (bOPV), Serum Institute of India, Vial, 10 doses [FVP-P-281]"
* $PreQualProductIds#a3K3X000006MijJUAS "PNEUMOSIL® (PCV), Serum Institute of India, Vial, 5 doses [FVP-P-385]"
* $PreQualProductIds#a3K3X000006MiimUAC "Measles and Rubella Vaccine Live Attenuated (MR), Serum Institute of India, Vial, 10 doses [FVP-P-140]"

ValueSet: TrustDemoOnesaEpiScheduleCodes
Id: TrustDemoOnesaEpiScheduleCodes
Title: "National schedule codes of the journeys"
Description: "Every code of TrustDemoOnesaEpiSchedule: the target of the national ConceptMap."
* ^experimental = true
* include codes from system TrustDemoOnesaEpiSchedule

Instance: TrustDemoProductToOnesaEpi
InstanceOf: ConceptMap
Title: "J3 map: vaccine product to national schedule dose"
Description: "The national map the clinic EHR uses in J3 to add the schedule code beside the issuer's product code, which it never replaces. The Hep B product had no entry until Nurse Chanthason confirmed its equivalence on 2026-01-06 (see TrustDemoJ3Adjudication); her decision is recorded here so the next clinic need not make it again."
Usage: #definition
* url = "http://smart.who.int/trust-demo/ConceptMap/TrustDemoProductToOnesaEpi"
* name = "TrustDemoProductToOnesaEpi"
* status = #draft
* experimental = true
* sourceCanonical = Canonical(TrustDemoVaccineProducts)
* targetCanonical = Canonical(TrustDemoOnesaEpiScheduleCodes)
* group[+].source = "http://smart.who.int/pcmt-vaxprequal/CodeSystem/PreQualProductIds"
* group[=].target = Canonical(TrustDemoOnesaEpiSchedule)
* group[=].element[+].code = #a3K3X000006MiiXUAS
* group[=].element[=].display = "Hepatitis B Vaccine (rDNA) (Paediatric) (HepB), Serum Institute of India, Vial, 10 doses [FVP-P-132]"
* group[=].element[=].target[+].code = #XXU-EPI-HEPB-BD
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[=].comment = "Added from the nurse's adjudication at Lomaru District Health Center, 2026-01-06: a monovalent paediatric Hep B dose given within 24 hours of birth counts as the schedule's birth dose."
* group[=].element[+].code = #a3K3X000006MiisUAC
* group[=].element[=].display = "BCG Vaccine (BCG), Serum Institute of India, Vial, 20 doses [FVP-P-117]"
* group[=].element[=].target[+].code = #XXU-EPI-BCG
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #a3K3X000006MijGUAS
* group[=].element[=].display = "Eupenta (DTwP-HepB-Hib), LG Chem Ltd (LGC), Vial, 10 doses [FVP-P-305]"
* group[=].element[=].target[+].code = #XXU-EPI-PENTA-1
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #a3K3X000006MijBUAS
* group[=].element[=].display = "Poliomyelitis Vaccine (Oral) Bivalent types 1 and 3 (bOPV), Serum Institute of India, Vial, 10 doses [FVP-P-281]"
* group[=].element[=].target[+].code = #XXU-EPI-OPV-1
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #a3K3X000006MijJUAS
* group[=].element[=].display = "PNEUMOSIL® (PCV), Serum Institute of India, Vial, 5 doses [FVP-P-385]"
* group[=].element[=].target[+].code = #XXU-EPI-PCV-1
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #a3K3X000006MiimUAC
* group[=].element[=].display = "Measles and Rubella Vaccine Live Attenuated (MR), Serum Institute of India, Vial, 10 doses [FVP-P-140]"
* group[=].element[=].target[+].code = #XXU-EPI-MR-1
* group[=].element[=].target[=].equivalence = #equivalent

Instance: TrustDemoOnesaInfantSchedule
InstanceOf: PlanDefinition
Title: "J3 national infant schedule (illustrative excerpt)"
Description: "The part of the national schedule the J3 evaluation needs: birth doses, the 6-week doses and measles-rubella at 9 months. Illustrative; the schedule rules are not executable here."
Usage: #definition
* url = "http://smart.who.int/trust-demo/PlanDefinition/TrustDemoOnesaInfantSchedule"
* name = "TrustDemoOnesaInfantSchedule"
* title = "National infant immunization schedule (illustrative excerpt)"
* status = #draft
* experimental = true
* type = http://terminology.hl7.org/CodeSystem/plan-definition-type#clinical-protocol
* action[+].title = "Birth doses"
* action[=].code = TrustDemoOnesaEpiSchedule#XXU-EPI-HEPB-BD "Hepatitis B birth dose"
* action[=].timingAge = 0 'd' "days"
* action[+].title = "BCG"
* action[=].code = TrustDemoOnesaEpiSchedule#XXU-EPI-BCG "BCG"
* action[=].timingAge = 0 'd' "days"
* action[+].title = "6 weeks: pentavalent 1"
* action[=].code = TrustDemoOnesaEpiSchedule#XXU-EPI-PENTA-1 "Pentavalent (DTP-HepB-Hib), dose 1"
* action[=].timingAge = 6 'wk' "weeks"
* action[+].title = "6 weeks: bOPV 1"
* action[=].code = TrustDemoOnesaEpiSchedule#XXU-EPI-OPV-1 "bOPV, dose 1"
* action[=].timingAge = 6 'wk' "weeks"
* action[+].title = "6 weeks: PCV 1"
* action[=].code = TrustDemoOnesaEpiSchedule#XXU-EPI-PCV-1 "PCV, dose 1"
* action[=].timingAge = 6 'wk' "weeks"
* action[+].title = "9 months: measles-rubella 1"
* action[=].code = TrustDemoOnesaEpiSchedule#XXU-EPI-MR-1 "Measles-rubella, dose 1"
* action[=].timingAge = 9 'mo' "months"

// The trust domains of the journeys. A GDHCN trust domain scopes what a
// participant's keys may sign; the DID trust list names it for each key, and a
// verifier accepts a certificate only under a domain it knows. These codes are
// the demo's own, invented for the Onesa and Taifafeki journeys, in the style
// of the GDHCN Trust Domains CodeSystem of smart-trust
// (http://smart.who.int/trust/CodeSystem/Domains-DEV). They are not GDHCN
// trust domains.

CodeSystem: TrustDemoTrustDomain
Id: TrustDemoTrustDomain
Title: "Trust domains of the journeys (illustrative)"
Description: "Illustrative GDHCN-style trust domains for the demo's journeys: the scope under which each certificate in J1 to J4.1 is signed and verified. Invented for the demo, modelled on the GDHCN Trust Domains of SMART Trust; not GDHCN trust domains."
* ^experimental = true
* ^caseSensitive = true
* #DEMO-DVC "Demo: Digital Vaccination Certificate" "Routine-immunization DVCs (HCERT) signed per dose by a birth clinic system and verified by a home clinic EHR (J1, J3)."
* #DEMO-VHL "Demo: Verifiable Health Link" "Verifiable Health Links (HCERT) to a patient summary, created on the national portal and resolved at a point of care abroad (J4.0, J4.1). Its terms of use are TrustDemoVhlTermsOfUse."

ValueSet: TrustDemoTrustDomains
Id: TrustDemoTrustDomains
Title: "Trust domains of the journeys"
Description: "Every code of TrustDemoTrustDomain: the trust domains a verifier in the journeys accepts."
* ^experimental = true
* include codes from system TrustDemoTrustDomain

// DEMO-VHL's terms of use: the consent codes a holder may agree to when a VHL
// is created. As in the Personal Health Wallet guide (PHWExplicitConsent), an
// explicit consent names the code, with the code system version whose text the
// holder was shown, in Consent.policyRule. Used by the J4.0 business process
// (the family creates the VHL and consents).

CodeSystem: TrustDemoVhlConsent
Id: TrustDemoVhlConsent
Title: "Consents of the demo VHL trust domain (illustrative)"
Description: "The consent codes of the illustrative DEMO-VHL trust domain: what a holder agrees to when the family wallet creates a Verifiable Health Link (J4.0). Invented for the demo, in the style of the IPS for Pilgrimage consents (IPS.HAJJ.CONSENT); not a GDHCN trust domain's terms of use."
* ^experimental = true
* ^caseSensitive = true
* #CONSENT-VHL-TREATMENT "Consent to read the summary for treatment" "Anyone the holder gives the VHL's QR code and passcode to may read the patient summary behind it, for treatment, until the link expires. Each access is logged by the issuing portal."

ValueSet: TrustDemoVhlTermsOfUse
Id: TrustDemoVhlTermsOfUse
Title: "Terms of use of the demo VHL trust domain"
Description: "The terms of use of the DEMO-VHL trust domain (TrustDemoTrustDomain): every code of TrustDemoVhlConsent. An explicit consent to share a VHL names one of them in Consent.policyRule (J4.0)."
* ^experimental = true
* include codes from system TrustDemoVhlConsent
