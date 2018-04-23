# Zeichencodierung

## Zeichencodierung
|ID|RZe
|:--|:--
|**Bezeichnung**|**Zeichencodierung**
|**Beschreibung**|Für die Codierung von XML-String bzw. XML-NormalizedString gelten die im **[[1]](bib.md#1-kogis-interlis-2--referenzhandbuch-13042006)** Kap. 3.3.2 und Anhang B definierten Regeln
|**Referenz**|**[[1]](bib.md#1-kogis-interlis-2--referenzhandbuch-13042006)** Kap. 3.3.2 und Anhang B

### Testfälle
###### Zeichencodierung - RZe.T01
|ID|RZe.T01
|:--|:--
|**Bezeichnung**|**Zeichencodierung**
|**Beschreibung**|Die Tests müssen prüfen, ob die Zeichen den Codierungsregeln gemäss UTF-8 entsprechen
|**Testvoraussetzung**|RZe.T01a.xtf, RZe.T01b.xtf, *TestSuite.ili*
|**Erwartetes Ergebnis**|<ul><li>RZe.T01a.xtf: keine Fehlermeldung</li><li>RZe.T01b.xtf: Fehlermeldung. Flasche Codierung</li></ul>
|**Referenz**|**[[1]](bib.md#1-kogis-interlis-2--referenzhandbuch-13042006)** Kap. 3.3.2
