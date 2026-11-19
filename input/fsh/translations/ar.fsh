// Arabic (ar) CodeSystem supplements for this IG's own CodeSystems.
// Agent translation, UNOFFICIAL and unreviewed: no human sign-off. One file per locale;
// the CodeSystems themselves are not edited. Displays and definitions mirror translations/ar/.

CodeSystem: TrustDemoOnesaEpiScheduleAr
Id: TrustDemoOnesaEpiSchedule-ar
Title: "رموز المستضدات والجرعات في جدول التطعيم الوطني (توضيحية، Onesa)"
Description: "ملحق باللغة العربية (ar) لنظام الرموز TrustDemoOnesaEpiSchedule: تسميات كل مفهوم. ترجمة غير رسمية أعدّها وكيل آلي، دون مراجعة بشرية."
* ^status = #draft
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoOnesaEpiSchedule)
* ^language = #ar
* ^caseSensitive = true
* #XXU-EPI-HEPB-BD "جرعة الولادة من لقاح التهاب الكبد B"
  * ^designation[0].language = #ar
  * ^designation[0].value = "جرعة الولادة من لقاح التهاب الكبد B"
* #XXU-EPI-BCG "BCG"
  * ^designation[0].language = #ar
  * ^designation[0].value = "BCG"
* #XXU-EPI-PENTA-1 "خماسي التكافؤ (DTP-HepB-Hib)، الجرعة 1"
  * ^designation[0].language = #ar
  * ^designation[0].value = "خماسي التكافؤ (DTP-HepB-Hib)، الجرعة 1"
* #XXU-EPI-OPV-1 "bOPV، الجرعة 1"
  * ^designation[0].language = #ar
  * ^designation[0].value = "bOPV، الجرعة 1"
* #XXU-EPI-PCV-1 "PCV، الجرعة 1"
  * ^designation[0].language = #ar
  * ^designation[0].value = "PCV، الجرعة 1"
* #XXU-EPI-MR-1 "الحصبة والحصبة الألمانية، الجرعة 1"
  * ^designation[0].language = #ar
  * ^designation[0].value = "الحصبة والحصبة الألمانية، الجرعة 1"

CodeSystem: TrustDemoVerificationResultAr
Id: TrustDemoVerificationResult-ar
Title: "نتيجة قراءة DVC"
Description: "ملحق باللغة العربية (ar) لنظام الرموز TrustDemoVerificationResult: تسميات كل مفهوم. ترجمة غير رسمية أعدّها وكيل آلي، دون مراجعة بشرية."
* ^status = #draft
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVerificationResult)
* ^language = #ar
* ^caseSensitive = true
* #verified "مُتحقَّق منها" "اجتازت جميع خطوات التحقق بنجاح (STT-VER-001)."
  * ^designation[0].language = #ar
  * ^designation[0].value = "مُتحقَّق منها"
* #failed "فشل" "توقف التحقق عند خطوة ما، لسبب من المجموعة المغلقة في STT-VER-008."
  * ^designation[0].language = #ar
  * ^designation[0].value = "فشل"
* #unverified "مقروءة، غير مُتحقَّق منها" "قُرئت الحمولة بواسطة read-unverified، دون بحث في قائمة الثقة أو تحقق من التوقيع (STT-VER-011)."
  * ^designation[0].language = #ar
  * ^designation[0].value = "مقروءة، غير مُتحقَّق منها"

CodeSystem: TrustDemoVerificationStepAr
Id: TrustDemoVerificationStep-ar
Title: "خطوات التحقق"
Description: "ملحق باللغة العربية (ar) لنظام الرموز TrustDemoVerificationStep: تسميات كل مفهوم. ترجمة غير رسمية أعدّها وكيل آلي، دون مراجعة بشرية."
* ^status = #draft
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVerificationStep)
* ^language = #ar
* ^caseSensitive = true
* #prefix "البادئة" "بادئة السياق HC1: والإصدار."
  * ^designation[0].language = #ar
  * ^designation[0].value = "البادئة"
* #base45 "Base45" "فك ترميز Base45 لنص رمز QR."
  * ^designation[0].language = #ar
  * ^designation[0].value = "Base45"
* #inflate "فك الضغط" "فك ضغط ZLIB، ضمن الحدود."
  * ^designation[0].language = #ar
  * ^designation[0].value = "فك الضغط"
