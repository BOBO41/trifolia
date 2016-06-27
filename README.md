# Contents

| Name | Target Schema File | Prefix | Namespace URI |
| ---- | ------------------ | ------ | ------------- |
| CDA | cda.xsd | cda | urn:hl7-org:v3 |
| eMeasure | schemas\EMeasure.xsd | ems | urn:hl7-org:v3 |
| HQMF R2 | schemas\EMeasure.xsd | hqmf | urn:hl7-org:v3 |
| FHIR DSTU1 | fhir-all.xsd | fhir | http://hl7.org/fhir |
| FHIR Latest | fhir-all.xsd | fhir | http://hl7.org/fhir |

## Templates Type SQL

It can be time consuming creating template types for some of these schemas. Provided below is snippets of SQL (may need modification to work) to ease the process of creating the template types for a given implementation guide type.

### CDA

```sql
declare @implementationGuideTypeId int
set @implementationGuideTypeId = select top 1 id from implementationguidetype where name = 'CDA R2'

insert into templatetype (implementationGuideTypeId, name, outputOrder, rootContext, rootContextType) values
(@implementationGuideTypeId, 'document', 1, 'ClinicalDocument', 'ClinicalDocument'),
(@implementationGuideTypeId, 'section', 2, 'section', 'Section'),
(@implementationGuideTypeId, 'entry', 3, 'entry', 'Entry'),
(@implementationGuideTypeId, 'subentry', 4, 'entry', 'Entry'),
(@implementationGuideTypeId, 'unspecified', 5, '', '')
```

### eMeasure

```sql
declare @implementationGuideTypeId int
set @implementationGuideTypeId = select top 1 id from implementationguidetype where name = 'eMeasure'

insert into templatetype (implementationGuideTypeId, name, outputOrder, rootContext, rootContextType) values
(@implementationGuideTypeId, 'Document', 1, 'QualityMeasureDocument', 'QualityMeasureDocument'),
(@implementationGuideTypeId, 'Section', 2, 'section', 'Section'),
(@implementationGuideTypeId, 'Entry', 3, 'entry', 'Entry')
```

### HQMF R2

```sql
declare @implementationGuideTypeId int
set @implementationGuideTypeId = select top 1 id from implementationguidetype where name = 'HQMF R2'

insert into templatetype (implementationGuideTypeId, name, outputOrder, rootContext, rootContextType) values
(@implementationGuideTypeId, 'Document', 1, 'QualityMeasureDocument', 'QualityMeasureDocument'),
(@implementationGuideTypeId, 'Section', 2, 'component', 'Component2'),
(@implementationGuideTypeId, 'Entry', 3, 'entry', 'SourceOf')
```

### FHIR DSTU1

