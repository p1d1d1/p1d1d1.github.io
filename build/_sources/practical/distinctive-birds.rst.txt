======================
Uccelli caratteristici
======================

In questo capitolo utilizzeremo VisiData per rispondere alla seguente domanda: quali uccelli rappresentano le *più grandi percentuali* di collisioni per stato?

Nel corso del processo, utilizzeremo le seguenti tecniche:

- Selezione di righe che corrispondono ad una frase
- Inversione selezione righe
- Creazione di fogli filtrati
- Modifica nomi di fogli e colonne
- Creazione di tabelle di frequenza
- Creazione e rimozione di colonne chiave
- Creazione di nuove colonne
- Join di fogli

.. note::

    Se non l'hai ancora fatto, scarica :download:`faa-wildlife-strikes.csv <../datasets/faa-wildlife-strikes.csv>`, un elenco delle collisioni tra velivoli e volatili segnalate alla `Federal Aviation Administration <https://wildlife.faa.gov/database.aspx>`_ tra il 2010 e la metà del 2016.

Aprire l'elenco delle collisioni in VisiData
--------------------------------------------

Lancia il seguente comando dal terminale:

::

    vd faa-wildlife-strikes.csv


Dovresti vedere qualcosa di simile a quanto segue

.. raw:: html
    	:file: ../raw_html/practical-distinctive-00-open.output.html

Selezionare solo le specie note
-------------------------------

Noterai che per molti dei dati nel foglio il valore della colonna delle specie è "unknown". Concentriamoci sui dati con valori diversi da "unknown":

- Spostati sulla colonna ``SPECIES``
- Digita :kbd:`|` per attivare il prompt della selezione per ricerca
- Digita ``unknown``
- Premi :kbd:`Invio`

Dovresti vedere qualcosa di simile a quanto segue:

.. raw:: html
	:file: ../raw_html/practical-distinctive-01-unknown.output.html

Ora tutte le specie sconosciute sono selezionate. Ma quello che ci serve è esattamente il contrario. Inverti la selezione digitando :kbd:`gt` ("global toggle"). Dovresti vedere qualcosa di simile a quanto segue:

.. raw:: html
	:file: ../raw_html/practical-distinctive-02-toggled.output.html

Crea ora un nuovo foglio con le *sole* righe selezionate digitando :kbd:`"`. Il risultato dovrebbe essere simile a quanto segue:

.. raw:: html
	:file: ../raw_html/practical-distinctive-03-filtered.output.html


Rinominare un foglio
--------------------

Il nuovo foglio ha come titolo "faa-wildlife-strikes_selectedref". Per rinominarlo prosegui come segue:

- Premi :kbd:`Spazio` (barra spaziatrice) per attivare il prompt dei comandi
- Digita ``rename-sheet`` e premi :kbd:`Invio`
- Digita il nuovo nome del foglio ``known_species``

Dovresti vedere qualcosa del genere:

.. raw:: html
	:file: ../raw_html/practical-distinctive-04-edit-sheet-name.output.html

Premi :kbd:`Invio` per confermare o :kbd:`Control-c` per annullare la modifica.


Calcolare il numero di collisioni per stato
--------------------------------------------

Calcoliamo il numero totale di collisioni per ogni stato. Nel foglio ``known_species``, spostati sulla colonna ``STATE``:

.. raw:: html
	:file: ../raw_html/practical-distinctive-05-on-state-col.output.html

Digita :kbd:`Shift-F` per creare una tabella delle frequenze:

.. raw:: html
	:file: ../raw_html/practical-distinctive-06-state-freq.output.html

Fare ordine nella tabella delle frequenze
-----------------------------------------

Facciamo un po' d'ordine nella tabella delle frequenze:

- Spostati sulla colonna ``count``. Rinominala digitando :kbd:`^` e digitando ``state_total``, quindi premi :kbd:`Invio`
- Digita :kbd:`_` per ridimensionare leggermente la colonna in modo da rendere visibile interamente il nome delle colonna
- Nascondi le colonne ``percent`` e ``histogram`` spostandoti su ognuna di esse e digitando :kbd:`-`.

Dopo questi passi, il foglio dovrebbe avere questo aspetto:

.. raw:: html
	:file: ../raw_html/practical-distinctive-07-state-freq-trimmed.output.html


Calolare il numero di collisioni per stato *e* specie
-----------------------------------------------------

Calcoliamo ora il numero di collisioni *per specie* e *per stato*. Bisogna creare una tabella delle frequenze della *combinazione* delle colonne ``STATE`` e ``SPECIES``:

- Usa il Foglio dei fogli (:kbd:`Shift-S`) ed apri il foglio ``known_species``
- Spostati sulla colonna ``STATE`` e digita :kbd:`!` per renderla una colonna "chiave"
- Fai la stessa cosa per la colonna ``SPECIES``

