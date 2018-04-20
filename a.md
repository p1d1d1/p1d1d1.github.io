# XML-Wohlgeformtheit

## Regel XML-Wohlgeformtheit
|ID|RXW
|:--|:--
|**Bezeichnung**|**XML-Wohlgeformtheit**
|**Beschreibung**|Jede xml-formatierte INTERLIS-Transferdatei muss gemäss XML-1.0 Standard **[[2]](#2-w3c-extensible-markup-language-xml-10-fifth-edition-26112008)** wohlgeformt sein |
|**Referenz**|**[[1]](#1-kogis-interlis-2--referenzhandbuch-13042006)** Kap. 3.3.1 und 3.3.3

### Testfälle
###### RXW.T01
|ID|<span style="font-weight:normal">RXW.T01</span>
|:--|:--
|**Bezeichnung**|**Tags**
|**Beschreibung**|Die Tests müssen die Wohlgeformtheit der Tags prüfen
|**Testvoraussetzung**|RXW.T01a.xtf, RXW.T01b.xtf, *TestSuite.ili*
|**Erwartetes Ergebnis**|<ul><li>RXW.T01a.xtf: Fehlermeldung. Es gibt ein Leerzeichen im Tag **DATASECTION**</li><li>RXW.T01b.xtf: Fehlermeldung. Der Name des End-Tags **TRANSFERs** stimmt nicht mit dem Namen des Start-Tags **TRANSFER** überein</li></ul>
|**Referenz**|**[[1]](#1-kogis-interlis-2--referenzhandbuch-13042006)** Kap. 3.3.1 und 3.3.3 <br/>**[[2]](#2-w3c-extensible-markup-language-xml-10-fifth-edition-26112008)** Kap. 2.1 (https://www.w3.org/TR/xml/#sec-starttags>)

###### RXW.T02
|ID|<span style="font-weight:normal">RXW.T02</span>
|:--|:--
|**Bezeichnung**|**XML-Attribute**
|**Beschreibung**|Die Tests müssen prüfen, ob die XML-Attribute in Anführungszeichen geschrieben sind (einfaches oder doppeltes Anführungszeichen). <p>Es ist zusätzlich zu prüfen, dass ein Attributname nicht mehr als einmal im selben Tag vorkommt.</p>
|**Testvoraussetzung**|RXW.T02a.xtf, RXW.T02b.xtf, RXW.T02c.xtf, RXW.T02d.xtf, *TestSuite.ili*
|**Erwartetes Ergebnis**|<ul><li>RXW.T02a.xtf: Fehlermeldung. Attributwert (**xmlns**) nicht in Anführungszeichen geschrieben</li><li>RXW.T02b.xtf: keine Fehlermeldung. Einfaches und doppeltes Anführungszeichen sind beide gültig</li><li>RXW.T02c.xtf: Fehlermeldung. Doppeltes Attribut **BID**</li><li>RXW.T02d.xtf: Fehlermeldung. Doppeltes Attribut **TID**</li></ul>
|**Referenz**|**[[1]](#1-kogis-interlis-2--referenzhandbuch-13042006)** Kap. 3.3.1<br/>**[[2]](#2-w3c-extensible-markup-language-xml-10-fifth-edition-26112008)** Kap. 3.1 (https://www.w3.org/TR/xml/#uniqattspec)