```sql
declare @implementationGuideTypeId int
set @implementationGuideTypeId = select top 1 id from implementationguidetype where name = 'FHIR DSTU1'

insert into templatetype (implementationGuideTypeId, name, outputOrder, rootContext, rootContextType) values
(@implementationGuideTypeId, 'AdverseReaction', 1, 'AdverseReaction', 'AdverseReaction'),
(@implementationGuideTypeId, 'Alert', 2, 'Alert', 'Alert'),
(@implementationGuideTypeId, 'AllergyIntolerance', 3, 'AllergyIntolerance', 'AllergyIntolerance'),
(@implementationGuideTypeId, 'Binary', 4, 'Binary', 'Binary'),
(@implementationGuideTypeId, 'CarePlan', 5, 'CarePlan', 'CarePlan'),
(@implementationGuideTypeId, 'Composition', 6, 'Composition', 'Composition'),
(@implementationGuideTypeId, 'ConceptMap', 7, 'ConceptMap', 'ConceptMap'),
(@implementationGuideTypeId, 'Condition', 8, 'Condition', 'Condition'),
(@implementationGuideTypeId, 'Conformance', 9, 'Conformance', 'Conformance'),
(@implementationGuideTypeId, 'Device', 10, 'Device', 'Device'),
(@implementationGuideTypeId, 'DeviceObservationReport', 11, 'DeviceObservationReport', 'DeviceObservationReport'),
(@implementationGuideTypeId, 'DiagnosticOrder', 12, 'DiagnosticOrder', 'DiagnosticOrder'),
(@implementationGuideTypeId, 'DiagnosticReport', 13, 'DiagnosticReport', 'DiagnosticReport'),
(@implementationGuideTypeId, 'DocumentReference', 14, 'DocumentReference', 'DocumentReference'),
(@implementationGuideTypeId, 'DocumentManifest', 15, 'DocumentManifest', 'DocumentManifest'),
(@implementationGuideTypeId, 'Encounter', 16, 'Encounter', 'Encounter'),
(@implementationGuideTypeId, 'FamilyHistory', 17, 'FamilyHistory', 'FamilyHistory'),
(@implementationGuideTypeId, 'Group', 18, 'Group', 'Group'),
(@implementationGuideTypeId, 'ImagingStudy', 19, 'ImagingStudy', 'ImagingStudy'),
(@implementationGuideTypeId, 'Immunization', 20, 'Immunization', 'Immunization'),
(@implementationGuideTypeId, 'ImmunizationRecommendation', 21, 'ImmunizationRecommendation', 'ImmunizationRecommendation'),
(@implementationGuideTypeId, 'List', 22, 'List', 'List'),
(@implementationGuideTypeId, 'Location', 23, 'Location', 'Location'),
(@implementationGuideTypeId, 'Media', 24, 'Media', 'Media'),
(@implementationGuideTypeId, 'Medication', 25, 'Medication', 'Medication'),
(@implementationGuideTypeId, 'MedicationAdministration', 26, 'MedicationAdministration', 'MedicationAdministration'),
(@implementationGuideTypeId, 'MedicationDispense', 27, 'MedicationDispense', 'MedicationDispense'),
(@implementationGuideTypeId, 'MedicationPrescription', 28, 'MedicationPrescription', 'MedicationPrescription'),
(@implementationGuideTypeId, 'MedicationStatement', 29, 'MedicationStatement', 'MedicationStatement'),
(@implementationGuideTypeId, 'MessageHeader', 30, 'MessageHeader', 'MessageHeader'),
(@implementationGuideTypeId, 'Observation', 31, 'Observation', 'Observation'),
(@implementationGuideTypeId, 'OperationOutcome', 32, 'OperationOutcome', 'OperationOutcome'),
(@implementationGuideTypeId, 'Order', 33, 'Order', 'Order'),
(@implementationGuideTypeId, 'OrderResponse', 34, 'OrderResponse', 'OrderResponse'),
(@implementationGuideTypeId, 'Organization', 35, 'Organization', 'Organization'),
(@implementationGuideTypeId, 'Other', 36, 'Other', 'Other'),
(@implementationGuideTypeId, 'Patient', 37, 'Patient', 'Patient'),
(@implementationGuideTypeId, 'Practitioner', 38, 'Practitioner', 'Practitioner'),
(@implementationGuideTypeId, 'Procedure', 39, 'Procedure', 'Procedure'),
(@implementationGuideTypeId, 'Profile', 40, 'Profile', 'Profile'),
(@implementationGuideTypeId, 'Provenance', 41, 'Provenance', 'Provenance'),
(@implementationGuideTypeId, 'Query', 42, 'Query', 'Query'),
(@implementationGuideTypeId, 'Questionnaire', 43, 'Questionnaire', 'Questionnaire'),
(@implementationGuideTypeId, 'RelatedPerson', 44, 'RelatedPerson', 'RelatedPerson'),
(@implementationGuideTypeId, 'SecurityEvent', 45, 'SecurityEvent', 'SecurityEvent'),
(@implementationGuideTypeId, 'Specimen', 46, 'Specimen', 'Specimen'),
(@implementationGuideTypeId, 'Substance', 47, 'Substance', 'Substance'),
(@implementationGuideTypeId, 'Supply', 48, 'Supply', 'Supply'),
(@implementationGuideTypeId, 'ValueSet', 49, 'ValueSet', 'ValueSet'),
(@implementationGuideTypeId, 'Extension', 50, 'Extension', 'Extension')
```

### FHIR Latest

