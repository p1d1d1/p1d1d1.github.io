==================
Riepilogare i dati
==================

In VisiData ci sono tre modi principali per creare dei riepiloghi dei dati: le tabelle delle frequenze, calcoli *una tantum* ed il foglio di descrizione.


Tabelle delle frequenze
-----------------------

Le tabelle delle frequenze sono allo stesso tempo semplici ma molto potenti. Spostati su qualunque colonna e digita :kbd:`Shift-F`. Usando la colonna "OPERATOR" del set di dati FAA, dovresti vedere qualcosa del genere:

.. raw:: html
    :file: ../raw_html/faa-operator-frequency.output.html

Con una sola battuta di tasto, VisiData ci ha già detto qualcosa di utile sul set di dati: ad esempio, che gli "operatori" associati al 31% delle collisioni con la fauna selvatica sono, secondo la FAA, sconosciuti. Abbiamo anche appreso, dal mini-report "bins" in basso a destra dello schermo, che ci sono 282 valori distinti nella colonna "OPERATOR".

Frequenze su colonne multiple
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Potresti essere interessato a statistiche sulla combinazione di determinate colonne: per prima cosa imposta le colonne di tuo interesse a colonne chiave digitando :kbd:`!`, poi digita :kbd:`gF`.

Ad esempio, imposta le colonne "OPERATOR" e "PERSON" a colonne chiave. Dovresti vedere qualcosa di simile a quanto segue:

.. raw:: html
    :file: ../raw_html/summarizing-00-keyed.output.html

Ora digita :kbd:`gF`. Dovresti avere qualcosa del genere:

.. raw:: html
    :file: ../raw_html/summarizing-01-multifreq.output.html

Per agevolare la lettura, usa :kbd:`g_` per ridimensionare automaticamente l'ampiezza delle colonne:

.. raw:: html
    :file: ../raw_html/summarizing-02-multifreq-wider.output.html

Gli "aggregatori"
--------------------

Per impostazione predefinita, le tabelle delle frequenze contano solo il numero di volte che ogni valore appare. Ma in VisiData, è possibile specificare ulteriori calcoli impostando gli "aggregatori" di colonna. In VisiData, ci sono otto aggregatori principali:

- ``min``
- ``max``
- ``avg`` / ``mean``
- ``median``
- ``q3``/``q4``/``q5``/``q10`` (terzili/quartili/quintili/decili)
- ``sum``
- ``distinct``
- ``count``
- ``keymax``

Per aggiungere un aggregatore ad una colonna, spostati sulla colonna stessa e digita :kbd:`+`. VisiData ti chiederà quindi di specificare *quale* aggregatore aggiungere. Puoi ripetere il processo per aggiungere tutti gli aggregatori che vuoi a qualsiasi colonna, ma assicurati di assegnare il giusto tipo di dato alle colonne (ad esempio ``#`` per colonne con valori interi).

Una volta impostati gli aggregatori, i calcoli relativi appariranno nelle tabelle delle frequenze.

Per esempio, torna la foglio originale della FAA. Spostati sulla colonna "COST_REPAIRS" e procedi come di seguito:

- Digita :kbd:`#` per assegnare alla colonna il tipo di dato *intero*
- Digita :kbd:`+` per aggiungere un aggregatore
- Digita ``sum`` e premi :kbd:`Invio` per aggiungere una aggregatore di somma
- Spostati sulla colonna "AIRPORT" e digita :kbd:`Shift-F`

Dovresti vedere qualcosa si simile a quanto segue:

.. raw:: html
    :file: ../raw_html/summarizing-03-freq-aggregated.output.html

Le tabelle delle frequenze sono ordinate in base alla colonna "count", ma puoi ordinarle in base a qualsiasi altra colonna.

Calcoli *una tantum*
--------------------

Puoi inoltre eseguire un calcolo su tutte le righe - o su tutte le righe selezionate - in una colonna. Per farlo, spostati sulla colonna specifica e digita :kbd:`z+`, che mostrerà lo stesso prompt di scelta dell'aggregatore come sopra. Digita l'aggregatore desiderato e premi :kbd:`Invio`. Vedrai il risultato del calcolo nella parte inferiore dello schermo.

Provalo con i dati della FAA. Spostati sulla colonna "COST_REPAIRS" e fai quanto segue:

- Digita :kbd:`#` per assegnare alla colonna il tipo di dato *intero*
- Digita :kbd:`z+` per vedere il risultato di una aggregatore
- Digita ``sum`` e premi :kbd:`Invio`

Nella parte inferiore dello schermo il risultato del calcolo ti indicherà che il costo totale *segnalato* è $161,868,071:

.. raw:: html
    :file: ../raw_html/summarizing-04-one-off-calcs.output.html


Riepilogo globale
-----------------------

Per avere una visione d'insieme dell'intero set di dati, puoi usare :kbd:`Shift-I`. Riceverai delle statistiche riassuntive per ciascuna delle colonne presenti nel set di dati:

.. raw:: html
    :file: ../raw_html/summarizing-05-describe-sheet.output.html

:kbd:`Shift-I` ti restituisce quello che in VisiData si chiama "Foglio di descrizione". Noterai che ci sono solo i calcoli min/max/median/etc. per la colonna ``COST_REPAIRS``, visto che è l'unica colonna a cui hai assegnato un tipo di dato. Se torni al foglio dei dati, imposti anche ``HEIGHT``, ``SPEED`` e ``BIRDS_STRUCK`` come campi numerici e digiti :kbd:`Shift-I`, dovresti vedere qualcosa di simile a quanto segue:

.. raw:: html
    :file: ../raw_html/summarizing-06-describe-sheet-typed.output.html
