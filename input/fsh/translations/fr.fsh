// French (fr) designations for this guide's own CodeSystems, as CodeSystem
// supplements (one file per locale). Agent translation, UNOFFICIAL: no human
// has reviewed or signed it off. Codes are unchanged; only displays,
// definitions and fr designations are given.

CodeSystem: TrustDemoOnesaEpiScheduleFr
Id: TrustDemoOnesaEpiSchedule-fr
Title: "Codes antigène-dose du calendrier national (illustratifs, Onesa)"
Description: "French (fr) supplement to TrustDemoOnesaEpiSchedule: displays and definitions in French. Unofficial agent translation."
* ^content = #supplement
* ^supplements = Canonical(TrustDemoOnesaEpiSchedule)
* ^language = #fr
* ^status = #draft
* ^experimental = true
* ^count = 6
* #XXU-EPI-HEPB-BD "Dose à la naissance contre l'hépatite B"
* #XXU-EPI-HEPB-BD ^designation[0].language = #fr
* #XXU-EPI-HEPB-BD ^designation[0].value = "Dose à la naissance contre l'hépatite B"
* #XXU-EPI-BCG "BCG"
* #XXU-EPI-BCG ^designation[0].language = #fr
* #XXU-EPI-BCG ^designation[0].value = "BCG"
* #XXU-EPI-PENTA-1 "Pentavalent (DTC-HepB-Hib), dose 1"
* #XXU-EPI-PENTA-1 ^designation[0].language = #fr
* #XXU-EPI-PENTA-1 ^designation[0].value = "Pentavalent (DTC-HepB-Hib), dose 1"
* #XXU-EPI-OPV-1 "VPOb, dose 1"
* #XXU-EPI-OPV-1 ^designation[0].language = #fr
* #XXU-EPI-OPV-1 ^designation[0].value = "VPOb, dose 1"
* #XXU-EPI-PCV-1 "VPC, dose 1"
* #XXU-EPI-PCV-1 ^designation[0].language = #fr
* #XXU-EPI-PCV-1 ^designation[0].value = "VPC, dose 1"
* #XXU-EPI-MR-1 "Rougeole-rubéole, dose 1"
* #XXU-EPI-MR-1 ^designation[0].language = #fr
* #XXU-EPI-MR-1 ^designation[0].value = "Rougeole-rubéole, dose 1"

CodeSystem: TrustDemoVerificationResultFr
Id: TrustDemoVerificationResult-fr
Title: "Résultat de la lecture d'un DVC"
Description: "French (fr) supplement to TrustDemoVerificationResult: displays and definitions in French. Unofficial agent translation."
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVerificationResult)
* ^language = #fr
* ^status = #draft
* ^experimental = true
* ^count = 3
* #verified "Vérifié" "Toutes les étapes de la vérification ont réussi (STT-VER-001)."
* #verified ^designation[0].language = #fr
* #verified ^designation[0].value = "Vérifié"
* #failed "Échec" "La vérification s'est arrêtée à une étape, pour un motif tiré de l'ensemble fermé de STT-VER-008."
* #failed ^designation[0].language = #fr
* #failed ^designation[0].value = "Échec"
* #unverified "Lu, non vérifié" "La charge utile a été lue par read-unverified, sans consultation de la liste de confiance ni contrôle de la signature (STT-VER-011)."
* #unverified ^designation[0].language = #fr
* #unverified ^designation[0].value = "Lu, non vérifié"