```sql
declare @implementationGuideTypeId int
set @implementationGuideTypeId = select top 1 id from implementationguidetype where name = 'FHIR Latest'

insert into templatetype (implementationGuideTypeId, name, outputOrder, rootContext, rootContextType) values
(@implementationGuideTypeId, 'AllergyIntolerance', 1, 'AllergyIntolerance', 'AllergyIntolerance'),
(@implementationGuideTypeId, 'Appointment', 2, 'Appointment', 'Appointment'),
(@implementationGuideTypeId, 'AppointmentResponse', 3, 'AppointmentResponse', 'AppointmentResponse'),
(@implementationGuideTypeId, 'AuditEvent', 4, 'AuditEvent', 'AuditEvent'),
(@implementationGuideTypeId, 'Basic', 5, 'Basic', 'Basic'),
(@implementationGuideTypeId, 'Binary', 6, 'Binary', 'Binary'),
(@implementationGuideTypeId, 'BodySite', 7, 'BodySite', 'BodySite'),
(@implementationGuideTypeId, 'Bundle', 8, 'Bundle', 'Bundle'),
(@implementationGuideTypeId, 'CarePlan', 9, 'CarePlan', 'CarePlan'),
(@implementationGuideTypeId, 'Claim', 10, 'Claim', 'Claim'),
(@implementationGuideTypeId, 'ClaimResponse', 11, 'ClaimResponse', 'ClaimResponse'),
(@implementationGuideTypeId, 'ClinicalImpression', 12, 'ClinicalImpression', 'ClinicalImpression'),
(@implementationGuideTypeId, 'Communication', 13, 'Communication', 'Communication'),
(@implementationGuideTypeId, 'CommunicationRequest', 14, 'CommunicationRequest', 'CommunicationRequest'),
(@implementationGuideTypeId, 'Composition', 15, 'Composition', 'Composition'),
(@implementationGuideTypeId, 'ConceptMap', 16, 'ConceptMap', 'ConceptMap'),
(@implementationGuideTypeId, 'Condition', 17, 'Condition', 'Condition'),
(@implementationGuideTypeId, 'Conformance', 18, 'Conformance', 'Conformance'),
(@implementationGuideTypeId, 'DetectedIssue', 19, 'DetectedIssue', 'DetectedIssue'),
(@implementationGuideTypeId, 'Coverage', 20, 'Coverage', 'Coverage'),
(@implementationGuideTypeId, 'DataElement', 21, 'DataElement', 'DataElement'),
(@implementationGuideTypeId, 'Device', 22, 'Device', 'Device'),
(@implementationGuideTypeId, 'DeviceComponent', 23, 'DeviceComponent', 'DeviceComponent'),
(@implementationGuideTypeId, 'DeviceMetric', 24, 'DeviceMetric', 'DeviceMetric'),
(@implementationGuideTypeId, 'DeviceUseRequest', 25, 'DeviceUseRequest', 'DeviceUseRequest'),
(@implementationGuideTypeId, 'DeviceUseStatement', 26, 'DeviceUseStatement', 'DeviceUseStatement'),
(@implementationGuideTypeId, 'DiagnosticOrder', 27, 'DiagnosticOrder', 'DiagnosticOrder'),
(@implementationGuideTypeId, 'DiagnosticReport', 28, 'DiagnosticReport', 'DiagnosticReport'),
(@implementationGuideTypeId, 'DocumentManifest', 29, 'DocumentManifest', 'DocumentManifest'),
(@implementationGuideTypeId, 'DocumentReference', 30, 'DocumentReference', 'DocumentReference'),
(@implementationGuideTypeId, 'EligibilityRequest', 31, 'EligibilityRequest', 'EligibilityRequest'),
(@implementationGuideTypeId, 'EligibilityResponse', 32, 'EligibilityResponse', 'EligibilityResponse'),
(@implementationGuideTypeId, 'Encounter', 33, 'Encounter', 'Encounter'),
(@implementationGuideTypeId, 'EnrollmentRequest', 34, 'EnrollmentRequest', 'EnrollmentRequest'),
(@implementationGuideTypeId, 'EnrollmentResponse', 35, 'EnrollmentResponse', 'EnrollmentResponse'),
(@implementationGuideTypeId, 'EpisodeOfCare', 36, 'EpisodeOfCare', 'EpisodeOfCare'),
(@implementationGuideTypeId, 'ExplanationOfBenefit', 37, 'ExplanationOfBenefit', 'ExplanationOfBenefit'),
(@implementationGuideTypeId, 'FamilyMemberHistory', 38, 'FamilyMemberHistory', 'FamilyMemberHistory'),
(@implementationGuideTypeId, 'Flag', 39, 'Flag', 'Flag'),
(@implementationGuideTypeId, 'Goal', 40, 'Goal', 'Goal'),
(@implementationGuideTypeId, 'Group', 41, 'Group', 'Group'),
(@implementationGuideTypeId, 'HealthcareService', 42, 'HealthcareService', 'HealthcareService'),
(@implementationGuideTypeId, 'ImagingObjectSelection', 43, 'ImagingObjectSelection', 'ImagingObjectSelection'),
(@implementationGuideTypeId, 'ImagingStudy', 44, 'ImagingStudy', 'ImagingStudy'),
(@implementationGuideTypeId, 'Immunization', 45, 'Immunization', 'Immunization'),
(@implementationGuideTypeId, 'ImmunizationRecommendation', 46, 'ImmunizationRecommendation', 'ImmunizationRecommendation'),
(@implementationGuideTypeId, 'ImplementationGuide', 47, 'ImplementationGuide', 'ImplementationGuide'),
(@implementationGuideTypeId, 'List', 48, 'List', 'List'),
(@implementationGuideTypeId, 'Location', 49, 'Location', 'Location'),
(@implementationGuideTypeId, 'Media', 50, 'Media', 'Media'),
(@implementationGuideTypeId, 'Medication', 51, 'Medication', 'Medication'),
(@implementationGuideTypeId, 'MedicationAdministration', 52, 'MedicationAdministration', 'MedicationAdministration'),
(@implementationGuideTypeId, 'MedicationDispense', 53, 'MedicationDispense', 'MedicationDispense'),
(@implementationGuideTypeId, 'MedicationOrder', 54, 'MedicationOrder', 'MedicationOrder'),
(@implementationGuideTypeId, 'MedicationStatement', 55, 'MedicationStatement', 'MedicationStatement'),
(@implementationGuideTypeId, 'MessageHeader', 56, 'MessageHeader', 'MessageHeader'),
(@implementationGuideTypeId, 'NamingSystem', 57, 'NamingSystem', 'NamingSystem'),
(@implementationGuideTypeId, 'NutritionOrder', 58, 'NutritionOrder', 'NutritionOrder'),
(@implementationGuideTypeId, 'Observation', 59, 'Observation', 'Observation'),
(@implementationGuideTypeId, 'OperationDefinition', 60, 'OperationDefinition', 'OperationDefinition'),
(@implementationGuideTypeId, 'OperationOutcome', 61, 'OperationOutcome', 'OperationOutcome'),
(@implementationGuideTypeId, 'Order', 62, 'Order', 'Order'),
(@implementationGuideTypeId, 'OrderResponse', 63, 'OrderResponse', 'OrderResponse'),
(@implementationGuideTypeId, 'Organization', 64, 'Organization', 'Organization'),
(@implementationGuideTypeId, 'Parameters', 65, 'Parameters', 'Parameters'),
(@implementationGuideTypeId, 'Patient', 66, 'Patient', 'Patient'),
(@implementationGuideTypeId, 'PaymentNotice', 67, 'PaymentNotice', 'PaymentNotice'),
(@implementationGuideTypeId, 'PaymentReconciliation', 68, 'PaymentReconciliation', 'PaymentReconciliation'),
(@implementationGuideTypeId, 'Person', 69, 'Person', 'Person'),
(@implementationGuideTypeId, 'Practitioner', 70, 'Practitioner', 'Practitioner'),
(@implementationGuideTypeId, 'Procedure', 71, 'Procedure', 'Procedure'),
(@implementationGuideTypeId, 'ProcessRequest', 72, 'ProcessRequest', 'ProcessRequest'),
(@implementationGuideTypeId, 'ProcessResponse', 73, 'ProcessResponse', 'ProcessResponse'),
(@implementationGuideTypeId, 'ProcedureRequest', 74, 'ProcedureRequest', 'ProcedureRequest'),
(@implementationGuideTypeId, 'Provenance', 75, 'Provenance', 'Provenance'),
(@implementationGuideTypeId, 'Questionnaire', 76, 'Questionnaire', 'Questionnaire'),
(@implementationGuideTypeId, 'QuestionnaireResponse', 77, 'QuestionnaireResponse', 'QuestionnaireResponse'),
(@implementationGuideTypeId, 'ReferralRequest', 78, 'ReferralRequest', 'ReferralRequest'),
(@implementationGuideTypeId, 'RelatedPerson', 79, 'RelatedPerson', 'RelatedPerson'),
(@implementationGuideTypeId, 'RiskAssessment', 80, 'RiskAssessment', 'RiskAssessment'),
(@implementationGuideTypeId, 'Schedule', 81, 'Schedule', 'Schedule'),
(@implementationGuideTypeId, 'SearchParameter', 82, 'SearchParameter', 'SearchParameter'),
(@implementationGuideTypeId, 'Slot', 83, 'Slot', 'Slot'),
(@implementationGuideTypeId, 'Specimen', 84, 'Specimen', 'Specimen'),
(@implementationGuideTypeId, 'StructureDefinition', 85, 'StructureDefinition', 'StructureDefinition'),
(@implementationGuideTypeId, 'Subscription', 86, 'Subscription', 'Subscription'),
(@implementationGuideTypeId, 'Substance', 87, 'Substance', 'Substance'),
(@implementationGuideTypeId, 'SupplyRequest', 88, 'SupplyRequest', 'SupplyRequest'),
(@implementationGuideTypeId, 'SupplyDelivery', 89, 'SupplyDelivery', 'SupplyDelivery'),
(@implementationGuideTypeId, 'TestScript', 90, 'TestScript', 'TestScript'),
(@implementationGuideTypeId, 'ValueSet', 91, 'ValueSet', 'ValueSet'),
(@implementationGuideTypeId, 'VisionPrescription', 92, 'VisionPrescription', 'VisionPrescription'),
(@implementationGuideTypeId, 'Extension', 93, 'Extension', 'Extension'),
(@implementationGuideTypeId, 'Contract', 94, 'Contract', 'Contract')
```
