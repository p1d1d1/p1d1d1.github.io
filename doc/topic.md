# Datenbereich: Themen

## TOPIC
|ID|RTO
|:--|:--
|**Bezeichnung**|**TOPIC**
|**Beschreibung**|Für die Validierung eines **Topic** gelten die im **[[1]](bib.md#1-kogis-interlis-2--referenzhandbuch-13042006)** Kap. 3.3.6 definierten Regeln
|**Details**|<ul><li>Der Wert ```%Model.Topic%``` muss den ```ModelDef``` (**[[1]](bib.md#1-kogis-interlis-2--referenzhandbuch-13042006)** Kap. 2.5.1) und ```TopicDef``` (**[[1]](bib.md#1-kogis-interlis-2--referenzhandbuch-13042006)** Kap. 2.5.2) im INTERLIS-Datenmodell entsprechen</li><li>Jeder Datenbehälter (```Basket```) erhält eine Behälteridentifikation (XML-Attribut ```BID```). Wo nötig, muss die BID-Angabe der ```TopicDef``` (**[[1]](bib.md#1-kogis-interlis-2--referenzhandbuch-13042006)** Kap. 2.5.2) im INTERLIS-Datenmodell entsprechen. Es gelten zusätzlich die im **[[1]](bib.md#1-kogis-interlis-2--referenzhandbuch-13042006)** Kap. 2.8.9 definierten Regeln</li><li>Alle ```BID``` inkl. alle ```TID``` ([Regel Klassen](classes.md#regel-klassen)) innerhalb eines Transfers müssen eindeutig sein (**[[1]](bib.md#1-kogis-interlis-2--referenzhandbuch-13042006)** Kap. 3.3.7 und 3.2.6)</li>
|**Referenz**|**[[1]](bib.md#1-kogis-interlis-2--referenzhandbuch-13042006)** Kap. 2.5.1, 2.5.2, 2.8.9, 3.2.5, 3.2.6 und 3.3.6</td>

### Testfälle
###### Themen - RTO.T01
|ID|RTO.T01
|:--|:--
|**Bezeichnung**|**Themen:** ```ModelDef``` **und** ```TopicDef```
|**Beschreibung**|Die Tests müssen prüfen, ob der Wert ```%Model.Topic%``` den Definitionen im INTERLIS-Datenmodell und den Angaben im Element ```MODELS``` in der ```HEADERSECTION``` entspricht
|**Testvoraussetzung**|RTO.T01a.xtf, RTO.T01b.xtf, *TestSuite.ili*
|**Erwartetes Ergebnis**|<ul><li>RTO.T01a.xtf: Fehlermeldung. Wert ```%Model%``` stimmt nicht</li><li>RTO.T01b.xtf: Fehlermeldung. Wert ```%Topic%``` stimmt nicht</li></ul>
|**Referenz**|**[[1]](bib.md#1-kogis-interlis-2--referenzhandbuch-13042006)** Kap. 2.5.1, 3.3.4 und 3.3.6</td>

###### Themen - RTO.T02
|ID|RTO.T02
|:--|:--
|**Bezeichnung**|**Themen:** ```BID```
|**Beschreibung**|Die Tests müssen prüfen, ob der ```BID``` vorhanden ist und der richtigen Codierung entspricht
|**Testvoraussetzung**|RTO.T02a.xtf, RTO.T02b.xtf, RTO.T02c.xtf, RTO.T02d.xtf, *TestSuite.ili*
|**Erwartetes Ergebnis**|<ul><li>RTO.T02a.xtf: Fehlermeldung. ```BID``` nicht vorhanden</li><li>RTO.T02b.xtf: Fehlermeldung. ```BID``` leer</li><li>RTO.T02c.xtf: Fehlermeldung. Die ```BID``` werden als XML-ID *à la INTERLIS* codiert. Erstes Zeichen muss Buchstabe, Ziffer oder Unterstrich sein</li><li>RTO.T02d.xtf: keine Fehlermeldung (Zeichen mit Umlaut sind zulässig)</li></ul>
|**Referenz**|**[[1]](bib.md#1-kogis-interlis-2--referenzhandbuch-13042006)** Kap. 2.8.9 und 3.3.1

###### Themen - RTO.T03
|ID|RTO.T03
|:--|:--
|**Bezeichnung**|**Themen:** ```BID``` *und* ```TID```
|**Beschreibung**|Die Tests müssen prüfen, ob alle ```BID``` inkl. alle ```TID``` innerhalb des Transfers eindeutig sind
|**Testvoraussetzung**|RTO.T03a.xtf, RTO.T03b.xtf, *TestSuite.ili*
|**Erwartetes Ergebnis**|<ul><li>RTO.T03a.xtf: Fehlermeldung. Doppelte ```BID```</li><li>RTO.T03b.xtf: Fehlermeldung. Gleicher Wert in ```BID``` und in ```TID```</li></ul>
|**Referenz**|**[[1]](bib.md#1-kogis-interlis-2--referenzhandbuch-13042006)** Kap. 3.3.7 und 3.2.6

###### Themen - RTO.T04
|ID|RTO.T04
|:--|:--
|**Bezeichnung**|**Themen: Behälter und Modelle**
|**Beschreibung**|Der Test muss prüfen Behälter, die unterschiedlichen Modellen entsprechen
|**Testvoraussetzung**|RTO.T04a.xtf, *TestSuite.ili*
|**Erwartetes Ergebnis**|<ul><li>RTO.T04a.xtf: keine Fehlermeldung</li></ul>