CodeSystem: TrustDemoVerificationStepFr
Id: TrustDemoVerificationStep-fr
Title: "Étapes de la vérification"
Description: "French (fr) supplement to TrustDemoVerificationStep: displays and definitions in French. Unofficial agent translation."
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVerificationStep)
* ^language = #fr
* ^status = #draft
* ^experimental = true
* ^count = 12
* #prefix "Préfixe" "Le préfixe de contexte HC1: et sa version."
* #prefix ^designation[0].language = #fr
* #prefix ^designation[0].value = "Préfixe"
* #base45 "Base45" "Décodage Base45 du texte du code QR."
* #base45 ^designation[0].language = #fr
* #base45 ^designation[0].value = "Base45"
* #inflate "Décompression" "Décompression ZLIB, dans les limites fixées."
* #inflate ^designation[0].language = #fr
* #inflate ^designation[0].value = "Décompression"
* #cose "COSE" "Analyse de la structure COSE_Sign1."
* #cose ^designation[0].language = #fr
* #cose ^designation[0].value = "COSE"
* #header "En-tête" "Les en-têtes protégés et non protégés."
* #header ^designation[0].language = #fr
* #header ^designation[0].value = "En-tête"
* #trust-lookup "Consultation de la liste de confiance" "Recherche du certificat du signataire par son kid dans la liste de confiance."
* #trust-lookup ^designation[0].language = #fr
* #trust-lookup ^designation[0].value = "Consultation de la liste de confiance"
* #signature "Signature" "Contrôle de la signature avec la clé du signataire."
* #signature ^designation[0].language = #fr
* #signature ^designation[0].value = "Signature"
* #key-usage "Usage de la clé" "Contrôle que le certificat du signataire peut signer ce type de certificat."
* #key-usage ^designation[0].language = #fr
* #key-usage ^designation[0].value = "Usage de la clé"
* #cwt "CWT" "Lecture de l'ensemble de revendications CWT."
* #cwt ^designation[0].language = #fr
* #cwt ^designation[0].value = "CWT"
* #time "Date et heure" "Contrôle de la date d'émission et de l'expiration au regard de l'horloge du vérificateur."
* #time ^designation[0].language = #fr
* #time ^designation[0].value = "Date et heure"
* #hcert "HCERT" "Recherche de la revendication hcert et de sa sous-revendication."
* #hcert ^designation[0].language = #fr
* #hcert ^designation[0].value = "HCERT"
* #payload "Charge utile" "Lecture de la charge utile au regard de son modèle logique."
* #payload ^designation[0].language = #fr
* #payload ^designation[0].value = "Charge utile"

CodeSystem: TrustDemoVerificationFailureReasonFr
Id: TrustDemoVerificationFailureReason-fr
Title: "Motifs d'échec de la vérification"
Description: "French (fr) supplement to TrustDemoVerificationFailureReason: displays and definitions in French. Unofficial agent translation."
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVerificationFailureReason)
* ^language = #fr
* ^status = #draft
* ^experimental = true
* ^count = 16
* #BadPrefix "Préfixe incorrect" "Le texte ne commence pas par le préfixe HC1:."
* #BadPrefix ^designation[0].language = #fr
* #BadPrefix ^designation[0].value = "Préfixe incorrect"
* #UnsupportedContextVersion "Version de contexte non prise en charge" "L'identifiant de contexte désigne une version que le vérificateur ne prend pas en charge."
* #UnsupportedContextVersion ^designation[0].language = #fr
* #UnsupportedContextVersion ^designation[0].value = "Version de contexte non prise en charge"
* #Base45Invalid "Base45 non valide" "Le texte n'est pas du Base45 valide."
* #Base45Invalid ^designation[0].language = #fr
* #Base45Invalid ^designation[0].value = "Base45 non valide"
* #InflateFailed "Échec de la décompression" "Les octets compressés ne se décompressent pas."
* #InflateFailed ^designation[0].language = #fr
* #InflateFailed ^designation[0].value = "Échec de la décompression"
* #LimitExceeded "Limite dépassée" "Une limite de décodage (taille ou profondeur) a été dépassée."
* #LimitExceeded ^designation[0].language = #fr
* #LimitExceeded ^designation[0].value = "Limite dépassée"
* #CoseMalformed "COSE mal formé" "Les octets ne forment pas une structure COSE_Sign1 bien formée."
* #CoseMalformed ^designation[0].language = #fr
* #CoseMalformed ^designation[0].value = "COSE mal formé"
* #HeaderInvalid "En-tête non valide" "Un en-tête COSE est absent ou non conforme aux exigences."
* #HeaderInvalid ^designation[0].language = #fr
* #HeaderInvalid ^designation[0].value = "En-tête non valide"
* #UnsupportedAlgorithm "Algorithme non pris en charge" "L'algorithme de signature ne fait pas partie de ceux qu'accepte le vérificateur."
* #UnsupportedAlgorithm ^designation[0].language = #fr
* #UnsupportedAlgorithm ^designation[0].value = "Algorithme non pris en charge"
* #KidNotFound "Clé introuvable" "Aucun certificat de la copie de la liste de confiance du vérificateur ne porte ce kid (STT-VER-006)."
* #KidNotFound ^designation[0].language = #fr
* #KidNotFound ^designation[0].value = "Clé introuvable"
* #SignatureInvalid "Signature non valide" "La signature ne se vérifie avec aucun certificat portant ce kid."
* #SignatureInvalid ^designation[0].language = #fr
* #SignatureInvalid ^designation[0].value = "Signature non valide"
* #KeyUsageMismatch "Usage de la clé non conforme" "Le certificat du signataire ne peut pas signer ce type de certificat."
* #KeyUsageMismatch ^designation[0].language = #fr
* #KeyUsageMismatch ^designation[0].value = "Usage de la clé non conforme"
* #Expired "Expiré" "La date d'expiration du certificat est dépassée."
* #Expired ^designation[0].language = #fr
* #Expired ^designation[0].value = "Expiré"
* #NotYetValid "Pas encore valide" "La date d'émission du certificat se situe dans le futur."
* #NotYetValid ^designation[0].language = #fr
* #NotYetValid ^designation[0].value = "Pas encore valide"
* #HcertMissing "HCERT absent" "L'ensemble de revendications ne comporte pas de revendication hcert."
* #HcertMissing ^designation[0].language = #fr
* #HcertMissing ^designation[0].value = "HCERT absent"
* #MultipleSubclaims "Sous-revendications multiples" "La revendication hcert comporte plus de sous-revendications que le vérificateur n'en accepte."
* #MultipleSubclaims ^designation[0].language = #fr
* #MultipleSubclaims ^designation[0].value = "Sous-revendications multiples"
* #PayloadInvalid "Charge utile non valide" "La charge utile n'est pas conforme à son modèle logique."
* #PayloadInvalid ^designation[0].language = #fr
* #PayloadInvalid ^designation[0].value = "Charge utile non valide"

