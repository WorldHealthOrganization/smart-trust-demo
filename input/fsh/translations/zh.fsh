// Simplified Chinese (zh) display designations for this IG's code systems,
// as FHIR CodeSystem supplements (content = supplement): FHIR's own
// translation mechanism, one file per locale, no edit to the base code systems.
// UNOFFICIAL: drafted by an agent; no human has signed it off.
// Codes, acronyms and identifiers are kept as written. The data-element
// displays match translations/zh/pagecontent/dictionary.po.

CodeSystem: TrustDemoVerificationResultZh
Id: TrustDemoVerificationResult-zh
Title: "TrustDemoVerificationResult — Chinese (zh) supplement"
Description: "Unofficial Simplified Chinese (zh) display designations for the TrustDemoVerificationResult code system, drafted by an agent and not signed off by a human."
* ^experimental = true
* ^status = #draft
* ^language = #zh
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVerificationResult)
* #verified
* #verified ^designation[+].language = #zh
* #verified ^designation[=].value = "已验证"
* #failed
* #failed ^designation[+].language = #zh
* #failed ^designation[=].value = "失败"
* #unverified
* #unverified ^designation[+].language = #zh
* #unverified ^designation[=].value = "已读取，未验证"

CodeSystem: TrustDemoVerificationStepZh
Id: TrustDemoVerificationStep-zh
Title: "TrustDemoVerificationStep — Chinese (zh) supplement"
Description: "Unofficial Simplified Chinese (zh) display designations for the TrustDemoVerificationStep code system, drafted by an agent and not signed off by a human."
* ^experimental = true
* ^status = #draft
* ^language = #zh
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVerificationStep)
* #prefix
* #prefix ^designation[+].language = #zh
* #prefix ^designation[=].value = "前缀"
* #base45
* #base45 ^designation[+].language = #zh
* #base45 ^designation[=].value = "Base45"
* #inflate
* #inflate ^designation[+].language = #zh
* #inflate ^designation[=].value = "解压缩（Inflate）"
* #cose
* #cose ^designation[+].language = #zh
* #cose ^designation[=].value = "COSE"
* #header
* #header ^designation[+].language = #zh
* #header ^designation[=].value = "头部"
* #trust-lookup
* #trust-lookup ^designation[+].language = #zh
* #trust-lookup ^designation[=].value = "信任查询"
* #signature
* #signature ^designation[+].language = #zh
* #signature ^designation[=].value = "签名"
* #key-usage
* #key-usage ^designation[+].language = #zh
* #key-usage ^designation[=].value = "密钥用途"
* #cwt
* #cwt ^designation[+].language = #zh
* #cwt ^designation[=].value = "CWT"
* #time
* #time ^designation[+].language = #zh
* #time ^designation[=].value = "时间"
* #hcert
* #hcert ^designation[+].language = #zh
* #hcert ^designation[=].value = "HCERT"
* #payload
* #payload ^designation[+].language = #zh
* #payload ^designation[=].value = "有效载荷"

