================================
Dare una nuova forma ai dati
================================

VisiData offre diversi modi per *dare una nuova forma* ai dati:

- Tabelle pivot
- Fusione di set di dati
- Trasposizione di colonne e righe

Creare tabelle pivot
---------------------

Le tabelle pivot di VisiData sono simili alle tabelle pivot che potresti aver creato in vari programmi di fogli di calcolo. Le tabelle pivot creano una tabulazione incrociata di due o più colonne in un set di dati.

Puoi creare una tabella pivot con i seguenti passaggi:

- Usa :kbd:`!` per impostare le colonne che vuoi utilizzare come righe della tabella pivot
- *Opzionale*: usa :kbd:`+` per specificare metriche aggiuntive che si desidera calcolare nella tabella pivot. (Per impostazione predefinita, l'unica metrica della tabella pivot sarà il conteggio complessivo per ciascun raggruppamento)
- Spostati sulla colonna che vuoi utilizzare come colonne della tabella pivot
- Digita :kbd:`Shift-W`

Diciamo che vogliamo fare un'analisi incrociata delle specie in base al fatto che i loro resti siano stati raccolti o meno. Per prima cosa, designiamo la colonna ``SPECIES`` come colonna chiave:

.. raw:: html
    :file: ../raw_html/reshaping-00-keycol.output.html

Quindi spostati sulla colonna ``REMAINS_COLLECTED`` con :kbd:`l` o usando le frecce della tastiera o ancora digitando :kbd:`c` seguito da ``REMAINS`` e da :kbd:`Invio`:

.. raw:: html
    :file: ../raw_html/reshaping-01-navigate.output.html

Ora digita :kbd:`Shift+W` per creare la tabella pivot:

.. raw:: html
    :file: ../raw_html/reshaping-02-pivot.output.html

... e :kbd:`g_` per regolare automaticamente la larghezza delle colonne:

.. raw:: html
    :file: ../raw_html/reshaping-03-pivot-adj.output.html

Le righe della tabella pivot rappresentano ogni specie, mentre le colonne rappresentano il numero di righe per ogni specie che rientrano nella categoria ``REMAINS_COLLECTED``, più un totale complessivo.

Questa è una tabella pivot semplice, poiché ``REMAINS_COLLECTED`` ha solo i due valori ``0`` o ``1``, ma le tabelle pivot su colonne più complesse possono finire per essere molto più grandi.

.. note::

   L'ordine delle colonne di una tabella pivot si basa sull'ordine in cui i valori rilevanti appaiono nel foglio sorgente. Se invece si vuole che appaiano in ordine alfabetico, ordinare prima la colonna o le colonne rilevanti del foglio sorgente.

Fusione di set di dati
----------------------

"Fondere" un set di dati significa rimodellarlo da un formato "ampio" a un formato "lungo", in particolare convertendo ciascun valore in ciascuna colonna nella propria riga. Se tale concetto non è familiare, l'esempio che segue dovrebbe aiutare a capire.

La fusione di un set di dati in VisiData prevede i seguenti passaggi:

- *Opzionale*: usa :kbd:`!` per determinare le colonne che si desidera mantenere non fuse
- *Opzionale*: usa :kbd:`-` per nascondere le colonne che non vuoi nel foglio fuso
- Digita :kbd:`Shift+M`

Se salti i passaggi opzionali, digitando :kbd:`Shift-M` sul set di dati originale ``faa-wildlife-strikes.csv``, verrà creato il seguente foglio fuso:

.. raw:: html
    :file: ../raw_html/reshaping-04-simple-melt.output.html

Ora esaminiamo come i passaggi opzionali influenzano la fusione. Digita :kbd:`q` per ritornare al foglio originale e digita :kbd:`!` sulle prime due colonne (``OPERATOR`` e ``ATYPE``):

.. raw:: html
    :file: ../raw_html/reshaping-05-keyed.output.html

Quindi usa :kbd:`-` (o il Foglio delle colonne) per nascondere tutte le altre colonne, tranne ``STATE`` e ``AIRPORT``:

.. raw:: html
    :file: ../raw_html/reshaping-06-hidden.output.html

Ora digita :kbd:`Shift-M`. Nel foglio fuso risultante, ``OPERATOR`` e ``ATYPE`` (le due colonne chiave) rimangono colonne standard, mentre ``STATE`` e ``AIRPORT`` sono state convertire in coppie ``Variabile-Valore``:

.. raw:: html
    :file: ../raw_html/reshaping-07-melted.output.html


Trasporre colonne e righe
--------------------------

In VisiData, puoi digitare :kbd:`Shift-T` per "trasporre" qualsiasi foglio, essenzialmente ruotando la struttura di 90 gradi, in modo che le righe siano rappresentate come colonne e le colonne come righe.

Digitando :kbd:`Shift-T` sul set di dati originale ``faa-wildlife-strikes.csv`` dovresti avere il seguente risultato:

.. raw:: html
    :file: ../raw_html/reshaping-08-transpose.output.html

Se il foglio di origine ha una colonna chiave, i valori in quella colonna diventeranno le intestazioni del foglio trasposto. Questa è ad esempio la tabelle delle frequenze (:kbd:`Shift-F`) per la colonna ``OPERATOR``:

.. raw:: html
    :file: ../raw_html/reshaping-09-freq.output.html

``OPERATOR`` è colonna chiave, quindi la trasposizione di questo foglio dovrebbe risultare in qualcosa del genere:

.. raw:: html
    :file: ../raw_html/reshaping-10-freq-trans.output.html

.. note::

   Se il foglio di origine ha colonne chiave *multiple*, VisiData concatenerà i valori delle colonne con un carattere ``_`` per creare i nomi delle intestazioni.
