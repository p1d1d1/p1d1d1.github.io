# Konsistenzbedingungen

## Konsistenzbedingungen
|ID|RKo
|:--|:--
|**Bezeichnung**|**Konsistenzbedingungen**
|**Beschreibung**|INTERLIS-Daten müssen der ```ConstraintDef``` ([1] Kap. 2.12 und 2.13) im INTERLIS-Datenmodell entsprechen
|**Details**|<ul><li>Konsistenzbedingungen, die mit Standardfunktionen durchgesetzt werden ([\[1]][1] Kap. 2.14), müssen zusätzlich geprüft werden, insbesondere geometrische Bedingungen, die mit der Standardfunktion ```areAreas``` durchgesetzt werden</li></ul>
|**Referenz**|[[1]][1] Kap. 2.12, 2.13 und 2.14

### Testfälle
###### Konsistenzbedingungen - RKo.T01
|ID|RKo.T01
|:--|:--
|**Bezeichnung**|```UNIQUE```
|**Beschreibung**|Die Tests müssen prüfen, dass die Daten der ```ConstraintDef``` im INTERLIS-Datenmodell entsprechen
|**Testvoraussetzung**|RKo.T01a.xtf, RKo.T01b.xtf, *TestSuite.ili*
|**Erwartetes Ergebnis**|<ul><li>RKo.T01a.xtf: keine Fehlermeldung</li><li>RKo.T01b.xtf: Fehlermeldung</li></ul>
|**Referenz**|[\[1]][1] Kap. 2.12, 2.13 und 2.14

###### Konsistenzbedingungen - RKo.T02
|ID|RKo.T02
|:--|:--
|**Bezeichnung**|```UNIQUE (LOCAL)```
|**Beschreibung**|Die Tests müssen prüfen, dass die Daten der ```ConstraintDef``` im INTERLIS-Datenmodell entsprechen
|**Testvoraussetzung**|RKo.T02a.xtf, RKo.T02b.xtf, *TestSuite.ili*
|**Erwartetes Ergebnis**|<ul><li>RKo.T02a.xtf: Fehlermeldung</li><li>RKo.T02b.xtf: keine Fehlermeldung</li></ul>
|**Referenz**|[\[1]][1] Kap. 2.12, 2.13 und 2.14

###### Konsistenzbedingungen - RKo.T03
|ID|RKo.T03
|:--|:--
|**Bezeichnung**|```UNIQUE WHERE```
|**Beschreibung**|Die Tests müssen prüfen, dass die Daten der ```ConstraintDef``` im INTERLIS-Datenmodell entsprechen
|**Testvoraussetzung**|RKo.T03a.xtf, RKo.T03b.xtf, *TestSuite.ili*
|**Erwartetes Ergebnis**|<ul><li>RKo.T03a.xtf: keine Fehlermeldung</li><li>RKo.T03b.xtf: Fehlermeldung</li></ul>
|**Referenz**|[\[1]][1] Kap. 2.12, 2.13 und 2.14

###### Konsistenzbedingungen - RKo.T04
|ID|RKo.T04
|:--|:--
|**Bezeichnung**|```EXISTENCE CONSTRAINT```
|**Beschreibung**|Die Tests müssen prüfen, dass die Daten der ```ConstraintDef``` im INTERLIS-Datenmodell entsprechen
|**Testvoraussetzung**|RKo.T04a.xtf, RKo.T04b.xtf, RKo.T04c.xtf, *TestSuite.ili*
|**Erwartetes Ergebnis**|<ul><li>RKo.T04a.xtf: keine Fehlermeldung</li><li>RKo.T04b.xtf: Fehlermeldung</li><li>RKo.T04c.xtf: keine Fehlermeldung</li></ul>
|**Referenz**|[\[1]][1] Kap. 2.12, 2.13 und 2.14

###### Konsistenzbedingungen - RKo.T05
|ID|RKo.T05
|:--|:--
|**Bezeichnung**|```MANDATORY``` **mit Vergleich**
|**Beschreibung**|Die Tests müssen prüfen, dass die Daten der ```ConstraintDef``` im INTERLIS-Datenmodell entsprechen
|**Testvoraussetzung**|RKo.T05a.xtf, RKo.T05b.xtf, *TestSuite.ili*
|**Erwartetes Ergebnis**|<ul><li>RKo.T05a.xtf: keine Fehlermeldung</li><li>RKo.T05b.xtf: Fehlermeldung</li></ul>
|**Referenz**|[\[1]][1] Kap. 2.12, 2.13 und 2.14

###### Konsistenzbedingungen - RKo.T06
|ID|RKo.T06
|:--|:--
|**Bezeichnung**|```MANDATORY``` **mit Bedingungsvorgabe**
|**Beschreibung**|Die Tests müssen prüfen, dass die Daten der ```ConstraintDef``` im INTERLIS-Datenmodell entsprechen
|**Testvoraussetzung**|RKo.T06a.xtf, RKo.T06b.xtf, RKo.T06c.xtf, RKo.T06d.xtf, RKo.T06e.xtf, RKo.T06f.xtf, RKo.T06g.xtf, *TestSuite.ili*
|**Erwartetes Ergebnis**|<ul><li>RKo.T06a.xtf: keine Fehlermeldung</li><li>RKo.T06b.xtf: keine Fehlermeldung</li><li>RKo.T06c.xtf: Fehlermeldung</li><li>RKo.T06d.xtf: keine Fehlermeldung</li><li>RKo.T06e.xtf: keine Fehlermeldung</li><li>RKo.T06f.xtf: Fehlermeldung</li><li>RKo.T06g.xtf: Fehlermeldung</li></ul>
|**Referenz**|[\[1]][1] Kap. 2.12, 2.13 und 2.14

###### Konsistenzbedingungen - RKo.T07
|ID|RKo.T07
|:--|:--
|**Bezeichnung**|```MANDATORY``` **mit Funktion** (```INTERLIS.len```)
|**Beschreibung**|Die Tests müssen prüfen, dass die Daten der ```ConstraintDef``` im INTERLIS-Datenmodell entsprechen
|**Testvoraussetzung**|RKo.T07a.xtf, RKo.T07b.xtf, *TestSuite.ili*
|**Erwartetes Ergebnis**|<ul><li>RKo.T07a.xtf: keine Fehlermeldung</li><li>RKo.T07b.xtf: Fehlermeldung</li></ul>
|**Referenz**|[\[1]][1] Kap. 2.12, 2.13 und 2.14

###### Konsistenzbedingungen - RKo.T08
|ID|RKo.T08
|:--|:--
|**Bezeichnung**|```SET CONSTRAINT``` **mit Funktion** (```are.Areas```)
|**Beschreibung**|Die Tests müssen prüfen, dass die Daten der ```ConstraintDef``` im INTERLIS-Datenmodell entsprechen
|**Testvoraussetzung**|RKo.T08a.xtf, RKo.T08b.xtf, RKo.T08c.xtf, *TestSuite.ili*
|**Erwartetes Ergebnis**|<ul><li>RKo.T08a.xtf: Fehlermeldung</li><li>RKo.T08b.xtf: keine Fehlermeldung</li><li>RKo.T08c.xtf: keine Fehlermeldung</li></ul>
|**Referenz**|[\[1]][1] Kap. 2.12, 2.13 und 2.14

[1]: bib.md#1-kogis-interlis-2--referenzhandbuch-13042006
