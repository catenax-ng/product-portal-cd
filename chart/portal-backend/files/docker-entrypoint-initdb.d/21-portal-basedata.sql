--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Debian 14.2-1.pgdg110+1)
-- Dumped by pg_dump version 14.2 (Debian 14.2-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: agreement_categories; Type: TABLE DATA; Schema: portal; Owner: portal
--

COPY portal.agreement_categories (agreement_category_id, label) FROM stdin;
1	CX_FRAME_CONTRACT
2	APP_CONTRACT
3	DATA_CONTRACT
\.


--
-- Data for Name: app_status; Type: TABLE DATA; Schema: portal; Owner: portal
--

COPY portal.app_status (app_status_id, label) FROM stdin;
1	CREATED
2	IN_REVIEW
3	ACTIVE
4	INACTIVE
\.


--
-- Data for Name: company_application_status; Type: TABLE DATA; Schema: portal; Owner: portal
--

COPY portal.company_application_status (application_status_id, label) FROM stdin;
1	CREATED
2	ADD_COMPANY_DATA
3	INVITE_USER
4	SELECT_COMPANY_ROLE
5	UPLOAD_DOCUMENTS
6	VERIFY
7	SUBMITTED
8	CONFIRMED
9	DECLINED
\.


--
-- Data for Name: company_roles; Type: TABLE DATA; Schema: portal; Owner: portal
--

COPY portal.company_roles (company_role_id, label) FROM stdin;
1	ACTIVE_PARTICIPANT
2	APP_PROVIDER
\.


--
-- Data for Name: languages; Type: TABLE DATA; Schema: portal; Owner: portal
--

COPY portal.languages (short_name, long_name_de, long_name_en) FROM stdin;
de	deutsch	german
en	englisch	english
\.


--
-- Data for Name: company_role_descriptions; Type: TABLE DATA; Schema: portal; Owner: portal
--

COPY portal.company_role_descriptions (company_role_id, language_short_name, description) FROM stdin;
1	de	Netzwerkteilnehmer
1	en	Participant
2	de	Softwareanbieter
2	en	Application Provider
\.


--
-- Data for Name: company_status; Type: TABLE DATA; Schema: portal; Owner: portal
--

COPY portal.company_status (company_status_id, label) FROM stdin;
1	PENDING
2	ACTIVE
3	REJECTED
4	INACTIVE
\.


--
-- Data for Name: company_user_status; Type: TABLE DATA; Schema: portal; Owner: portal
--

COPY portal.company_user_status (company_user_status_id, label) FROM stdin;
1	ACTIVE
2	INACTIVE
\.


--
-- Data for Name: consent_status; Type: TABLE DATA; Schema: portal; Owner: portal
--

COPY portal.consent_status (consent_status_id, label) FROM stdin;
1	ACTIVE
2	INACTIVE
\.


--
-- Data for Name: countries; Type: TABLE DATA; Schema: portal; Owner: portal
--

COPY portal.countries (alpha2code, alpha3code, country_name_de, country_name_en) FROM stdin;
AD	AND	Andorra	Andorra
AE	ARE	United Arab Emirates (the)	United Arab Emirates (the)
AF	AFG	Afghanistan	Afghanistan
AG	ATG	Antigua and Barbuda	Antigua and Barbuda
AI	AIA	Anguilla	Anguilla
AL	ALB	Albania	Albania
AM	ARM	Armenia	Armenia
AO	AGO	Angola	Angola
AQ	ATA	Antarctica	Antarctica
AR	ARG	Argentina	Argentina
AS	ASM	American Samoa	American Samoa
AT	AUT	Austria	Austria
AU	AUS	Australia	Australia
AW	ABW	Aruba	Aruba
AX	ALA	Åland Islands	Åland Islands
AZ	AZE	Azerbaijan	Azerbaijan
BA	BIH	Bosnien and Herzegovenien	Bosnia and Herzegovina
BB	BRB	Barbados	Barbados
BD	BGD	Bangladesh	Bangladesh
BE	BEL	Belgium	Belgium
BF	BFA	Burkina Faso	Burkina Faso
BG	BGR	Bulgarien	Bulgaria
BH	BHR	Bahrain	Bahrain
BI	BDI	Burundi	Burundi
BJ	BEN	Benin	Benin
BL	BLM	Saint Barthélemy	Saint Barthélemy
BM	BMU	Bermuda	Bermuda
BN	BRN	Brunei Darussalam	Brunei Darussalam
BO	BOL	Bolivien	Bolivia (Plurinational State of)
BQ	BES	Bonaire, Sint Eustatius and Saba	Bonaire, Sint Eustatius and Saba
BR	BRA	Brasilien	Brazil
BS	BHS	Bahamas	Bahamas (the)
BT	BTN	Bhutan	Bhutan
BV	BVT	Bouvet Island	Bouvet Island
BW	BWA	Botswana	Botswana
BY	BLR	Belarus	Belarus
BZ	BLZ	Belize	Belize
CA	CAN	Kanada	Canada
CC	CCK	Cocos (Keeling) Islands (the)	Cocos (Keeling) Islands (the)
CD	COD	Kongo	Congo (the Democratic Republic of the)
CF	CAF	Central African Republic (the)	Central African Republic (the)
CH	CHE	Switzerland	Switzerland
CI	CIV	Côte d'Ivoire	Côte d'Ivoire
CK	COK	Cook Islands	Cook Islands (the)
CL	CHL	Chile	Chile
CM	CMR	Cameroon	Cameroon
CN	CHN	China	China
CO	COL	Kolumbien	Colombia
CR	CRI	Costa Rica	Costa Rica
CU	CUB	Kuba	Cuba
CV	CPV	Cabo Verde	Cabo Verde
CW	CUW	Curaçao	Curaçao
CX	CXR	Weihnachtsinseln	Christmas Island
CY	CYP	Zypern	Cyprus
CZ	CZE	Tschechien	Czechia
DE	DEU	Deutschland	Germany
DJ	DJI	Djibouti	Djibouti
DK	DNK	Dänemark	Denmark
DM	DMA	Dominica	Dominica
DO	DOM	Dominikanische Republik	Dominican Republic (the)
DZ	DZA	Algeria	Algeria
EC	ECU	Ecuador	Ecuador
EE	EST	Estonia	Estonia
EG	EGY	Ägypten	Egypt
EH	ESH	Western Sahara*	Western Sahara*
ER	ERI	Eritrea	Eritrea
ES	ESP	Spain	Spain
ET	ETH	Ethiopia	Ethiopia
FI	FIN	Finland	Finland
FJ	FJI	Fiji	Fiji
FK	FLK	Falkland Islands (the) [Malvinas]	Falkland Islands (the) [Malvinas]
FM	FSM	Micronesia (Federated States of)	Micronesia (Federated States of)
FO	FRO	Faroe Islands (the)	Faroe Islands (the)
FR	FRA	Frankreich	France
GA	GAB	Gabon	Gabon
GB	GBR	United Kingdom of Great Britain and Northern Ireland (the)	United Kingdom of Great Britain and Northern Ireland (the)
GD	GRD	Grenada	Grenada
GE	GEO	Georgia	Georgia
GF	GUF	French Guiana	French Guiana
GG	GGY	Guernsey	Guernsey
GH	GHA	Ghana	Ghana
GI	GIB	Gibraltar	Gibraltar
GL	GRL	Greenland	Greenland
GM	GMB	Gambia (the)	Gambia (the)
GN	GIN	Guinea	Guinea
GP	GLP	Guadeloupe	Guadeloupe
GQ	GNQ	Equatorial Guinea	Equatorial Guinea
GR	GRC	Greece	Greece
GS	SGS	South Georgia and the South Sandwich Islands	South Georgia and the South Sandwich Islands
GT	GTM	Guatemala	Guatemala
GU	GUM	Guam	Guam
GW	GNB	Guinea-Bissau	Guinea-Bissau
GY	GUY	Guyana	Guyana
HK	HKG	Hong Kong	Hong Kong
HM	HMD	Heard Island and McDonald Islands	Heard Island and McDonald Islands
HN	HND	Honduras	Honduras
HR	HRV	Kroatien	Croatia
HT	HTI	Haiti	Haiti
HU	HUN	Hungary	Hungary
ID	IDN	Indonesia	Indonesia
IE	IRL	Ireland	Ireland
IL	ISR	Israel	Israel
IM	IMN	Isle of Man	Isle of Man
IN	IND	India	India
IO	IOT	British Indian Ocean Territory	British Indian Ocean Territory (the)
IQ	IRQ	Iraq	Iraq
IR	IRN	Iran (Islamic Republic of)	Iran (Islamic Republic of)
IS	ISL	Iceland	Iceland
IT	ITA	Italy	Italy
JE	JEY	Jersey	Jersey
JM	JAM	Jamaica	Jamaica
JO	JOR	Jordan	Jordan
JP	JPN	Japan	Japan
KE	KEN	Kenya	Kenya
KG	KGZ	Kyrgyzstan	Kyrgyzstan
KH	KHM	Cambodia	Cambodia
KI	KIR	Kiribati	Kiribati
KM	COM	Comoros	Comoros (the)
KN	KNA	Saint Kitts and Nevis	Saint Kitts and Nevis
KP	PRK	Korea (the Democratic People's Republic of)	Korea (the Democratic People's Republic of)
KR	KOR	Korea (the Republic of)	Korea (the Republic of)
KW	KWT	Kuwait	Kuwait
KY	CYM	Cayman Islands (the)	Cayman Islands (the)
KZ	KAZ	Kazakhstan	Kazakhstan
LA	LAO	Lao People's Democratic Republic (the)	Lao People's Democratic Republic (the)
LB	LBN	Lebanon	Lebanon
LC	LCA	Saint Lucia	Saint Lucia
LI	LIE	Liechtenstein	Liechtenstein
LK	LKA	Sri Lanka	Sri Lanka
LR	LBR	Liberia	Liberia
LS	LSO	Lesotho	Lesotho
LT	LTU	Lithuania	Lithuania
LU	LUX	Luxembourg	Luxembourg
LV	LVA	Latvia	Latvia
LY	LBY	Libya	Libya
MA	MAR	Morocco	Morocco
MC	MCO	Monaco	Monaco
MD	MDA	Moldova (the Republic of)	Moldova (the Republic of)
ME	MNE	Montenegro	Montenegro
MF	MAF	Saint Martin (French part)	Saint Martin (French part)
MG	MDG	Madagascar	Madagascar
MH	MHL	Marshall Islands (the)	Marshall Islands (the)
MK	MKD	North Macedonia	North Macedonia
ML	MLI	Mali	Mali
MM	MMR	Myanmar	Myanmar
MN	MNG	Mongolia	Mongolia
MO	MAC	Macao	Macao
MP	MNP	Northern Mariana Islands (the)	Northern Mariana Islands (the)
MQ	MTQ	Martinique	Martinique
MR	MRT	Mauritania	Mauritania
MS	MSR	Montserrat	Montserrat
MT	MLT	Malta	Malta
MU	MUS	Mauritius	Mauritius
MV	MDV	Maldives	Maldives
MW	MWI	Malawi	Malawi
MX	MEX	Mexico	Mexico
MY	MYS	Malaysia	Malaysia
MZ	MOZ	Mozambique	Mozambique
NA	NAM	Namibia	Namibia
NC	NCL	New Caledonia	New Caledonia
NE	NER	Niger (the)	Niger (the)
NF	NFK	Norfolk Island	Norfolk Island
NG	NGA	Nigeria	Nigeria
NI	NIC	Nicaragua	Nicaragua
NL	NLD	Netherlands (the)	Netherlands (the)
NO	NOR	Norway	Norway
NP	NPL	Nepal	Nepal
NR	NRU	Nauru	Nauru
NU	NIU	Niue	Niue
NZ	NZL	New Zealand	New Zealand
OM	OMN	Oman	Oman
PA	PAN	Panama	Panama
PE	PER	Peru	Peru
PF	PYF	French Polynesia	French Polynesia
PG	PNG	Papua New Guinea	Papua New Guinea
PH	PHL	Philippines (the)	Philippines (the)
PK	PAK	Pakistan	Pakistan
PL	POL	Poland	Poland
PM	SPM	Saint Pierre and Miquelon	Saint Pierre and Miquelon
PN	PCN	Pitcairn	Pitcairn
PR	PRI	Puerto Rico	Puerto Rico
PS	PSE	Palestine, State of	Palestine, State of
PT	PRT	Portugal	Portugal
PW	PLW	Palau	Palau
PY	PRY	Paraguay	Paraguay
QA	QAT	Qatar	Qatar
RE	REU	Réunion	Réunion
RO	ROU	Romania	Romania
RS	SRB	Serbia	Serbia
RU	RUS	Russian Federation (the)	Russian Federation (the)
RW	RWA	Rwanda	Rwanda
SA	SAU	Saudi Arabia	Saudi Arabia
SB	SLB	Solomon Islands	Solomon Islands
SC	SYC	Seychelles	Seychelles
SD	SDN	Sudan (the)	Sudan (the)
SE	SWE	Sweden	Sweden
SG	SGP	Singapore	Singapore
SH	SHN	Saint Helena, Ascension and Tristan da Cunha	Saint Helena, Ascension and Tristan da Cunha
SI	SVN	Slovenia	Slovenia
SJ	SJM	Svalbard and Jan Mayen	Svalbard and Jan Mayen
SK	SVK	Slovakia	Slovakia
SL	SLE	Sierra Leone	Sierra Leone
SM	SMR	San Marino	San Marino
SN	SEN	Senegal	Senegal
SO	SOM	Somalia	Somalia
SR	SUR	Suriname	Suriname
SS	SSD	South Sudan	South Sudan
ST	STP	Sao Tome and Principe	Sao Tome and Principe
SV	SLV	El Salvador	El Salvador
SX	SXM	Sint Maarten (Dutch part)	Sint Maarten (Dutch part)
SY	SYR	Syrian Arab Republic (the)	Syrian Arab Republic (the)
SZ	SWZ	Eswatini	Eswatini
TC	TCA	Turks and Caicos Islands (the)	Turks and Caicos Islands (the)
TD	TCD	Chad	Chad
TF	ATF	French Southern Territories (the)	French Southern Territories (the)
TG	TGO	Togo	Togo
TH	THA	Thailand	Thailand
TJ	TJK	Tajikistan	Tajikistan
TK	TKL	Tokelau	Tokelau
TL	TLS	Timor-Leste	Timor-Leste
TM	TKM	Turkmenistan	Turkmenistan
TN	TUN	Tunisia	Tunisia
TO	TON	Tonga	Tonga
TR	TUR	Turkey	Turkey
TT	TTO	Trinidad and Tobago	Trinidad and Tobago
TV	TUV	Tuvalu	Tuvalu
TW	TWN	Taiwan (Province of China)	Taiwan (Province of China)
TZ	TZA	Tanzania, the United Republic of	Tanzania, the United Republic of
UA	UKR	Ukraine	Ukraine
UG	UGA	Uganda	Uganda
UM	UMI	United States Minor Outlying Islands (the)	United States Minor Outlying Islands (the)
US	USA	United States of America (the)	United States of America (the)
UY	URY	Uruguay	Uruguay
UZ	UZB	Uzbekistan	Uzbekistan
VA	VAT	Holy See (the)	Holy See (the)
VC	VCT	Saint Vincent and the Grenadines	Saint Vincent and the Grenadines
VE	VEN	Venezuela (Bolivarian Republic of)	Venezuela (Bolivarian Republic of)
VG	VGB	Virgin Islands (British)	Virgin Islands (British)
VI	VIR	Virgin Islands (U.S.)	Virgin Islands (U.S.)
VN	VNM	Viet Nam	Viet Nam
VU	VUT	Vanuatu	Vanuatu
WF	WLF	Wallis and Futuna	Wallis and Futuna
WS	WSM	Samoa	Samoa
YE	YEM	Yemen	Yemen
YT	MYT	Mayotte	Mayotte
ZA	ZAF	South Africa	South Africa
ZM	ZMB	Zambia	Zambia
\.


--
-- Data for Name: document_types; Type: TABLE DATA; Schema: portal; Owner: portal
--

COPY portal.document_types (document_type_id, label) FROM stdin;
1	CX_FRAME_CONTRACT
2	COMMERCIAL_REGISTER_EXTRACT
3	APP_CONTRACT
4	DATA_CONTRACT
\.


--
-- Data for Name: identity_provider_categories; Type: TABLE DATA; Schema: portal; Owner: portal
--

COPY portal.identity_provider_categories (identity_provider_category_id, label) FROM stdin;
1	KEYCLOAK_SHARED
2	KEYCLOAK_OIDC
3	KEYCLOAK_SAML
\.


--
-- Data for Name: invitation_status; Type: TABLE DATA; Schema: portal; Owner: portal
--

COPY portal.invitation_status (invitation_status_id, label) FROM stdin;
1	CREATED
2	PENDING
3	ACCEPTED
4	DECLINED
\.


--
-- Data for Name: use_cases; Type: TABLE DATA; Schema: portal; Owner: portal
--

COPY portal.use_cases (id, name, shortname) FROM stdin;
06b243a4-ba51-4bf3-bc40-5d79a2231b86	Traceability	T
06b243a4-ba51-4bf3-bc40-5d79a2231b87	Sustainability & CO2-Footprint	CO2
06b243a4-ba51-4bf3-bc40-5d79a2231b88	Manufacturing as a Service	MaaS
06b243a4-ba51-4bf3-bc40-5d79a2231b89	Real-Time Control	RTC
06b243a4-ba51-4bf3-bc40-5d79a2231b90	Modular Production	MP
1aacde78-35ec-4df3-ba1e-f988cddcbbd8	Circular Economy	CE
1aacde78-35ec-4df3-ba1e-f988cddcbbd9	None	None
41e4a4c0-aae4-41c0-97c9-ebafde410de4	Demand and Capacity Management	DCM
6909ccc7-37c8-4088-99ab-790f20702460	Business Partner Management	BPDM
c065a349-f649-47f8-94d5-1a504a855419	Quality Management	QM
\.


--
-- PostgreSQL database dump complete
--

