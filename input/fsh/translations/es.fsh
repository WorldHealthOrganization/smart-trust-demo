// Spanish (es) CodeSystem supplements for this IG's own CodeSystems.
// Agent translation, UNOFFICIAL and unreviewed: no human sign-off. One file per locale;
// the CodeSystems themselves are not edited. Displays and definitions mirror translations/es/.

CodeSystem: TrustDemoOnesaEpiScheduleEs
Id: TrustDemoOnesaEpiSchedule-es
Title: "Códigos de antígeno y dosis del calendario nacional (ilustrativos, Onesa)"
Description: "Suplemento en español (es) de TrustDemoOnesaEpiSchedule: designaciones de cada concepto. Traducción no oficial generada por un agente, sin revisión humana."
* ^status = #draft
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoOnesaEpiSchedule)
* ^language = #es
* ^caseSensitive = true
* #XXU-EPI-HEPB-BD "Hepatitis B, dosis al nacer"
  * ^designation[0].language = #es
  * ^designation[0].value = "Hepatitis B, dosis al nacer"
* #XXU-EPI-BCG "BCG"
  * ^designation[0].language = #es
  * ^designation[0].value = "BCG"
* #XXU-EPI-PENTA-1 "Pentavalente (DTP-HepB-Hib), dosis 1"
  * ^designation[0].language = #es
  * ^designation[0].value = "Pentavalente (DTP-HepB-Hib), dosis 1"
* #XXU-EPI-OPV-1 "bOPV, dosis 1"
  * ^designation[0].language = #es
  * ^designation[0].value = "bOPV, dosis 1"
* #XXU-EPI-PCV-1 "PCV, dosis 1"
  * ^designation[0].language = #es
  * ^designation[0].value = "PCV, dosis 1"
* #XXU-EPI-MR-1 "Sarampión y rubéola, dosis 1"
  * ^designation[0].language = #es
  * ^designation[0].value = "Sarampión y rubéola, dosis 1"

CodeSystem: TrustDemoVerificationResultEs
Id: TrustDemoVerificationResult-es
Title: "Resultado de la lectura de un DVC"
Description: "Suplemento en español (es) de TrustDemoVerificationResult: designaciones de cada concepto. Traducción no oficial generada por un agente, sin revisión humana."
* ^status = #draft
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVerificationResult)
* ^language = #es
* ^caseSensitive = true
* #verified "Verificado" "Se superaron todos los pasos de la verificación (STT-VER-001)."
  * ^designation[0].language = #es
  * ^designation[0].value = "Verificado"
* #failed "Fallido" "La verificación se detuvo en un paso, por un motivo del conjunto cerrado de STT-VER-008."
  * ^designation[0].language = #es
  * ^designation[0].value = "Fallido"
* #unverified "Leído, no verificado" "La carga útil se leyó con read-unverified, sin consulta de confianza ni comprobación de firma (STT-VER-011)."
  * ^designation[0].language = #es
  * ^designation[0].value = "Leído, no verificado"

CodeSystem: TrustDemoVerificationStepEs
Id: TrustDemoVerificationStep-es
Title: "Pasos de verificación"
Description: "Suplemento en español (es) de TrustDemoVerificationStep: designaciones de cada concepto. Traducción no oficial generada por un agente, sin revisión humana."
* ^status = #draft
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVerificationStep)
* ^language = #es
* ^caseSensitive = true
* #prefix "Prefijo" "El prefijo de contexto HC1: y su versión."
  * ^designation[0].language = #es
  * ^designation[0].value = "Prefijo"
* #base45 "Base45" "Decodificación Base45 del texto del QR."
  * ^designation[0].language = #es
  * ^designation[0].value = "Base45"
* #inflate "Descompresión" "Descompresión ZLIB, dentro de los límites."
  * ^designation[0].language = #es
  * ^designation[0].value = "Descompresión"
* #cose "COSE" "Análisis de la estructura COSE_Sign1."
  * ^designation[0].language = #es
  * ^designation[0].value = "COSE"
* #header "Encabezado" "Los encabezados protegidos y no protegidos."
  * ^designation[0].language = #es
  * ^designation[0].value = "Encabezado"
* #trust-lookup "Consulta de confianza" "Búsqueda del certificado del firmante por kid en la lista de confianza."
  * ^designation[0].language = #es
  * ^designation[0].value = "Consulta de confianza"
* #signature "Firma" "Comprobación de la firma con la clave del firmante."
  * ^designation[0].language = #es
  * ^designation[0].value = "Firma"
* #key-usage "Uso de la clave" "Comprobación de que el certificado del firmante puede firmar este tipo de certificado."
  * ^designation[0].language = #es
  * ^designation[0].value = "Uso de la clave"
* #cwt "CWT" "Lectura del conjunto de declaraciones (claims) CWT."
  * ^designation[0].language = #es
  * ^designation[0].value = "CWT"