* #cose "COSE" "تحليل بنية COSE_Sign1."
  * ^designation[0].language = #ar
  * ^designation[0].value = "COSE"
* #header "الترويسة" "الترويستان المحمية وغير المحمية."
  * ^designation[0].language = #ar
  * ^designation[0].value = "الترويسة"
* #trust-lookup "البحث في قائمة الثقة" "العثور على شهادة الموقِّع بواسطة kid في قائمة الثقة."
  * ^designation[0].language = #ar
  * ^designation[0].value = "البحث في قائمة الثقة"
* #signature "التوقيع" "التحقق من التوقيع باستخدام مفتاح الموقِّع."
  * ^designation[0].language = #ar
  * ^designation[0].value = "التوقيع"
* #key-usage "استخدام المفتاح" "التحقق من أن شهادة الموقِّع مخوَّلة بتوقيع هذا النوع من الشهادات."
  * ^designation[0].language = #ar
  * ^designation[0].value = "استخدام المفتاح"
* #cwt "CWT" "قراءة مجموعة مطالبات CWT."
  * ^designation[0].language = #ar
  * ^designation[0].value = "CWT"
* #time "الوقت" "التحقق من وقت الإصدار وتاريخ انتهاء الصلاحية مقابل ساعة الجهة المُتحقِّقة."
  * ^designation[0].language = #ar
  * ^designation[0].value = "الوقت"
* #hcert "HCERT" "العثور على مطالبة hcert ومطالبتها الفرعية."
  * ^designation[0].language = #ar
  * ^designation[0].value = "HCERT"
* #payload "الحمولة" "قراءة الحمولة مقابل نموذجها المنطقي."
  * ^designation[0].language = #ar
  * ^designation[0].value = "الحمولة"

CodeSystem: TrustDemoVerificationFailureReasonAr
Id: TrustDemoVerificationFailureReason-ar
Title: "أسباب فشل التحقق"
Description: "ملحق باللغة العربية (ar) لنظام الرموز TrustDemoVerificationFailureReason: تسميات كل مفهوم. ترجمة غير رسمية أعدّها وكيل آلي، دون مراجعة بشرية."
* ^status = #draft
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVerificationFailureReason)
* ^language = #ar
* ^caseSensitive = true
* #BadPrefix "بادئة غير صالحة" "لا يبدأ النص بالبادئة HC1:."
  * ^designation[0].language = #ar
  * ^designation[0].value = "بادئة غير صالحة"
* #UnsupportedContextVersion "إصدار سياق غير مدعوم" "يشير معرِّف السياق إلى إصدار لا تدعمه الجهة المُتحقِّقة."
  * ^designation[0].language = #ar
  * ^designation[0].value = "إصدار سياق غير مدعوم"
* #Base45Invalid "Base45 غير صالح" "النص ليس Base45 صالحًا."
  * ^designation[0].language = #ar
  * ^designation[0].value = "Base45 غير صالح"
* #InflateFailed "فشل فك الضغط" "تعذّر فك ضغط البايتات المضغوطة."
  * ^designation[0].language = #ar
  * ^designation[0].value = "فشل فك الضغط"
* #LimitExceeded "تم تجاوز الحد" "تم تجاوز أحد حدود فك الترميز (الحجم أو العمق)."
  * ^designation[0].language = #ar
  * ^designation[0].value = "تم تجاوز الحد"
* #CoseMalformed "COSE مشوَّه" "البايتات ليست بنية COSE_Sign1 سليمة التكوين."
  * ^designation[0].language = #ar
  * ^designation[0].value = "COSE مشوَّه"
* #HeaderInvalid "ترويسة غير صالحة" "ترويسة COSE مفقودة أو غير مطابقة للمطلوب."
  * ^designation[0].language = #ar
  * ^designation[0].value = "ترويسة غير صالحة"
* #UnsupportedAlgorithm "خوارزمية غير مدعومة" "خوارزمية التوقيع ليست من الخوارزميات التي تقبلها الجهة المُتحقِّقة."
  * ^designation[0].language = #ar
  * ^designation[0].value = "خوارزمية غير مدعومة"
* #KidNotFound "المفتاح غير موجود" "لا توجد في نسخة الجهة المُتحقِّقة من قائمة الثقة أي شهادة تحمل هذا الـ kid (STT-VER-006)."
  * ^designation[0].language = #ar
  * ^designation[0].value = "المفتاح غير موجود"
