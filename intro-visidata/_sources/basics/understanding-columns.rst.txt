======================
Comprendere le colonne
======================

Le colonne in VisiData si comportano (anche se non del tutto) come nei programmi per fogli di calcolo e negli ambienti di calcolo statistico. Avere una solida conoscenza di questi ambienti di lavoro ti metterà sulla buona strada per padroneggiare VisiData.

Attributi di base di una colonna
--------------------------------

Ogni colonna di VisiData ha le seguenti proprietà di base, tutte modificabili:

- Nome
- Ampiezza: il numero di caratteri che la colonna occupa sullo schermo
- Tipo: il tipo di dato - testo, intero, float, valuta o data - della colonna

Vedremo altre proprietà di seguito.

Come visualizzare tutte le colonne ed i relativi attributi
----------------------------------------------------------

Per vedere tutte le colonne del set di dati, digita :kbd:`Shift-C`. Si aprirà il "Foglio delle colonne", che elenca ogni colonna ed i relativi attributi. Per il set di dati della FAA dovresti vedere qualcosa del genere:

.. raw:: html
    :file: ../raw_html/columns-00-column-sheet.output.html

Il foglio delle colonne è utile per avere un'idea rapida della struttura del set di dati. Puoi utilizzarlo come qualsiasi altro foglio: per uscire ad esempio dal foglio delle colonne, digita :kbd:`q`.

.. note::

   Il foglio delle colonne è uno dei vari "meta-fogli" di VisiData; il Foglio dei fogli del capitolo precedente ne è un altro esempio. Avrai a che fare con altri meta-fogli in questo tutorial.

Come impostare i tipi di colonna
--------------------------------

VisiData assume che tutti i dati presenti in un foglio siano di tipo testo. Se una colonna è davvero di tipo testo, allora niente male, ma se la colonna contiene valori numerici o date ed intendi fare dei calcoli con questi valori (come ad esempio ordinare, sommare, calcolare medie, ecc.), devi assolutamente specificarne il tipo.

Per impostare il tipo di colonna, spostati sulla colonna stessa e usa una delle seguenti possibilità:

============  ============  =======================
Tasto         Tipo colonna    Esempio
============  ============  =======================
:kbd:`#`      Intero        ``0``, ``-1``, ``5000000``
:kbd:`%`      Float         ``0.5``, ``-3.14``, ``23.45557``
:kbd:`$`      Valuta        ``$4.99``, ``€20``, ``₹ 100 100``
:kbd:`@`      Data          ``2018-04-06``, ``April 6, 2018``, ``04/06/2018``
:kbd:`~`      Testo         blablabla
============  ============  =======================

Il simbolo corrispondente al tipo di dato (ad esempio ``$`` per valuta) apparirà nell'intestazione della colonna.

Ad esempio, ecco cosa dovresti vedere se ti sposti sulla colonna ``HEIGHT`` e digiti :kbd:`#`:

.. raw:: html
    :file: ../raw_html/columns-00a-type-assigned.output.html

.. note::

   Come noterai sopra, se una cella non può essere convertita nel tipo che le è stato assegnato, VisiData visualizzerà ``!`` nel margine destro di quella cella.

Come rinominare una colonna
---------------------------

Per rinominare una colonna, spostati sulla colonna stessa e prosegui come di seguito:

.. raw:: html
    :file: ../raw_html/columns-01-column-nav.output.html

- Digita :kbd:`^` per attivare la modalità di modifica nome colonna:

.. raw:: html
    :file: ../raw_html/columns-02-column-caret.output.html

- Digita il nuovo nome:

.. raw:: html
    :file: ../raw_html/columns-03-column-renaming.output.html

- Premi :kbd:`Invio` per completare l'operazione

.. raw:: html
    :file: ../raw_html/columns-04-column-renamed.output.html

Come ridimensionare o rimuovere le colonne
------------------------------------------

Quando carichi un set di dati, VisiData cercherà di scegliere larghezze ragionevoli per le colonne. Per regolare la larghezza delle colonne, segui le indicazioni seguenti:

========================  ============
Combinazione(i) di tasti  Azione
========================  ============
:kbd:`_`                  Espande la larghezza della **colonna corrente** per adattarla al testo in tutte le righe visibili
:kbd:`g_`                 Espande la larghezza di **tutte le colonne** per adattarla al testo in tutte le righe visibili
:kbd:`z_` + *n*           Imposta la larghezza della colonna corrente a *n* caratteri
:kbd:`-`                  Nasconde la colonna corrente impostando la sua larghezza a ``0``
:kbd:`gv`                 Rende visibili tutte le colonne
:kbd:`z-`                 Riduce di metà la larghezza della colonna corrente
========================  ============


