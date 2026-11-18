// Russian (ru) designations for this guide's own CodeSystems, as CodeSystem supplements.
// UNOFFICIAL: agent translation (official: false, generatedBy: agent); no person has signed it off.
// Data element displays are the msgstr of translations/ru/pagecontent/dictionary.po.

CodeSystem: TrustDemoOnesaEpiScheduleRu
Id: TrustDemoOnesaEpiSchedule-ru
Title: "TrustDemoOnesaEpiSchedule (ru designations, unofficial)"
Description: "Unofficial Russian designations for TrustDemoOnesaEpiSchedule: an agent translation that no person has signed off."
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoOnesaEpiSchedule)
* ^language = #ru
* ^caseSensitive = true
* #XXU-EPI-HEPB-BD "Hepatitis B birth dose"
* #XXU-EPI-HEPB-BD ^designation[+].language = #ru
* #XXU-EPI-HEPB-BD ^designation[=].value = "Доза вакцины против гепатита B при рождении"
* #XXU-EPI-BCG "BCG"
* #XXU-EPI-BCG ^designation[+].language = #ru
* #XXU-EPI-BCG ^designation[=].value = "БЦЖ (BCG)"
* #XXU-EPI-PENTA-1 "Pentavalent (DTP-HepB-Hib), dose 1"
* #XXU-EPI-PENTA-1 ^designation[+].language = #ru
* #XXU-EPI-PENTA-1 ^designation[=].value = "Пентавалентная (АКДС-HepB-Hib), доза 1"
* #XXU-EPI-OPV-1 "bOPV, dose 1"
* #XXU-EPI-OPV-1 ^designation[+].language = #ru
* #XXU-EPI-OPV-1 ^designation[=].value = "bOPV, доза 1"
* #XXU-EPI-PCV-1 "PCV, dose 1"
* #XXU-EPI-PCV-1 ^designation[+].language = #ru
* #XXU-EPI-PCV-1 ^designation[=].value = "PCV, доза 1"
* #XXU-EPI-MR-1 "Measles-rubella, dose 1"
* #XXU-EPI-MR-1 ^designation[+].language = #ru
* #XXU-EPI-MR-1 ^designation[=].value = "Корь-краснуха, доза 1"

CodeSystem: TrustDemoVerificationResultRu
Id: TrustDemoVerificationResult-ru
Title: "TrustDemoVerificationResult (ru designations, unofficial)"
Description: "Unofficial Russian designations for TrustDemoVerificationResult: an agent translation that no person has signed off."
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVerificationResult)
* ^language = #ru
* ^caseSensitive = true
* #verified "Verified"
* #verified ^designation[+].language = #ru
* #verified ^designation[=].value = "Проверено"
* #failed "Failed"
* #failed ^designation[+].language = #ru
* #failed ^designation[=].value = "Проверка не пройдена"
* #unverified "Read, not verified"
* #unverified ^designation[+].language = #ru
* #unverified ^designation[=].value = "Прочитано, не проверено"

CodeSystem: TrustDemoVerificationStepRu
Id: TrustDemoVerificationStep-ru
Title: "TrustDemoVerificationStep (ru designations, unofficial)"
Description: "Unofficial Russian designations for TrustDemoVerificationStep: an agent translation that no person has signed off."
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVerificationStep)
* ^language = #ru
* ^caseSensitive = true
* #prefix "Prefix"
* #prefix ^designation[+].language = #ru
* #prefix ^designation[=].value = "Префикс"
* #base45 "Base45"
* #base45 ^designation[+].language = #ru
* #base45 ^designation[=].value = "Base45"
* #inflate "Inflate"
* #inflate ^designation[+].language = #ru
* #inflate ^designation[=].value = "Распаковка"
* #cose "COSE"
* #cose ^designation[+].language = #ru
* #cose ^designation[=].value = "COSE"
* #header "Header"
* #header ^designation[+].language = #ru
* #header ^designation[=].value = "Заголовок"
* #trust-lookup "Trust lookup"
* #trust-lookup ^designation[+].language = #ru
* #trust-lookup ^designation[=].value = "Поиск в списке доверия"
* #signature "Signature"
* #signature ^designation[+].language = #ru
* #signature ^designation[=].value = "Подпись"
* #key-usage "Key usage"
* #key-usage ^designation[+].language = #ru
* #key-usage ^designation[=].value = "Назначение ключа"
* #cwt "CWT"
* #cwt ^designation[+].language = #ru
* #cwt ^designation[=].value = "CWT"
* #time "Time"
* #time ^designation[+].language = #ru
* #time ^designation[=].value = "Время"
* #hcert "HCERT"
* #hcert ^designation[+].language = #ru
* #hcert ^designation[=].value = "HCERT"
* #payload "Payload"
* #payload ^designation[+].language = #ru
* #payload ^designation[=].value = "Полезная нагрузка"