* #SignatureInvalid "توقيع غير صالح" "لا يمكن التحقق من التوقيع باستخدام أي شهادة تحمل هذا الـ kid."
  * ^designation[0].language = #ar
  * ^designation[0].value = "توقيع غير صالح"
* #KeyUsageMismatch "عدم تطابق استخدام المفتاح" "شهادة الموقِّع غير مخوَّلة بتوقيع هذا النوع من الشهادات."
  * ^designation[0].language = #ar
  * ^designation[0].value = "عدم تطابق استخدام المفتاح"
* #Expired "منتهية الصلاحية" "انقضى تاريخ انتهاء صلاحية الشهادة."
  * ^designation[0].language = #ar
  * ^designation[0].value = "منتهية الصلاحية"
* #NotYetValid "لم تصبح صالحة بعد" "وقت إصدار الشهادة يقع في المستقبل."
  * ^designation[0].language = #ar
  * ^designation[0].value = "لم تصبح صالحة بعد"
* #HcertMissing "HCERT مفقودة" "لا تحتوي مجموعة المطالبات على مطالبة hcert."
  * ^designation[0].language = #ar
  * ^designation[0].value = "HCERT مفقودة"
* #MultipleSubclaims "مطالبات فرعية متعددة" "تحتوي مطالبة hcert على مطالبات فرعية أكثر مما تقبله الجهة المُتحقِّقة."
  * ^designation[0].language = #ar
  * ^designation[0].value = "مطالبات فرعية متعددة"
* #PayloadInvalid "حمولة غير صالحة" "الحمولة لا تتوافق مع نموذجها المنطقي."
  * ^designation[0].language = #ar
  * ^designation[0].value = "حمولة غير صالحة"

CodeSystem: TrustDemoDvcOutcomeAr
Id: TrustDemoDvcOutcome-ar
Title: "ما تصبح عليه DVC الممسوحة ضوئيًا في السجل"
Description: "ملحق باللغة العربية (ar) لنظام الرموز TrustDemoDvcOutcome: تسميات كل مفهوم. ترجمة غير رسمية أعدّها وكيل آلي، دون مراجعة بشرية."
* ^status = #draft
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoDvcOutcome)
* ^language = #ar
* ^caseSensitive = true
* #verified "مُتحقَّق منها" "مُسجَّلة من مصدرها الأولي، مع مصدر منشأ التحقق."
  * ^designation[0].language = #ar
  * ^designation[0].value = "مُتحقَّق منها"
* #reported-unverified "مُبلَّغ عنه، غير متحقَّق منه" "محفوظة كما أبلغت عنها الأسرة (primarySource false)؛ لا يحتسبها جدول التطعيم."
  * ^designation[0].language = #ar
  * ^designation[0].value = "مُبلَّغ عنه، غير متحقَّق منه"
* #rejected "مرفوضة" "الشهادة ليست دليلًا على جرعة؛ تُسجَّل الخطوة والسبب."
  * ^designation[0].language = #ar
  * ^designation[0].value = "مرفوضة"
* #not-read "لم تُقرأ" "تعذّرت قراءة أي شيء من رمز QR؛ تُعامَل البطاقة على أنها ورقية."
  * ^designation[0].language = #ar
  * ^designation[0].value = "لم تُقرأ"

CodeSystem: TrustDemoCodeMappingBasisAr
Id: TrustDemoCodeMappingBasis-ar
Title: "كيف حصلت جرعة مستوردة على رمزها في جدول التطعيم الوطني"
Description: "ملحق باللغة العربية (ar) لنظام الرموز TrustDemoCodeMappingBasis: تسميات كل مفهوم. ترجمة غير رسمية أعدّها وكيل آلي، دون مراجعة بشرية."
* ^status = #draft
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoCodeMappingBasis)
* ^language = #ar
* ^caseSensitive = true
* #concept-map "بواسطة ConceptMap الوطني" "لرمز المنتج لدى الجهة المُصدِرة رمز مكافئ في جدول التطعيم ضمن الخريطة الوطنية."
  * ^designation[0].language = #ar
  * ^designation[0].value = "بواسطة ConceptMap الوطني"
* #clinician-confirmed "مؤكَّد من الممارس السريري" "لم يكن في الخريطة أي مُدخل؛ أكّد الممارس السريري المكافئ، وأُضيف القرار إلى الخريطة."
  * ^designation[0].language = #ar
  * ^designation[0].value = "مؤكَّد من الممارس السريري"