* #time "Hora" "Comprobación de la emisión y la caducidad con el reloj del verificador."
  * ^designation[0].language = #es
  * ^designation[0].value = "Hora"
* #hcert "HCERT" "Búsqueda de la declaración hcert y de su subdeclaración."
  * ^designation[0].language = #es
  * ^designation[0].value = "HCERT"
* #payload "Carga útil" "Lectura de la carga útil según su modelo lógico."
  * ^designation[0].language = #es
  * ^designation[0].value = "Carga útil"

CodeSystem: TrustDemoVerificationFailureReasonEs
Id: TrustDemoVerificationFailureReason-es
Title: "Motivos de fallo de la verificación"
Description: "Suplemento en español (es) de TrustDemoVerificationFailureReason: designaciones de cada concepto. Traducción no oficial generada por un agente, sin revisión humana."
* ^status = #draft
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVerificationFailureReason)
* ^language = #es
* ^caseSensitive = true
* #BadPrefix "Prefijo incorrecto" "El texto no empieza con el prefijo HC1:."
  * ^designation[0].language = #es
  * ^designation[0].value = "Prefijo incorrecto"
* #UnsupportedContextVersion "Versión de contexto no admitida" "El identificador de contexto indica una versión que el verificador no admite."
  * ^designation[0].language = #es
  * ^designation[0].value = "Versión de contexto no admitida"
* #Base45Invalid "Base45 no válido" "El texto no es Base45 válido."
  * ^designation[0].language = #es
  * ^designation[0].value = "Base45 no válido"
* #InflateFailed "Descompresión fallida" "Los bytes comprimidos no se descomprimen."
  * ^designation[0].language = #es
  * ^designation[0].value = "Descompresión fallida"
* #LimitExceeded "Límite superado" "Se superó un límite de decodificación (tamaño o profundidad)."
  * ^designation[0].language = #es
  * ^designation[0].value = "Límite superado"
* #CoseMalformed "COSE mal formado" "Los bytes no son un COSE_Sign1 bien formado."
  * ^designation[0].language = #es
  * ^designation[0].value = "COSE mal formado"
* #HeaderInvalid "Encabezado no válido" "Falta un encabezado COSE o no es como se requiere."
  * ^designation[0].language = #es
  * ^designation[0].value = "Encabezado no válido"
* #UnsupportedAlgorithm "Algoritmo no admitido" "El algoritmo de firma no es uno que el verificador acepte."
  * ^designation[0].language = #es
  * ^designation[0].value = "Algoritmo no admitido"
* #KidNotFound "Clave no encontrada" "Ningún certificado de la copia de la lista de confianza del verificador tiene el kid (STT-VER-006)."
  * ^designation[0].language = #es
  * ^designation[0].value = "Clave no encontrada"
* #SignatureInvalid "Firma no válida" "La firma no se verifica con ningún certificado que tenga el kid."
  * ^designation[0].language = #es
  * ^designation[0].value = "Firma no válida"
* #KeyUsageMismatch "Uso de la clave no coincidente" "El certificado del firmante no puede firmar este tipo de certificado."
  * ^designation[0].language = #es
  * ^designation[0].value = "Uso de la clave no coincidente"
* #Expired "Caducado" "La fecha de caducidad del certificado ya pasó."
  * ^designation[0].language = #es
  * ^designation[0].value = "Caducado"
* #NotYetValid "Aún no válido" "La hora de emisión del certificado está en el futuro."
  * ^designation[0].language = #es
  * ^designation[0].value = "Aún no válido"
* #HcertMissing "Falta HCERT" "El conjunto de declaraciones no tiene declaración hcert."
  * ^designation[0].language = #es
  * ^designation[0].value = "Falta HCERT"
* #MultipleSubclaims "Varias subdeclaraciones" "La declaración hcert tiene más subdeclaraciones de las que el verificador acepta."
  * ^designation[0].language = #es
  * ^designation[0].value = "Varias subdeclaraciones"
* #PayloadInvalid "Carga útil no válida" "La carga útil no se ajusta a su modelo lógico."
  * ^designation[0].language = #es
  * ^designation[0].value = "Carga útil no válida"

CodeSystem: TrustDemoDvcOutcomeEs
Id: TrustDemoDvcOutcome-es
Title: "En qué se convierte en el registro un DVC escaneado"
Description: "Suplemento en español (es) de TrustDemoDvcOutcome: designaciones de cada concepto. Traducción no oficial generada por un agente, sin revisión humana."
* ^status = #draft
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoDvcOutcome)
* ^language = #es
* ^caseSensitive = true
* #verified "Verificado" "Registrado a partir de su fuente primaria, con la procedencia de la verificación."
  * ^designation[0].language = #es
  * ^designation[0].value = "Verificado"
* #reported-unverified "Notificado, no verificado" "Se conserva tal como lo notificó la familia (primarySource false); el calendario no lo cuenta."
  * ^designation[0].language = #es
  * ^designation[0].value = "Notificado, no verificado"