CodeSystem: TrustDemoDvcOutcomeFr
Id: TrustDemoDvcOutcome-fr
Title: "Ce que devient un DVC scanné dans le dossier"
Description: "French (fr) supplement to TrustDemoDvcOutcome: displays and definitions in French. Unofficial agent translation."
* ^content = #supplement
* ^supplements = Canonical(TrustDemoDvcOutcome)
* ^language = #fr
* ^status = #draft
* ^experimental = true
* ^count = 4
* #verified "Vérifié" "Enregistré à partir de sa source primaire, avec la provenance de la vérification."
* #verified ^designation[0].language = #fr
* #verified ^designation[0].value = "Vérifié"
* #reported-unverified "Déclaré, non vérifié" "Conservé comme déclaré par la famille (primarySource false) ; non pris en compte par le calendrier."
* #reported-unverified ^designation[0].language = #fr
* #reported-unverified ^designation[0].value = "Déclaré, non vérifié"
* #rejected "Rejeté" "Le certificat ne constitue pas une preuve de dose ; l'étape et le motif sont enregistrés."
* #rejected ^designation[0].language = #fr
* #rejected ^designation[0].value = "Rejeté"
* #not-read "Non lu" "Rien n'a pu être lu dans le code QR ; la carte est traitée comme une carte papier."
* #not-read ^designation[0].language = #fr
* #not-read ^designation[0].value = "Non lu"