* #unmapped "غير مُطابَق" "لا يُعرف أي مكافئ؛ يُحفَظ رمز الجهة المُصدِرة كما هو ويُعرَض على أنه غير مُطابَق."
  * ^designation[0].language = #ar
  * ^designation[0].value = "غير مُطابَق"
* #not-imported "غير مستوردة" "لم يُتحقَّق من الجرعة، لذا لم تُستورَد ولم تُطابَق."
  * ^designation[0].language = #ar
  * ^designation[0].value = "غير مستوردة"

CodeSystem: TrustDemoVhlRefusalReasonAr
Id: TrustDemoVhlRefusalReason-ar
Title: "لماذا لم يُتح الرابط المُشارَك أي شيء"
Description: "ملحق باللغة العربية (ar) لنظام الرموز TrustDemoVhlRefusalReason: تسميات كل مفهوم. ترجمة غير رسمية أعدّها وكيل آلي، دون مراجعة بشرية."
* ^status = #draft
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVhlRefusalReason)
* ^language = #ar
* ^caseSensitive = true
* #withdrawn "مسحوب" "سحب الحامل الرابط قبل انتهاء صلاحيته."
  * ^designation[0].language = #ar
  * ^designation[0].value = "مسحوب"
* #expired "منتهية الصلاحية" "ورد الطلب بعد تاريخ انتهاء الصلاحية الذي اختاره الحامل."
  * ^designation[0].language = #ar
  * ^designation[0].value = "منتهية الصلاحية"
* #wrong-passcode "رمز مرور خاطئ" "رمز المرور المُقدَّم لا يطابق الرمز الذي حدّده الحامل."
  * ^designation[0].language = #ar
  * ^designation[0].value = "رمز مرور خاطئ"

CodeSystem: TrustDemoTrustDomainAr
Id: TrustDemoTrustDomain-ar
Title: "نطاقات الثقة في الرحلات (توضيحية)"
Description: "ملحق باللغة العربية (ar) لنظام الرموز TrustDemoTrustDomain: تسميات كل مفهوم. ترجمة غير رسمية أعدّها وكيل آلي، دون مراجعة بشرية. Unofficial agent translation."
* ^status = #draft
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoTrustDomain)
* ^language = #ar
* ^caseSensitive = true
* ^count = 2
* #DEMO-DVC "عرض توضيحي: شهادة التطعيم الرقمية" "شهادات DVC للتمنيع الروتيني (HCERT) يوقّعها نظام عيادة الولادة لكل جرعة، ويتحقق منها السجل الصحي الإلكتروني (EHR) في عيادة البلد الأم (J1، J3)."
  * ^designation[0].language = #ar
  * ^designation[0].value = "عرض توضيحي: شهادة التطعيم الرقمية"
* #DEMO-VHL "عرض توضيحي: الرابط الصحي القابل للتحقق" "روابط صحية قابلة للتحقق (HCERT) إلى ملخص المريض، تُنشأ على البوابة الوطنية وتُحَلّ في نقطة تقديم الرعاية في الخارج (J4.0، J4.1). وشروط استخدامه هي TrustDemoVhlTermsOfUse."
  * ^designation[0].language = #ar
  * ^designation[0].value = "عرض توضيحي: الرابط الصحي القابل للتحقق"

CodeSystem: TrustDemoVhlConsentAr
Id: TrustDemoVhlConsent-ar
Title: "موافقات نطاق الثقة VHL في العرض التوضيحي (توضيحية)"
Description: "ملحق باللغة العربية (ar) لنظام الرموز TrustDemoVhlConsent: تسميات كل مفهوم. ترجمة غير رسمية أعدّها وكيل آلي، دون مراجعة بشرية. Unofficial agent translation."
* ^status = #draft
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVhlConsent)
* ^language = #ar
* ^caseSensitive = true
* ^count = 1
* #CONSENT-VHL-TREATMENT "الموافقة على قراءة الملخص لأغراض العلاج" "يجوز لأي شخص يعطيه الحامل رمز QR الخاص بالرابط VHL ورمز المرور الخاص به أن يقرأ ملخص المريض الذي يقف خلفه، لأغراض العلاج، حتى انتهاء صلاحية الرابط. وتسجّل البوابة المُصدِرة كل وصول."
  * ^designation[0].language = #ar
  * ^designation[0].value = "الموافقة على قراءة الملخص لأغراض العلاج"