.. note::

   **Che c'entra "z"?**

   Come con ``g``, noterai che molti comandi di VisiData possono essere preceduti da ``z``. L'effetto è tipicamente quello di restringere o di specificare lo scopo dell'azione: ad esempio, :kbd:`-` nasconde una colonna interamente, mentre :kbd:`z-` riduce la sua larghezza di metà.


Come spostare una colonna
-------------------------

Per spostare le colonne in un foglio di VisiData, procedi come di seguito:

========================  ============
Combinazione(i) di tasti  Azione
========================  ============
:kbd:`Shift-H`            Sposta la colonna di una posizione a sinistra
:kbd:`Shift-L`            Sposta la colonna di una posizione a sinistra
========================  ============


.. note::

    In modo simile, puoi usare :kbd:`Shift-J` per muovere una riga di una posizione in giù e :kbd:`Shift-K` di una posizione in su.


Come impostare le colonne "chiave"
----------------------------------

Puoi impostare un numero qualsiasi di colonne come colonne "chiave". Le colonne "chiave" hanno alcune caratteristiche particolari:

- Restano bloccate sul lato sinistro del foglio quando scorri lo stesso orizzontalmente
- Ricevono un **trattamento speciale** in caso di specifiche operazione, come ad esempio quando si fa un *join* di fogli.

Per impostare una colonna come colonna chiave (o viceversa), spostati sulla colonna stessa e digita :kbd:`!`.

Ad esempio, ecco cosa dovresti vedere se ti sposti sulla colonna ``AIRPORT`` del set di dati della FAA:

.. raw:: html
    :file: ../raw_html/columns-05-pre-key.output.html

...  e digiti :kbd:`!`:

.. raw:: html
    :file: ../raw_html/columns-06-post-key.output.html


Lavorare sulle colonne dal Foglio delle colonne
-----------------------------------------------

Puoi fare quasi tutto quanto sopra descritto dal Foglio delle colonne (:kbd:`Shift-C`). Usare il Foglio delle colonne risulta particolarmente utile in caso di set di dati con un numero elevato di colonne: il Foglio dei fogli infatti, ti permette di operare con diverse colonne allo stesso tempo.

- **Spostare le colonne**: nel Foglio delle colonne ogni colonna è rappresentata da una riga; puoi riposizionarla con :kbd:`Shift-J` e :kbd:`Shift-K`.

- **Modificare il nome delle colonne**: per modificare il nome di una colonna, spostati sulla stessa e digita :kbd:`e`.

- **Impostare il tipo di colonna**: puoi selezionare più righe e digitare :kbd:`g$` per, ad esempio, assegnare a tutte le colonne selezionate il tipo di dato ``valuta``.

- **Impostare l'ampiezza della colonna**: modifica il campo ``width`` per impostare la larghezza di una colonna. Puoi assegnare la stessa larghezza a più colonne allo stesso tempo: seleziona le righe delle colonne di tuo interesse e digita :kbd:`ge` + *numero*, dove *numero* indica l'ampiezza desiderata.

Questo, ad esempio, è il Foglio delle colonne del set di dati della FAA prima di quasiasi modifica:

.. raw:: html
    :file: ../raw_html/columns-sheet-00-before-changes.output.html

Ora usa :kbd:`s` per selezionare alcune colonne da cambiare:

.. raw:: html
    :file: ../raw_html/columns-sheet-01-select-columns.output.html

Per associare, ad esempio, il tipo intero a queste colonne, digita :kbd:`g#`:

.. raw:: html
    :file: ../raw_html/columns-sheet-02-assign-type.output.html

Ora spostati sulla colonna ``width`` e digita :kbd:`ge8` + :kbd:`Invio` per dare alle colonne la stessa larghezza:

.. raw:: html
    :file: ../raw_html/columns-sheet-03-assign-width.output.html

Per vedere come questi cambiamenti hanno influenzato il foglio dati, digita :kbd:`q`` per uscire dal foglio delle colonne e spostati sulla colonna ``HEIGHT``:

.. raw:: html
    :file: ../raw_html/columns-sheet-04-after-changes.output.html
