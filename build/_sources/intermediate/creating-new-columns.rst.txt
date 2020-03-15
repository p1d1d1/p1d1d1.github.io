====================
Creare nuove colonne
====================

In qualsiasi foglio VisiData è possibile creare nuove colonne sulla base di colonne preesistenti. Di seguito tre dei modi più utili:

- Espressioni (come le funzioni in Excel)
- Divisioni (suddivisione di una colonna di testo in più colonne)
- Cattura (estrazione di un pezzo di una colonna di testo)

Come creare una colonna espressione
-----------------------------------

Le colonne espressione **valutano** una certa espressione Python per ogni riga del set di dati.

Queste espressioni possono fare riferimento a qualsiasi colonna del set di dati (purché il nome della colonna contenga solo lettere, sottolineature e numeri e non inizi con un numero).

.. note::

    Se non hai familiarità con Python, non preoccuparti. Troverai una panoramica di espressioni semplici e pratiche  `qui <https://docs.python.org/3/tutorial/introduction.html>`_.

Puoi creare una colonna espressione digitando :kbd:`=`. Al prompt digita un'espressione e digita :kbd:`Invio`.

Forse la colonna espressione più semplice è ``=1``: il valore della colonna sarebbe ``1`` per ogni riga:

.. raw:: html
    :file: ../raw_html/newcols-00-simple.output.html

.. note::

   Il nome delle nuove colonne espressione sarà l'espressione utilizzata. Puoi modificare il nome della colonna digitando :kbd:`^` seguito dal nuovo nome.

   Inoltre, la colonna apparirà direttamente a destra della colonna che era attiva quando hai digitato :kbd:`=`. Puoi spostare la colonna a destra o a sinistra usando :kbd:`Shift-H` e :kbd:`Shift-L`.

Ora vediamo come creare una colonna *basata su un'altra colonna*. Diciamo che vogliamo identificare le collisioni con la fauna selvatica che sono state segnalate come avvenute ad almeno 100 piedi da terra:

- Spostati sulla colonna ``HEIGHT``
- Digita :kbd:`#` per assegnare il tipo di dato "intero" alla colonna
- Digita :kbd:`=` per attivare il prompt "new column expr="
- Al prompt digita ``HEIGHT >= 100``
- Premi :kbd:`Invio`

Dovresti vedere qualcosa di simile a quanto segue:

.. raw:: html
    :file: ../raw_html/newcols-01-operator.output.html

Creare nuove colonne dividendone un'altra
-----------------------------------------

Puoi dividere il testo di una qualsiasi colonna di VisiData in due o più colonne, sulla base di uno schema (cioè una "espressione regolare", ovvero ovvero una "regex").

Per dividere una colonna, spostati sulla stessa e digita :kbd:`:` per attivare il prompt ``split regex:```. Inserisci lo schema di divisione desiderato e premi :kbd:`Invio`.

Diciamo ad esempio di voler utilizzare il testo disponibile nella colonna ``INCIDENT_DATE`` per creare due nuove colonne, una contenente la data e l'altra l'ora. Puoi proceder come di seguito:

- Spostai sulla colonna ``INCIDENT_DATE``
- Digita :kbd:`:`
- Al prompt premi :kbd:`Spazio` (ti permetterà di separare il testo in base agli sazi tra le parole) seguito da :kbd:`Invio`

Dovresti vedere qualcosa di simile a quanto segue:

.. raw:: html
    :file: ../raw_html/newcols-02-split.output.html

.. note::

   Il numero di nuove colonne è determinato dalla riga attiva. Ad esempio, dividere in base al carattere ``-`` creerebbe due nuove colonne se il valore della colonna per la riga attiva fosse ``see-saw``; ne creerebbe invece tre nel caso di ``merry-go-round``.


Creare una nuova colonna *catturandola* da un'altra
---------------------------------------------------

.. note::

   Questo approccio richiede un po' più di conoscenza delle "espressioni regolari". Se non ĥai familiarità con le espressioni regolari e non vuoi impararle adesso, sentiti libero di passare al capitolo successivo.

Proprio come si può dividere una colonna usando :kbd:`:`, si può estrarre parte di una colonna (e salvarla in un'altra colonna) utilizzando :kbd:`;`.

Ad esempio, cerchiamo di estrarre le cifre dalla colonna del tipo di aereo (ad esempio ``28`` da ``PA-28``, ``46`` da ``PA-46 MALIBU`` e ``717`` da ``B-717-200``). Procedi come di seguito:

- Spostati sulla colonna ``ATYPE``
- Digita :kbd:`;`
- Al prompt digita ``(\d+)`` (con una serie di parentesi per ogni gruppo di cattura) seguito da :kbd:`Invio`

Dovresti vedere qualcosa di simile a quanto segue:

.. raw:: html
    :file: ../raw_html/newcols-03-capture.output.html