CodeSystem: TrustDemoVerificationFailureReasonRu
Id: TrustDemoVerificationFailureReason-ru
Title: "TrustDemoVerificationFailureReason (ru designations, unofficial)"
Description: "Unofficial Russian designations for TrustDemoVerificationFailureReason: an agent translation that no person has signed off."
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVerificationFailureReason)
* ^language = #ru
* ^caseSensitive = true
* #BadPrefix "Bad prefix"
* #BadPrefix ^designation[+].language = #ru
* #BadPrefix ^designation[=].value = "Неверный префикс"
* #UnsupportedContextVersion "Unsupported context version"
* #UnsupportedContextVersion ^designation[+].language = #ru
* #UnsupportedContextVersion ^designation[=].value = "Неподдерживаемая версия контекста"
* #Base45Invalid "Base45 invalid"
* #Base45Invalid ^designation[+].language = #ru
* #Base45Invalid ^designation[=].value = "Недопустимый Base45"
* #InflateFailed "Inflate failed"
* #InflateFailed ^designation[+].language = #ru
* #InflateFailed ^designation[=].value = "Ошибка распаковки"
* #LimitExceeded "Limit exceeded"
* #LimitExceeded ^designation[+].language = #ru
* #LimitExceeded ^designation[=].value = "Превышен предел"
* #CoseMalformed "COSE malformed"
* #CoseMalformed ^designation[+].language = #ru
* #CoseMalformed ^designation[=].value = "Некорректная структура COSE"
* #HeaderInvalid "Header invalid"
* #HeaderInvalid ^designation[+].language = #ru
* #HeaderInvalid ^designation[=].value = "Недопустимый заголовок"
* #UnsupportedAlgorithm "Unsupported algorithm"
* #UnsupportedAlgorithm ^designation[+].language = #ru
* #UnsupportedAlgorithm ^designation[=].value = "Неподдерживаемый алгоритм"
* #KidNotFound "Key not found"
* #KidNotFound ^designation[+].language = #ru
* #KidNotFound ^designation[=].value = "Ключ не найден"
* #SignatureInvalid "Signature invalid"
* #SignatureInvalid ^designation[+].language = #ru
* #SignatureInvalid ^designation[=].value = "Недействительная подпись"
* #KeyUsageMismatch "Key usage mismatch"
* #KeyUsageMismatch ^designation[+].language = #ru
* #KeyUsageMismatch ^designation[=].value = "Несоответствие назначения ключа"
* #Expired "Expired"
* #Expired ^designation[+].language = #ru
* #Expired ^designation[=].value = "Срок действия истёк"
* #NotYetValid "Not yet valid"
* #NotYetValid ^designation[+].language = #ru
* #NotYetValid ^designation[=].value = "Ещё не действителен"
* #HcertMissing "HCERT missing"
* #HcertMissing ^designation[+].language = #ru
* #HcertMissing ^designation[=].value = "HCERT отсутствует"
* #MultipleSubclaims "Multiple subclaims"
* #MultipleSubclaims ^designation[+].language = #ru
* #MultipleSubclaims ^designation[=].value = "Несколько подутверждений"
* #PayloadInvalid "Payload invalid"
* #PayloadInvalid ^designation[+].language = #ru
* #PayloadInvalid ^designation[=].value = "Недопустимая полезная нагрузка"

CodeSystem: TrustDemoDvcOutcomeRu
Id: TrustDemoDvcOutcome-ru
Title: "TrustDemoDvcOutcome (ru designations, unofficial)"
Description: "Unofficial Russian designations for TrustDemoDvcOutcome: an agent translation that no person has signed off."
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoDvcOutcome)
* ^language = #ru
* ^caseSensitive = true
* #verified "Verified"
* #verified ^designation[+].language = #ru
* #verified ^designation[=].value = "Проверено"
* #reported-unverified "Reported, not verified"
* #reported-unverified ^designation[+].language = #ru
* #reported-unverified ^designation[=].value = "Заявлено, не проверено"
* #rejected "Rejected"
* #rejected ^designation[+].language = #ru
* #rejected ^designation[=].value = "Отклонено"
* #not-read "Not read"
* #not-read ^designation[+].language = #ru
* #not-read ^designation[=].value = "Не прочитано"

