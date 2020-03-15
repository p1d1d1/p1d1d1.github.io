====================
Comprendere i Fogli
====================

Il flusso di lavoro di VisiData ruota intorno ai "fogli". Come per i tradizionali programmi di foglio di calcolo, i fogli di VisiData sono composti da **colonne** e **righe**.

Ma VisiData porta il concetto di foglio ad un livello superiore. In VisiData, quasi *tutto* - anche il pannello delle impostazioni del programma - è un foglio.

In VisiData ci sono tre tipi di fogli:

- Fogli sorgente
  - I dati che hai caricato in VisiData

- Fogli derivati
  - Fogli che si basano sui dati contenuti nei fogli sorgente, some ad esempio una tabella di frequenza o un sottoinsieme di righe filtrate.

- *Meta*-fogli
  - Sono fogli che ti aiuteranno nella navigazione e personalizzazione di VisiData. Due dei più potenti sono il "Foglio dei fogli" (discusso di seguito) ed il "Foglio delle colonne" (discusso in "Capire le colonne").


Come usare il Foglio dei fogli
------------------------------

Il Foglio dei fogli elenca tutti i fogli aperti in VisiData e permette di passare facilmente da un foglio all'altro.

Per aprire il Foglio dei fogli digita :kbd:`Shift-S`.

Se hai appena lanciato VisiData con un singolo set di dati, digitando :kbd:`Shift-S` si aprirà un foglio di fogli simile a quanto segue:

.. raw:: html
   :file: ../raw_html/faa-simple-sheets-sheet.output.html

Niente di speciale per il momento, ma non appena inizierai a destreggiarti tra più fogli, tabelle di frequenza e vari file, il Foglio dei fogli ti sarà sicuramente di aiuto.

Puoi spostarti nel Foglio dei fogli proprio come faresti con un qualsiasi altro foglio, con una differenza principale: prmendo :kbd:`Invio` si aprirà il foglio selezionato.

.. warning::

   Digitando :kbd:`d` su una riga del Foglio dei fogli si invierà il foglio al "cimitero dei fogli".

Come rinominare un foglio
-------------------------

Ci sono due modi per rinominare un foglio:

- Apri il **Foglio dei fogli** e spostati sulla riga del foglio che vuoi rinominare. Digita :kbd:`e` per attivare la modalità di modifica, digita il nuovo nome e premi :kbd:`Invio` per completare l'operazione.

- Se già ti trovi all'interno del **foglio che vuoi rinominare**, premi :kbd:`Spazio` per attivare il prompt dei comandi, quindi digita ``rename-sheet`` seguito da :kbd:`Invio`. Al prompt successivo, digita il nuovo nome e premi :kbd:`Invio` per completare l'operazione.

Come chiudere/rimuovere un foglio
---------------------------------

Per chiudere il foglio corrente (rimuovendolo da VisiData), digita :kbd:`q`.

Per chiudere tutti i fogli (e quindi chiudere VisiData), digita :kbd:`gq`.

Per accedere al "cimitero dei fogli", l'elenco dei fogli recentemente chiusi, digita :kbd:`gS`.

Passare rapidamente da un foglio all'altro
------------------------------------------

Per passare dal foglio corrente a quello precedente, digita :kbd:`Control-^`.
