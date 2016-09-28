
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'implementationguide' and COLUMN_NAME = 'identifier')
BEGIN
	ALTER TABLE dbo.implementationguide ADD identifier varchar(255) NULL
	
	/* TODO: Populate implementation guide identifiers with values

	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.15' WHERE id = 13
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.1' WHERE id = 14
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.5' WHERE id = 15
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.17' WHERE id = 23
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.3.117.1.5.3' WHERE id = 24
	update implementationguide set identifier='urn:oid:TEMP-MMG-' WHERE id = 59
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.24' WHERE id = 67
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.12' WHERE id = 68
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.22' WHERE id = 71
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.25' WHERE id = 73
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.27' WHERE id = 77
	update implementationguide set identifier='urn:oid:1.3.6.1.4.1.19376.1.5.3.1' WHERE id = 81
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.5' WHERE id = 83
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.5' WHERE id = 84
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.5.12' WHERE id = 84
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.3.560.1' WHERE id = 85
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.5' WHERE id = 86
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.28' WHERE id = 87
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.30' WHERE id = 88
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.30.3' WHERE id = 89
	update implementationguide set identifier='urn:oid:1.3.6.1.4.1.19376.1.5.3.1.1.11.2.3.1' WHERE id = 90
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.31' WHERE id = 91
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.22' WHERE id = 92
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.30.3' WHERE id = 93
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.15' WHERE id = 94
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.3.2898.10' WHERE id = 95
	update implementationguide set identifier='urn:oid:CCD_OID' WHERE id = 1096
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.22' WHERE id = 1098
	update implementationguide set identifier='urn:oid:2.1.2' WHERE id = 1100
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.5' WHERE id = 1101
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.28' WHERE id = 1104
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.34' WHERE id = 1106
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20' WHERE id = 1108
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.27' WHERE id = 1109
	update implementationguide set identifier='urn:oid:MTM' WHERE id = 1111
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.3.4232.1' WHERE id = 1112
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.5' WHERE id = 1113
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.22' WHERE id = 1114
	update implementationguide set identifier='urn:oid:1.3.6.1.4.1.19376.1.4.1.6' WHERE id = 1116
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.1.1.1' WHERE id = 1122
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.30' WHERE id = 1123
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.3.379' WHERE id = 1125
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.22' WHERE id = 1126
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.22' WHERE id = 1127
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.3.239.34' WHERE id = 1128
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.5' WHERE id = 1129
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.3.46' WHERE id = 1131
	update implementationguide set identifier='urn:oid:1.3.6.1.4.1.19376.1.5.3.1' WHERE id = 1132
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.30' WHERE id = 1133
	update implementationguide set identifier='urn:oid:1.3.6.1.4.1.19376.1.4.1.6.4.99' WHERE id = 1136
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.14' WHERE id = 1137
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.22' WHERE id = 1139
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.24.3' WHERE id = 1140
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.36' WHERE id = 1141
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.30' WHERE id = 1142
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.28' WHERE id = 1143
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.3.239.34' WHERE id = 1144
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.3.239.34.1:2014-10-02' WHERE id = 1145
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.3.239.34.1:2014-12-22' WHERE id = 1146
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.4.823' WHERE id = 1148
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.3.3478.3.2.3.13' WHERE id = 1149
	update implementationguide set identifier='http://www.lantanagroup.com/camara/fhir/' WHERE id = 1150
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.6' WHERE id = 1151
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.22.4.31:2016-05-20' WHERE id = 1152
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.3' WHERE id = 1153
	update implementationguide set identifier='urn:oid:1.3.6.1.4.1.19376.1.4.1.6' WHERE id = 1154
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.22.1.15:2014-11-19' WHERE id = 1155
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.22.1.15:2014-12-01' WHERE id = 1158
	update implementationguide set identifier='urn:hl7ii:1.3.6.1.4.1.19376.1.4.1.6' WHERE id = 1159
	update implementationguide set identifier='urn:oid:1.3.6.1.4.1.19376.1.4.1' WHERE id = 1160
	update implementationguide set identifier='urn:oid:1.3.6.1.4.1.19376.1.4.1.6' WHERE id = 1164
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.3.239.34' WHERE id = 1165
	update implementationguide set identifier='urn:oid:1.3.6.1.4.1.19376.1.4.1.7' WHERE id = 1166
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.3.239.34.4:2015-01-04' WHERE id = 1167
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.13' WHERE id = 1169
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.3.239.34.56:2015-02-03' WHERE id = 1174
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.3.239.34.3:2015-03-18' WHERE id = 1177
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.22' WHERE id = 1178
	update implementationguide set identifier='urn:oid:1.3.6.1.4.1.19376.1.4.1.6.4.99' WHERE id = 1179
	update implementationguide set identifier='urn:oid:1.3.6.1.4.1.19376.1.5.3.1' WHERE id = 1180
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.5' WHERE id = 1181
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.17' WHERE id = 1182
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.19' WHERE id = 1183
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.34' WHERE id = 1184
	update implementationguide set identifier='urn:hl7ii:1.3.6.1.4.1.19376.1.7.3.1.1.18.5.2' WHERE id = 1185
	update implementationguide set identifier='urn:hl7ii:1.3.6.1.4.1.19376.1.5.3.1' WHERE id = 1189
	update implementationguide set identifier='urn:hl7ii:1.3.6.1.4.1.19376.1.7.3.1.1.18.5.1' WHERE id = 1193
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.3.239.34.6' WHERE id = 1195
	update implementationguide set identifier='urn:oid:1.4.7.1.4.1.45763.1.4.7.7.4' WHERE id = 1196
	update implementationguide set identifier='http://www.lantanagroup.com/mckesson/chemotherapycare/' WHERE id = 1197
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.22' WHERE id = 1198
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.3.6167.1.1.1:2015-06-01' WHERE id = 1200
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.22.1' WHERE id = 1201
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.5' WHERE id = 1202
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.22.4' WHERE id = 1203
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.28.3' WHERE id = 1205
	update implementationguide set identifier='http://www.lantanagroup.com/camara/fhir/' WHERE id = 1206
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.3.2898.10' WHERE id = 1207
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.30' WHERE id = 1208
	update implementationguide set identifier='urn:oid:2.16.840.1.114222.4.10.1' WHERE id = 2210
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.4.823.1' WHERE id = 2211
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.22' WHERE id = 2212
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.17.3.10.4' WHERE id = 2214
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.3.117.1.8' WHERE id = 2215
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.3.163.10.2.2:20121215' WHERE id = 2216
	update implementationguide set identifier='urn:oid:2.16.840.1.114222.4.10.18' WHERE id = 2217
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.15.2:20160422' WHERE id = 2218
	update implementationguide set identifier='http://hl7.org/fhir/StructureDefinition/' WHERE id = 2219
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.3.6167.1.1.1:2015-12-01' WHERE id = 2220
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.28' WHERE id = 2221
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.30' WHERE id = 2222
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.1.2' WHERE id = 2223
	update implementationguide set identifier='http://www.hl7.org/fhir/ccof/' WHERE id = 2224
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.27' WHERE id = 2226
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.24' WHERE id = 2228
	update implementationguide set identifier='http://hl7.org/fhir/conceptmap/nhsn-cm-pilot' WHERE id = 2229
	update implementationguide set identifier='http://www.philips.com/cda/00000001' WHERE id = 2230
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.27' WHERE id = 2233
	update implementationguide set identifier='http://trifolia.lantanagroup.com/api/FHIR2/StructureDefinition/GlucoseObservationId' WHERE id = 2237
	update implementationguide set identifier='http://trifolia.lantanagroup.com/api/FHIR2/StructureDefinition/Tumor-Id' WHERE id = 2238
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.17' WHERE id = 2239
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.24.2.1:2016-03-21' WHERE id = 3240
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.24.2.1:2016-03-20' WHERE id = 3241
	update implementationguide set identifier='urn:oid:1.3.6.1.4.1.19376.1.4.1.7' WHERE id = 3243
	update implementationguide set identifier='urn:oid:1.3.6.1.4.1.19376.1.4.1.7' WHERE id = 3245
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.5' WHERE id = 3247
	update implementationguide set identifier='https://www.ehealthontario.ca/API/FHIR/StructureDefinition/eConsult/1/' WHERE id = 3248
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.22.4' WHERE id = 3250
	update implementationguide set identifier='urn:oid:1.3.6.1.4.1.19376.1.4.1.7' WHERE id = 3251
	update implementationguide set identifier='urn:hl7ii:1.3.6.1.4.1.19376.1.4.1.7' WHERE id = 3253
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.34' WHERE id = 3256
	update implementationguide set identifier='https://trifolia.lantanagroup.com/api/FHIR2/StructureDefinition/' WHERE id = 3258
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.27' WHERE id = 3259
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.28.3' WHERE id = 3263
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.28' WHERE id = 3264
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.24' WHERE id = 3265
	update implementationguide set identifier='urn:oid:2.16.840.1.113883.10.20.28' WHERE id = 3268
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.3' WHERE id = 3269
	update implementationguide set identifier='urn:hl7ii:2.16.840.1.113883.10.20.22' WHERE id = 3270
	update implementationguide set identifier='http://cleardecisionsupport.com/fhir/StructureDefinition/' WHERE id = 3272
	
	ALTER TABLE dbo.implementationguide ALTER COLUMN identifier varchar(255) NOT NULL

	*/
END