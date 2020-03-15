====================
Muoversi in VisiData
====================

VisiData è un programma guidato da tastiera. Anche se è possibile usare il mouse per alcuni compiti, la tastiera sarà il tuo cavallo di battaglia. Non fa eccezione spostarsi tra le righe e le colonne di un set di dati.

Spostarsi si un riga/colonna alla volta
---------------------------------------

Puoi usare i tasti freccia della tastiera per spostarti tra le colonne.

In alternativa puoi usare i tasti :kbd:`h`/:kbd:`j`/:kbd:`k`/:kbd:`l` per spostarti a sinistra/sotto/sopra/a destra. (Questa convenzione, come molte altre in VisiData, è `presa in prestito dall'editor di testo vim <http://www.catonmat.net/blog/why-vim-uses-hjkl-as-arrow-keys/>`_.)

Quando si apre per la prima volta un set di dati in VisiData, si parte dall'angolo in alto a sinistra:

.. raw:: html
    :file: ../raw_html/navigation-00-start.output.html

Se premi la freccia in giù e poi la freccia a destra (o rispettivamente :kbd:`j` e poi :kbd:`l`), dovresti vedere i selettori di riga e colonna muoversi:

.. raw:: html
    :file: ../raw_html/navigation-01-single.output.html

Come spostarsi più velocemente
------------------------------

Per spostarti di più righe o colonne alla volta, puoi usare le seguenti combinazioni di tasti:

=================================  =======================
Combinazione(i) di tasti           Muove il cursore ...
=================================  =======================
:kbd:`gj`                          all'ultima riga
:kbd:`gk`                          alla prima riga
:kbd:`gh`                          alla colonna più a sinistra
:kbd:`gl`                          alla colonna più a destra
:kbd:`PageDown`/:kbd:`Control-F`   di una pagina in giù
:kbd:`PageUp`/:kbd:`Control-B`     di una pagina in su
=================================  =======================

.. note::

   **Che c'entra la "g"?**

   Nell'imparare ad usare VisiData, noterai che molti comandi possono essere preceduti dal prefisso ``g``. In generale, il prefisso ``g`` rende più ampio il raggio d'azione di un comando. Puoi pensare a ``g`` come ad un'abbreviazione per "globale".

   Quindi: :kbd:`h` ti porta una colonna a sinistra, mentre :kbd:`gh` *all'ultima colonna a sinistra*.



Come spostarsi tramite la ricerca
---------------------------------

In VisiData puoi spostarti tra le colonne usando le `espressioni regolari <http://2017.compciv.org/guide/topics/regular-expressions/regex-early-overview.html>`_. (Se non hai familiarità con le espressioni regolari, non preoccuparati: immaginale come "termini di ricerca").

.. note::

    Le ricerche in VisiData sono, di default, *case-insensitive*. Puoi§ cambiare questa impostazione nelle `opzioni di VisiData <../../advanced/configuring-visidata>`_.

Per **trovare una riga**, digita questi comandi seguiti da :kbd:`Invio`:

========================  =======================
Combinazione(i) di tasti         Azione
========================  =======================
:kbd:`/` + *regex*        Cerca in avanti nella colonna *corrente*
:kbd:`?` + *regex*        Cerca indietro nella colonna *corrente*
:kbd:`g/` + *regex*       Cerca in avanti in *tutte* le colonne
:kbd:`g?` + *regex*       Cerca indietro in *tutte* le colonne
========================  =======================

Alcuni comandi VisiData, come quelli appena elencati, ti chiederanno di inserire del testo.

Per provare, spostati nella prima colonna del set di dati FAA e digita :kbd:`/`. In basso a sinistra dello schermo, vedrai una ``/``:

.. raw:: html
    :file: ../raw_html/navigation-02-search-prompt.output.html

digita ``united``:

.. raw:: html
    :file: ../raw_html/navigation-03-search-text.output.html

quindi digita :kbd:`Invio`. Il cursore dovrebbe ora trovarsi sulla prima riga in cui è presente il termine "united".:

.. raw:: html
    :file: ../raw_html/navigation-04-search-result.output.html

Una volta eseguita una ricerca, è possibile spostarsi **attraverso tutte le righe contenenti il termine cercato**:

========================  =======================
Combinazione(i) di tasti          Azione
========================  =======================
:kbd:`n`                  Va alla riga successiva contenente il termine
:kbd:`N`                  Va alla riga precedente contenente il termine
========================  =======================

È anche possible **saltare tra colonne**:

========================  =======================
Combinazione(i) di tasti          Azione
========================  =======================
:kbd:`c` + *regex*        Salta alla colonna contenente il termine cercato
========================  =======================

Come spostarsi su un numero di riga/colonna specifico
-----------------------------------------------------

Per andare all'*n-esima* riga o colonna, puoi usare i seguenti comandi:

========================  =======================
Combinazione(i) di tasti          Azione
========================  =======================
:kbd:`zr` + *n*           Va alla riga *n*
:kbd:`zc` + *n*           Va alla colonna *n*
========================  =======================

Spostarsi con il mouse
----------------------

Oltre a usare la tastiera, è possibile usare il mouse o il trackpad per navigare tra le righe:

- **Click** per selezionare qualsiasi riga visibile
- **Scroll** per scorrere le righe