CodeSystem: TrustDemoVerificationFailureReasonZh
Id: TrustDemoVerificationFailureReason-zh
Title: "TrustDemoVerificationFailureReason — Chinese (zh) supplement"
Description: "Unofficial Simplified Chinese (zh) display designations for the TrustDemoVerificationFailureReason code system, drafted by an agent and not signed off by a human."
* ^experimental = true
* ^status = #draft
* ^language = #zh
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVerificationFailureReason)
* #BadPrefix
* #BadPrefix ^designation[+].language = #zh
* #BadPrefix ^designation[=].value = "前缀错误"
* #UnsupportedContextVersion
* #UnsupportedContextVersion ^designation[+].language = #zh
* #UnsupportedContextVersion ^designation[=].value = "不支持的上下文版本"
* #Base45Invalid
* #Base45Invalid ^designation[+].language = #zh
* #Base45Invalid ^designation[=].value = "Base45 无效"
* #InflateFailed
* #InflateFailed ^designation[+].language = #zh
* #InflateFailed ^designation[=].value = "解压缩（Inflate）失败"
* #LimitExceeded
* #LimitExceeded ^designation[+].language = #zh
* #LimitExceeded ^designation[=].value = "超出限制"
* #CoseMalformed
* #CoseMalformed ^designation[+].language = #zh
* #CoseMalformed ^designation[=].value = "COSE 格式错误"
* #HeaderInvalid
* #HeaderInvalid ^designation[+].language = #zh
* #HeaderInvalid ^designation[=].value = "头部无效"
* #UnsupportedAlgorithm
* #UnsupportedAlgorithm ^designation[+].language = #zh
* #UnsupportedAlgorithm ^designation[=].value = "不支持的算法"
* #KidNotFound
* #KidNotFound ^designation[+].language = #zh
* #KidNotFound ^designation[=].value = "未找到密钥"
* #SignatureInvalid
* #SignatureInvalid ^designation[+].language = #zh
* #SignatureInvalid ^designation[=].value = "签名无效"
* #KeyUsageMismatch
* #KeyUsageMismatch ^designation[+].language = #zh
* #KeyUsageMismatch ^designation[=].value = "密钥用途不匹配"
* #Expired
* #Expired ^designation[+].language = #zh
* #Expired ^designation[=].value = "已过期"
* #NotYetValid
* #NotYetValid ^designation[+].language = #zh
* #NotYetValid ^designation[=].value = "尚未生效"
* #HcertMissing
* #HcertMissing ^designation[+].language = #zh
* #HcertMissing ^designation[=].value = "缺少 HCERT"
* #MultipleSubclaims
* #MultipleSubclaims ^designation[+].language = #zh
* #MultipleSubclaims ^designation[=].value = "存在多个子声明"
* #PayloadInvalid
* #PayloadInvalid ^designation[+].language = #zh
* #PayloadInvalid ^designation[=].value = "有效载荷无效"

CodeSystem: TrustDemoDvcOutcomeZh
Id: TrustDemoDvcOutcome-zh
Title: "TrustDemoDvcOutcome — Chinese (zh) supplement"
Description: "Unofficial Simplified Chinese (zh) display designations for the TrustDemoDvcOutcome code system, drafted by an agent and not signed off by a human."
* ^experimental = true
* ^status = #draft
* ^language = #zh
* ^content = #supplement
* ^supplements = Canonical(TrustDemoDvcOutcome)
* #verified
* #verified ^designation[+].language = #zh
* #verified ^designation[=].value = "已验证"
* #reported-unverified
* #reported-unverified ^designation[+].language = #zh
* #reported-unverified ^designation[=].value = "已报告，未验证"
* #rejected
* #rejected ^designation[+].language = #zh
* #rejected ^designation[=].value = "已拒绝"
* #not-read
* #not-read ^designation[+].language = #zh
* #not-read ^designation[=].value = "未读取"

CodeSystem: TrustDemoCodeMappingBasisZh
Id: TrustDemoCodeMappingBasis-zh
Title: "TrustDemoCodeMappingBasis — Chinese (zh) supplement"
Description: "Unofficial Simplified Chinese (zh) display designations for the TrustDemoCodeMappingBasis code system, drafted by an agent and not signed off by a human."
* ^experimental = true
* ^status = #draft
* ^language = #zh
* ^content = #supplement
* ^supplements = Canonical(TrustDemoCodeMappingBasis)
* #concept-map
* #concept-map ^designation[+].language = #zh
* #concept-map ^designation[=].value = "依据国家 ConceptMap"
* #clinician-confirmed
* #clinician-confirmed ^designation[+].language = #zh
* #clinician-confirmed ^designation[=].value = "经临床医生确认"
* #unmapped
* #unmapped ^designation[+].language = #zh
* #unmapped ^designation[=].value = "未映射"
* #not-imported
* #not-imported ^designation[+].language = #zh
* #not-imported ^designation[=].value = "未导入"

CodeSystem: TrustDemoVhlRefusalReasonZh
Id: TrustDemoVhlRefusalReason-zh
Title: "TrustDemoVhlRefusalReason — Chinese (zh) supplement"
Description: "Unofficial Simplified Chinese (zh) display designations for the TrustDemoVhlRefusalReason code system, drafted by an agent and not signed off by a human."
* ^experimental = true
* ^status = #draft
* ^language = #zh
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVhlRefusalReason)
* #withdrawn
* #withdrawn ^designation[+].language = #zh
* #withdrawn ^designation[=].value = "已撤回"
* #expired
* #expired ^designation[+].language = #zh
* #expired ^designation[=].value = "已过期"
* #wrong-passcode
* #wrong-passcode ^designation[+].language = #zh
* #wrong-passcode ^designation[=].value = "通行码错误"