CodeSystem: TrustDemoCodeMappingBasisRu
Id: TrustDemoCodeMappingBasis-ru
Title: "TrustDemoCodeMappingBasis (ru designations, unofficial)"
Description: "Unofficial Russian designations for TrustDemoCodeMappingBasis: an agent translation that no person has signed off."
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoCodeMappingBasis)
* ^language = #ru
* ^caseSensitive = true
* #concept-map "By the national ConceptMap"
* #concept-map ^designation[+].language = #ru
* #concept-map ^designation[=].value = "По национальной ConceptMap"
* #clinician-confirmed "Confirmed by the clinician"
* #clinician-confirmed ^designation[+].language = #ru
* #clinician-confirmed ^designation[=].value = "Подтверждено клиницистом"
* #unmapped "Unmapped"
* #unmapped ^designation[+].language = #ru
* #unmapped ^designation[=].value = "Без сопоставления"
* #not-imported "Not imported"
* #not-imported ^designation[+].language = #ru
* #not-imported ^designation[=].value = "Не импортировано"

CodeSystem: TrustDemoVhlRefusalReasonRu
Id: TrustDemoVhlRefusalReason-ru
Title: "TrustDemoVhlRefusalReason (ru designations, unofficial)"
Description: "Unofficial Russian designations for TrustDemoVhlRefusalReason: an agent translation that no person has signed off."
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVhlRefusalReason)
* ^language = #ru
* ^caseSensitive = true
* #withdrawn "Withdrawn"
* #withdrawn ^designation[+].language = #ru
* #withdrawn ^designation[=].value = "Отозвано"
* #expired "Expired"
* #expired ^designation[+].language = #ru
* #expired ^designation[=].value = "Срок действия истёк"
* #wrong-passcode "Wrong passcode"
* #wrong-passcode ^designation[+].language = #ru
* #wrong-passcode ^designation[=].value = "Неверный код доступа"

CodeSystem: TrustDemoTrustDomainRu
Id: TrustDemoTrustDomain-ru
Title: "TrustDemoTrustDomain (ru designations, unofficial)"
Description: "Unofficial Russian designations for TrustDemoTrustDomain: an agent translation that no person has signed off. Each code has a display designation and a definition designation; the codes themselves are not translated."
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoTrustDomain)
* ^language = #ru
* ^caseSensitive = true
* #DEMO-DVC "Demo: Digital Vaccination Certificate"
* #DEMO-DVC ^designation[+].language = #ru
* #DEMO-DVC ^designation[=].value = "Демо: цифровой сертификат о вакцинации"
* #DEMO-DVC ^designation[+].language = #ru
* #DEMO-DVC ^designation[=].use = http://snomed.info/sct#900000000000550004 "Definition"
* #DEMO-DVC ^designation[=].value = "DVC (HCERT) плановой иммунизации, подписываемые для каждой дозы системой родильной клиники и проверяемые EHR клиники по месту жительства (J1, J3)."
* #DEMO-VHL "Demo: Verifiable Health Link"
* #DEMO-VHL ^designation[+].language = #ru
* #DEMO-VHL ^designation[=].value = "Демо: проверяемая ссылка на медицинские данные"
* #DEMO-VHL ^designation[+].language = #ru
* #DEMO-VHL ^designation[=].use = http://snomed.info/sct#900000000000550004 "Definition"
* #DEMO-VHL ^designation[=].value = "Проверяемые ссылки на медицинские данные (VHL, HCERT) на сводку о пациенте, создаваемые на национальном портале и разрешаемые в месте оказания помощи за границей (J4.0, J4.1). Условия их использования — TrustDemoVhlTermsOfUse."

CodeSystem: TrustDemoVhlConsentRu
Id: TrustDemoVhlConsent-ru
Title: "TrustDemoVhlConsent (ru designations, unofficial)"
Description: "Unofficial Russian designations for TrustDemoVhlConsent: an agent translation that no person has signed off. Each code has a display designation and a definition designation; the codes themselves are not translated."
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVhlConsent)
* ^language = #ru
* ^caseSensitive = true
* #CONSENT-VHL-TREATMENT "Consent to read the summary for treatment"
* #CONSENT-VHL-TREATMENT ^designation[+].language = #ru
* #CONSENT-VHL-TREATMENT ^designation[=].value = "Согласие на чтение сводки для лечения"
* #CONSENT-VHL-TREATMENT ^designation[+].language = #ru
* #CONSENT-VHL-TREATMENT ^designation[=].use = http://snomed.info/sct#900000000000550004 "Definition"
* #CONSENT-VHL-TREATMENT ^designation[=].value = "Любой, кому владелец передаёт QR-код и код доступа VHL, может читать стоящую за ней сводку о пациенте в целях лечения до истечения срока действия ссылки. Каждый доступ регистрируется выдавшим порталом."