A questo punto dovresti vedere qualcosa del genere:

.. raw:: html
	:file: ../raw_html/practical-distinctive-08-known-keyed.output.html

Ora digita :kbd:`gF` per creare una tabella delle frequenze delle colonne "chiave":

.. raw:: html
	:file: ../raw_html/practical-distinctive-09-state-species-freq.output.html

Facciamo un po' d'ordine ed eliminiamo le colonne ``percent`` et ``histogram``; spostati su ognuna di esse e digita :kbd:`-`:

.. raw:: html
	:file: ../raw_html/practical-distinctive-10-state-species-freq-trimmed.output.html

Preparare la tabella delle frequenze stato-specie per il *join*
----------------------------------------------------------------

Ci resta un'ultima cosa, prima di poter fare il *join* delle tabelle: dobbiamo essere sicuri che le due tabelle delle frequenze condividano la stessa colonna "chiave" (VisiData usa le colonne chiave per determinare quali righe collegare).
Siccome la chiave della tabella dei conteggi per stato è la colonna ``STATE``, la tabella delle frequenze stato-specie deve avere ``STATE`` come sua unica colonna chiave. Ciò significa che bisogna eliminare la proprietà di chiave dalla colonna ``SPECIES``. Spostati sulla colonna ``SPECIES`` e digita :kbd:`!` per cambiarne lo stato di "chiave":

.. raw:: html
	:file: ../raw_html/practical-distinctive-11-state-species-freq-rekeyed.output.html

Join delle due tabelle di frequenze
-----------------------------------

Facciamo ora il *join* delle due tabelle!

Digita :kbd:`Shift-S` per aprire il Foglio dei fogli:

.. raw:: html
	:file: ../raw_html/practical-distinctive-12-sheets-sheet.output.html

Spostati sulla riga ``known_species_STATE-SPECIES_freq`` e digita :kbd:`s` per selezionarla. Fai lo stesso per ``known_species_STATE_freq``; il Foglio dei fogli dovrebbe apparire ora come di seguito:

.. raw:: html
	:file: ../raw_html/practical-distinctive-13-sheets-selected.output.html

Digita :kbd:`&` per attivare il prompt per il *join* e digita ``inner`` per indicare che intendi fare un *inner join* (anche conosciuto come "left join" o ancora "INNER LEFT JOIN"):

.. raw:: html
	:file: ../raw_html/practical-distinctive-14-sheets-join-prompt.output.html

Premi :kbd:`Invio` per completare l'operazione:

.. raw:: html
	:file: ../raw_html/practical-distinctive-15-sheets-joined.output.html

Calcolare le percentuali specie-stato
-------------------------------------

Calcoliamo ora la percentuale delle collisioni di ogni specie per ogni singolo stato in una nuova colonna che aggiungeremo in coda alla tabella.

Digita :kbd:`gl`, quindi crea la nuova colonna digitando :kbd:`=` e digitando ``count * 100 / state_total``, quindi premi :kbd:`Invio`.

Dovresti vedere qualcosa del genere:

.. raw:: html
	:file: ../raw_html/practical-distinctive-16-new-col.output.html

Facciamo un po' di ordine:

- Rinomina la nuova colonna spostandoti su di essa e digitando :kbd:`^` per entrare in modalità modifica nome colonna. Digita ``pct_of_state`` e premi :kbd:`Invio`.
- Assegna il tipo di dato "float" alla colonna digitando :kbd:`%`
- Digita :kbd:`_` per ridimensionare la colonna ed adattarla al suo contenuto

Ora il foglio dovrebbe avere l'aspetto seguente:

.. raw:: html
	:file: ../raw_html/practical-distinctive-16b-new-col-clean.output.html

Ordinare per percentuale
------------------------

Ordiniamo la colonna delle percentuali in ordine decrescente digitando :kbd:`]`:

.. raw:: html
	:file: ../raw_html/practical-distinctive-17-new-col-typed-and-sorted.output.html

Selezionare le righe con almeno 20 collisioni
------------------------------------------------

Ora selezioniamo le combinazioni specie/stato con almeno 20 collisioni. Digita :kbd:`z|`, seguito da ``count >= 20``:

.. raw:: html
	:file: ../raw_html/practical-distinctive-18-select-expr-input.output.html

Premi :kbd:`Invio` per completare l'operazione:

.. raw:: html
	:file: ../raw_html/practical-distinctive-19-select-expr-result.output.html

Infine digita :kbd:`"` per creare un nuovo foglio contenente le sole righe selezionate:

.. raw:: html
	:file: ../raw_html/practical-distinctive-20-limited.output.html

Ecco fatto!

Una piccola sfida
-----------------

E se volessimo trovare le specie che sono *sproporzionatamente* coinvolte in collisioni nel loro stato? Come lo faresti? (Suggerimento: si tratta solo di un'altra tabella di frequenze e di un altro *join*).
