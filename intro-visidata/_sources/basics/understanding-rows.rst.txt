====================
Comprendere le righe
====================

Le righe in VisiData sono piuttosto semplici. Le cose più importanti che devi sapere sono come selezionarle / deselezionarle, spostarle e modificarne le celle.

Selezionare e deselezionare le righe
------------------------------------

Molti comandi di VisiData, come il filtraggio, distinguono tra righe selezionate e non selezionate. Puoi selezionare e deselezionare le righe in diversi modi.

Una riga alla volta
^^^^^^^^^^^^^^^^^^^

========================  ============
Combinazione(i) di tasti  Azione
========================  ============
:kbd:`s`                  Seleziona la riga corrente
:kbd:`u`                  Deseleziona la riga corrente
:kbd:`t`                  Alterna tra selezione/deselezione
========================  ============

Per esempio, digitando :kbd:`s` sulla seconda riga del set di dati FAA dovrebbe avere il seguente effetto:

.. raw:: html
   :file: ../raw_html/rows-00-select-single.output.html

Tutte le righe allo stesso tempo
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

========================  ============
Combinazione(i) di tasti  Azione
========================  ============
:kbd:`gs`                 Seleziona tutte le righe
:kbd:`gu`                 Deseleziona tutte le righe
:kbd:`gt`                 Alterna tra selezione/deselezione
========================  ============

Tramite schemi di corrispondenza
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

========================  ============
Combinazione(i) di tasti  Azione
========================  ============
:kbd:`|` + *term*         Seleziona le righe dove il valore della **colonna corrente** corrisponde a *term*
:kbd:`\\` + *term*        Deseleziona le righe dove il valore della **colonna corrente** corrisponde a *term*
:kbd:`g|` + *term*        Seleziona le righe con corrispondenze di *term* in **qualsiasi** colonna
:kbd:`g\\` + *term*       Deseleziona le righe con corrispondenze di *term* in **qualsiasi** colonna
:kbd:`,`                  Selezionare tutte le righe in cui la **colonna corrente** corrisponde al valore della cella corrente
:kbd:`g,`                 Selezionare tutte le righe corrispondenti alla **riga corrente** (per tutte le colonne non nascoste)
========================  ============

Se ad esempio fai quanto segue:

- Spostati sulla colonna ``STATE``
- Digita :kbd:`|`
- Digita ``TX``
- Premi :kbd:`Invio`

... dovresti vedere qualcosa del genere:

.. raw:: html
   :file: ../raw_html/rows-01-select-pattern.output.html

Tramite espressioni
^^^^^^^^^^^^^^^^^^^

In VisiData, è possibile selezionare le righe valutando una data **espressione** Python per ogni riga del set di dati.

.. note::

   Se non hai familiarità con Python, non preoccuparti. Troverai una panoramica di espressioni semplici e pratiche  `qui <https://docs.python.org/3/tutorial/introduction.html>`_.

Queste espressioni possono fare riferimento a qualsiasi colonna del set di dati (purché il nome della colonna contenga solo lettere, sottolineature e numeri e non inizi con un numero). I due tasti da usare sono :kbd:`z|` e :kbd:`z\\`:

========================  ============
Combinazione(i) di tasti  Azione
========================  ============
:kbd:`z|` + *expr*        Seleziona le righe dove *expr* risulta ``Vero``
:kbd:`z\\` + *expr*       Deseleziona le righe dove *expr* risulta ``Vero``
========================  ============

Se ad esempio fai quanto segue:

- Digita :kbd:`gu` per deselezionare tutte le righe
- Digita :kbd:`z|`
- Digita ``OPERATOR == "BUSINESS" and STATE == "FL"``
- Premi :kbd:`Invio`

... dovresti vedere qualcosa del genere:

.. raw:: html
   :file: ../raw_html/rows-02-select-expr.output.html


Spostare le righe
-----------------

Puoi riposizionare una riga verso l'alto o verso il basso utilizzando i seguenti comandi:

========================  ============
Combinazione(i) di tasti  Azione
========================  ============
:kbd:`Shift-J`            Sposta la riga in su di una posizione
:kbd:`Shift-K`            Sposta la riga in giù di una posizione
========================  ============


Modificare le celle di una riga
-------------------------------

Anche se non si intende modificare i dati originali, sapere come modificare le celle sarà comunque utile, poiché praticamente *tutto* - comprese le impostazioni - in VisiData è rappresentato da righe e colonne.

Ecco alcuni comandi di base:

========================  ============
Combinazione(i) di tasti  Azione
========================  ============
:kbd:`e`                  Attiva la modifica sulla cella corrente
:kbd:`Invio`              Termina la modifica
:kbd:`Control-c`          Annulla la modifica
:kbd:`Control-a`          Ti porta all'inizio di una linea
:kbd:`Control-e`          Ti porta alla fine di una linea
:kbd:`Control-k`          Cancella il contenuto dalla posizione del cursore fino a fine linea
========================  ============

Altri tasti, come ``Cancella``, i caratteri standard e i tasti delle frecce funzionano come previsto. Puoi trovare una manciata di comandi speciali aggiuntivi in `Quick reference <http://visidata.org/man/>`_.