CodeSystem: TrustDemoCodeMappingBasisFr
Id: TrustDemoCodeMappingBasis-fr
Title: "Comment une dose importée a obtenu son code du calendrier national"
Description: "French (fr) supplement to TrustDemoCodeMappingBasis: displays and definitions in French. Unofficial agent translation."
* ^content = #supplement
* ^supplements = Canonical(TrustDemoCodeMappingBasis)
* ^language = #fr
* ^status = #draft
* ^experimental = true
* ^count = 4
* #concept-map "Par la ConceptMap nationale" "Le code produit de l'émetteur a un code du calendrier équivalent dans la table de correspondance nationale."
* #concept-map ^designation[0].language = #fr
* #concept-map ^designation[0].value = "Par la ConceptMap nationale"
* #clinician-confirmed "Confirmé par le clinicien" "La table de correspondance n'avait pas d'entrée ; le clinicien a confirmé l'équivalent, et la décision est ajoutée à la table de correspondance."
* #clinician-confirmed ^designation[0].language = #fr
* #clinician-confirmed ^designation[0].value = "Confirmé par le clinicien"
* #unmapped "Sans correspondance" "Aucun équivalent n'est connu ; le code de l'émetteur est conservé tel quel et affiché comme sans correspondance."
* #unmapped ^designation[0].language = #fr
* #unmapped ^designation[0].value = "Sans correspondance"
* #not-imported "Non importée" "La dose n'a pas été vérifiée ; elle n'a donc été ni importée ni mise en correspondance."
* #not-imported ^designation[0].language = #fr
* #not-imported ^designation[0].value = "Non importée"

CodeSystem: TrustDemoVhlRefusalReasonFr
Id: TrustDemoVhlRefusalReason-fr
Title: "Pourquoi un lien partagé n'a rien communiqué"
Description: "French (fr) supplement to TrustDemoVhlRefusalReason: displays and definitions in French. Unofficial agent translation."
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVhlRefusalReason)
* ^language = #fr
* ^status = #draft
* ^experimental = true
* ^count = 3
* #withdrawn "Retiré" "Le titulaire a retiré le lien avant son expiration."
* #withdrawn ^designation[0].language = #fr
* #withdrawn ^designation[0].value = "Retiré"
* #expired "Expiré" "La demande est arrivée après l'expiration choisie par le titulaire."
* #expired ^designation[0].language = #fr
* #expired ^designation[0].value = "Expiré"
* #wrong-passcode "Code d'accès erroné" "Le code d'accès fourni ne correspond pas à celui défini par le titulaire."
* #wrong-passcode ^designation[0].language = #fr
* #wrong-passcode ^designation[0].value = "Code d'accès erroné"

CodeSystem: TrustDemoTrustDomainFr
Id: TrustDemoTrustDomain-fr
Title: "Domaines de confiance des parcours (illustratifs)"
Description: "French (fr) supplement to TrustDemoTrustDomain: displays and definitions in French. Unofficial agent translation."
* ^content = #supplement
* ^supplements = Canonical(TrustDemoTrustDomain)
* ^language = #fr
* ^status = #draft
* ^experimental = true
* ^count = 2
* #DEMO-DVC "Démo : certificat de vaccination numérique" "DVC de vaccination de routine (HCERT) signés dose par dose par le système d'un centre de naissance et vérifiés par le DSE d'un centre de santé du pays de résidence (J1, J3)."
* #DEMO-DVC ^designation[0].language = #fr
* #DEMO-DVC ^designation[0].value = "Démo : certificat de vaccination numérique"
* #DEMO-VHL "Démo : lien de santé vérifiable" "Liens de santé vérifiables (HCERT) vers un résumé du patient, créés sur le portail national et résolus à un point de soins à l'étranger (J4.0, J4.1). Ses conditions d'utilisation sont TrustDemoVhlTermsOfUse."
* #DEMO-VHL ^designation[0].language = #fr
* #DEMO-VHL ^designation[0].value = "Démo : lien de santé vérifiable"

CodeSystem: TrustDemoVhlConsentFr
Id: TrustDemoVhlConsent-fr
Title: "Consentements du domaine de confiance VHL de la démo (illustratifs)"
Description: "French (fr) supplement to TrustDemoVhlConsent: displays and definitions in French. Unofficial agent translation."
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVhlConsent)
* ^language = #fr
* ^status = #draft
* ^experimental = true
* ^count = 1
* #CONSENT-VHL-TREATMENT "Consentement à la lecture du résumé à des fins de traitement" "Toute personne à qui le titulaire remet le code QR et le code d'accès du VHL peut lire le résumé du patient auquel il donne accès, à des fins de traitement, jusqu'à l'expiration du lien. Chaque accès est journalisé par le portail émetteur."
* #CONSENT-VHL-TREATMENT ^designation[0].language = #fr
* #CONSENT-VHL-TREATMENT ^designation[0].value = "Consentement à la lecture du résumé à des fins de traitement"