* #rejected "Rechazado" "El certificado no es prueba de una dosis; se registran el paso y el motivo."
  * ^designation[0].language = #es
  * ^designation[0].value = "Rechazado"
* #not-read "No leído" "No se pudo leer nada del QR; la tarjeta se trata como papel."
  * ^designation[0].language = #es
  * ^designation[0].value = "No leído"

CodeSystem: TrustDemoCodeMappingBasisEs
Id: TrustDemoCodeMappingBasis-es
Title: "Cómo obtuvo una dosis importada su código del calendario nacional"
Description: "Suplemento en español (es) de TrustDemoCodeMappingBasis: designaciones de cada concepto. Traducción no oficial generada por un agente, sin revisión humana."
* ^status = #draft
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoCodeMappingBasis)
* ^language = #es
* ^caseSensitive = true
* #concept-map "Por el ConceptMap nacional" "El código de producto del emisor tiene un código equivalente del calendario en la tabla nacional de correspondencias."
  * ^designation[0].language = #es
  * ^designation[0].value = "Por el ConceptMap nacional"
* #clinician-confirmed "Confirmado por el profesional clínico" "La tabla no tenía ninguna entrada; el profesional clínico confirmó la equivalencia, y la decisión se añade a la tabla."
  * ^designation[0].language = #es
  * ^designation[0].value = "Confirmado por el profesional clínico"
* #unmapped "Sin correspondencia" "No se conoce ninguna equivalencia; el código del emisor se conserva tal cual y se muestra sin correspondencia."
  * ^designation[0].language = #es
  * ^designation[0].value = "Sin correspondencia"
* #not-imported "No importado" "La dosis no se verificó, así que no se importó ni se le asignó correspondencia."
  * ^designation[0].language = #es
  * ^designation[0].value = "No importado"

CodeSystem: TrustDemoVhlRefusalReasonEs
Id: TrustDemoVhlRefusalReason-es
Title: "Por qué un enlace compartido no entregó nada"
Description: "Suplemento en español (es) de TrustDemoVhlRefusalReason: designaciones de cada concepto. Traducción no oficial generada por un agente, sin revisión humana."
* ^status = #draft
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVhlRefusalReason)
* ^language = #es
* ^caseSensitive = true
* #withdrawn "Retirado" "El titular retiró el enlace antes de que caducara."
  * ^designation[0].language = #es
  * ^designation[0].value = "Retirado"
* #expired "Caducado" "La solicitud llegó después de la fecha de caducidad que eligió el titular."
  * ^designation[0].language = #es
  * ^designation[0].value = "Caducado"
* #wrong-passcode "Código de acceso incorrecto" "El código de acceso indicado no coincide con el que fijó el titular."
  * ^designation[0].language = #es
  * ^designation[0].value = "Código de acceso incorrecto"

CodeSystem: TrustDemoTrustDomainEs
Id: TrustDemoTrustDomain-es
Title: "Ámbitos de confianza de los recorridos (ilustrativos)"
Description: "Suplemento en español (es) de TrustDemoTrustDomain: designaciones de cada concepto. Traducción no oficial generada por un agente, sin revisión humana."
* ^status = #draft
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoTrustDomain)
* ^language = #es
* ^caseSensitive = true
* #DEMO-DVC "Demo: certificado digital de vacunación" "Certificados digitales de vacunación (HCERT) de inmunización sistemática, firmados dosis a dosis por el sistema de una clínica de nacimiento y verificados por la historia clínica electrónica de una clínica del país de residencia (J1, J3)."
  * ^designation[0].language = #es
  * ^designation[0].value = "Demo: certificado digital de vacunación"
* #DEMO-VHL "Demo: enlace sanitario verificable" "Enlaces sanitarios verificables (HCERT) a un resumen del paciente, creados en el portal nacional y resueltos en un punto de atención en el extranjero (J4.0, J4.1). Sus condiciones de uso son TrustDemoVhlTermsOfUse."
  * ^designation[0].language = #es
  * ^designation[0].value = "Demo: enlace sanitario verificable"

CodeSystem: TrustDemoVhlConsentEs
Id: TrustDemoVhlConsent-es
Title: "Consentimientos del ámbito de confianza VHL de la demostración (ilustrativos)"
Description: "Suplemento en español (es) de TrustDemoVhlConsent: designaciones de cada concepto. Traducción no oficial generada por un agente, sin revisión humana."
* ^status = #draft
* ^experimental = true
* ^content = #supplement
* ^supplements = Canonical(TrustDemoVhlConsent)
* ^language = #es
* ^caseSensitive = true
* #CONSENT-VHL-TREATMENT "Consentimiento para leer el resumen con fines de tratamiento" "Cualquier persona a quien el titular entregue el código QR y el código de acceso del VHL puede leer el resumen del paciente al que remite, con fines de tratamiento, hasta que caduque el enlace. El portal emisor registra cada acceso."
  * ^designation[0].language = #es
  * ^designation[0].value = "Consentimiento para leer el resumen con fines de tratamiento"