CodeSystem: TrustDemoOnesaEpiScheduleZh
Id: TrustDemoOnesaEpiSchedule-zh
Title: "TrustDemoOnesaEpiSchedule — Chinese (zh) supplement"
Description: "Unofficial Simplified Chinese (zh) display designations for the TrustDemoOnesaEpiSchedule code system, drafted by an agent and not signed off by a human."
* ^experimental = true
* ^status = #draft
* ^language = #zh
* ^content = #supplement
* ^supplements = Canonical(TrustDemoOnesaEpiSchedule)
* #XXU-EPI-HEPB-BD
* #XXU-EPI-HEPB-BD ^designation[+].language = #zh
* #XXU-EPI-HEPB-BD ^designation[=].value = "乙型肝炎出生剂次"
* #XXU-EPI-BCG
* #XXU-EPI-BCG ^designation[+].language = #zh
* #XXU-EPI-BCG ^designation[=].value = "卡介苗（BCG）"
* #XXU-EPI-PENTA-1
* #XXU-EPI-PENTA-1 ^designation[+].language = #zh
* #XXU-EPI-PENTA-1 ^designation[=].value = "五联疫苗（DTP-HepB-Hib），第 1 剂"
* #XXU-EPI-OPV-1
* #XXU-EPI-OPV-1 ^designation[+].language = #zh
* #XXU-EPI-OPV-1 ^designation[=].value = "bOPV，第 1 剂"
* #XXU-EPI-PCV-1
* #XXU-EPI-PCV-1 ^designation[+].language = #zh
* #XXU-EPI-PCV-1 ^designation[=].value = "PCV，第 1 剂"
* #XXU-EPI-MR-1
* #XXU-EPI-MR-1 ^designation[+].language = #zh
* #XXU-EPI-MR-1 ^designation[=].value = "麻疹-风疹，第 1 剂"

CodeSystem: TrustDemoTrustDomainZh
Id: TrustDemoTrustDomain-zh
Title: "TrustDemoTrustDomain — Chinese (zh) supplement"
Description: "Unofficial Simplified Chinese (zh) display designations and definitions for the TrustDemoTrustDomain code system. Unofficial agent translation, not signed off by a human."
* ^experimental = true
* ^status = #draft
* ^language = #zh
* ^content = #supplement
* ^supplements = Canonical(TrustDemoTrustDomain)
* ^count = 2
* #DEMO-DVC
* #DEMO-DVC ^definition = "常规免疫的 DVC（HCERT），由出生诊所系统按剂次签名，并由本国诊所 EHR 验证（J1、J3）。"
* #DEMO-DVC ^designation[+].language = #zh
* #DEMO-DVC ^designation[=].value = "演示：数字疫苗接种证书"
* #DEMO-VHL
* #DEMO-VHL ^definition = "指向患者摘要的可验证健康链接（HCERT），在国家门户上创建，并在境外的服务点解析（J4.0、J4.1）。其使用条款为 TrustDemoVhlTermsOfUse。"
* #DEMO-VHL ^designation[+].language = #zh
* #DEMO-VHL ^designation[=].value = "演示：可验证健康链接"

CodeSystem: TrustDemoVhlConsentZh
Id: TrustDemoVhlConsent-zh
Title: "TrustDemoVhlConsent — Chinese (zh) supplement"
Description: "Unofficial Simplified Chinese (zh) display designations and definitions for the TrustDemoVhlConsent code system. Unofficial agent translation, not signed off by a human."
* ^experimental = true
* ^status = #draft
* ^language = #zh
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVhlConsent)
* ^count = 1
* #CONSENT-VHL-TREATMENT
* #CONSENT-VHL-TREATMENT ^definition = "持有人将 VHL 的 QR 码和通行码交给的任何人，都可以为治疗目的读取其背后的患者摘要，直至链接到期。每次访问都由签发门户记录。"
* #CONSENT-VHL-TREATMENT ^designation[+].language = #zh
* #CONSENT-VHL-TREATMENT ^designation[=].value = "同意为治疗目的读取摘要"
