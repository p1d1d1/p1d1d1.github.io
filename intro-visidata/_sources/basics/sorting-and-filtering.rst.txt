=====================
Ordinare e filtrare
=====================

Ora che si hanno a portata di mano fogli, righe e colonne, passiamo alle operazioni elementari sui dati: l'ordinamento e il filtraggio delle righe.

Come ordinare le righe
----------------------

I tasti :kbd:`[` e :kbd:`]` ordinano le righe in ordine crescente e decrescente, rispettivamente.

Ad esempio, potresti fare quanto segue con il set di dati FAA:

- Spostati sulla colonna ``COST_REPAIRS``
- Digita :kbd:`#` per dire a VisiData che si tratta di una colonna numerica
- Digita :kbd:`]` per ordinare la colonna in ordine decrescente — cioè dal valore più alto a quello più basso

Dovresti vedere qualcosa di simile a quanto segue:

.. raw:: html
    :file: ../raw_html/sorting-00-descending.output.html

.. note::

    Puoi ordinare anche più colonne allo stesso tempo. Spostati sulla prima colonna di tuo interesse e digita :kbd:`!`, quindi spostati su un'altra colonna e digita di nuovo :kbd:`!`. Per ordinare digita :kbd:`g[` (crescente) o :kbd:`g]` (decrescente).

Come filtrare le righe
----------------------

Hai diversi modi per filtrare i dati in VisiData:

- Selezione di riga + :kbd:`"`
- Tabelle di frequenza + :kbd:`Invio`
- Tabelle di frequenza + selezione di riga + :kbd:`"`

Vediamo di seguito le varie possibilità.

Filtrare le righe selezionate con :kbd:`"`
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In VisiData il tasto :kbd:`"` ti permette di creare una copia del foglio corrente contenente solo "le righe selezionate*.

Quindi per visualizzare solo gli urti con la fauna selvatica che coinvolgono i falchi, potresti fare quanto segue:

- Spostati sulla colonna ``SPECIES``
- Digita :kbd:`|` per selezionare tramite ricerca e digita ``hawk``, quindi digita :kbd:`Invio`

A questo punto, dovresti vedere qualcosa di simile a quanto segue:

.. raw:: html
    :file: ../raw_html/filtering-00-search.output.html

Digita :kbd:`"`; dovresti vedere qualcosa di simile a quanto segue:

.. raw:: html
    :file: ../raw_html/filtering-01-push.output.html

.. note::

   Se nel foglio corrente non c'è **nessuna riga** selezionata, il tasto :kbd:`"` creerà una copia dell'**intero foglio**.

Filtrare tramite tabelle di frequenza
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Da qualsiasi riga di qualsiasi tabella di frequenza, si può digitare :kbd:`Invio` per creare un nuovo set di dati contenente le sole righe corrispondenti al valore di frequenza.

Quindi per visualizzare solo gli urti con la fauna selvatica che si sono verificati in California, potresti fare quanto segue:

- Spostati sulla colonna ``STATE``
- Digita :kbd:`Shift-F` per creare una tabella di frequenza
- Spostati di due righe in basso nella riga con il valore ``CA``

A questo punto, dovresti vedere qualcosa di simile a quanto segue:

.. raw:: html
    :file: ../raw_html/filtering-02-freq-before.output.html

Da qui, digita :kbd:`Invio` per creare il foglio filtrato:

.. raw:: html
    :file: ../raw_html/filtering-03-freq-after.output.html


Usare le tabelle di frequenza per selezionare (e filtrare) in base a più valori
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

L'approccio di cui sopra è ottimo se si vuole fare un *drill down* sulle righe dove un campo equivale ad un particolare valore. Ma cosa fare se si vuole includere più valori diversi? Lo si può fare attraverso una combinazione delle tecniche di cui sopra. In particolare: seleziona le righe della tabella delle frequenze che ti interessano, torna al foglio principale e poi filtra con :kbd:`"`.

Ecco un esempio pratico con il set di dati FAA. Diciamo che intendi filtrare gli urti con la fauna selvatica secondo i cinque aeroporti che riportano il maggior numero di eventi. Potresti proseguire come segue:

- Torna al foglio principale e digita :kbd:`gu` per far si che nessuna riga sia selezionata. Spostati sulla colonna ``AIRPORT`` e digita :kbd:`Shift-F` per creare una tabella di frequenza:

.. raw:: html
    :file: ../raw_html/filtering-04-freq-airport.output.html

- Seleziona, quindi, le prime ciqnue voci (saltando ``UNKNOWN``):

.. raw:: html
    :file: ../raw_html/filtering-05-freq-multiselect.output.html

- In seguito, digita :kbd:`q` per uscire dalla tabella di frequenza e ritornare al foglio precedente. Dovresti vedere quanto segue:

.. raw:: html
    :file: ../raw_html/filtering-06-freq-data-post-multiselect.output.html

- Infine, digita :kbd:`"` per creare un nuovo foglio filtrato e con le sole righe selezionate.

.. raw:: html
    :file: ../raw_html/filtering-07-freq-filter-post-multiselect.output.html
