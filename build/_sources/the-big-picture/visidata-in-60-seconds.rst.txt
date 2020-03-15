======================
VisiData in 60 secondi
======================

Ecco un'introduzione a VisiData in tre passi.


Passo 1: Usare ``vd`` per aprire un file di dati
------------------------------------------------

Scarica :download:`faa-wildlife-strikes.csv <../datasets/faa-wildlife-strikes.csv>`, un set di dati delle collisioni di velivoli `riportati alla Federal Aviation Administration <https://wildlife.faa.gov/database.aspx>`_ tra il 2010 e la metà de 2016.

Da terminale portati nella cartella in cui hai scaricato il file, quindi lancia il seguente comando:

::

    vd faa-wildlife-strikes.csv

Dovresti vedere qualcosa di simile a quanto segue:

.. raw:: html
    :file: ../raw_html/faa-opened.output.html


Passo 2: Tabella delle frequenze
--------------------------------

Uno dei punti di forza di VisiData è la rapidità con cui ti permette di riassumere i dati. Le tabelle di frequenza sono un ottimo esempio. Per crearne una, premi :kbd:`Shift+F`.

Dovresti vedere qualcosa di simile a quanto segue:

.. raw:: html
    :file: ../raw_html/faa-operator-frequency.output.html


Passo 3: Leggere la pagina del manuale di VisiData
--------------------------------------------------

La "`guida rapida di riferimento di VisiData <http://visidata.org/man/>`_" elenca tutti i comandi e le funzionalità di VisiData. Puoi `leggerla online <http://visidata.org/man/>`_ o accedervi da VisiData premendo il taso :kbd:`F1` o digitando :kbd:`Control-h`:

.. raw:: html
    :file: ../raw_html/faa-manpage.output.html

.. note::

    Se apri il manuale dall'interno di VisiData, esso verrà lanciato nel programma "pager" del terminale — normalmente il `programma less <https://it.wikipedia.org/wiki/Less_(Unix)>`_. Per spostarti all'interno di "less":

    =======================================  =======================
    Combinazione(i) di tasti                 Azione
    =======================================  =======================
    :kbd:`Space` / :kbd:`b`                  Scroll avanti/indietro
    :kbd:`/` + *termine* + :kbd:`Enter`      Cerca *termine*
    :kbd:`n` / :kbd:`N`                      Va a occorrenza prossima/precedente di *termine*
    :kbd:`q`                                 Esce e torna a VisiData
    =======================================  =======================

    Puoi trovare ulteriori comandi `qui <https://en.wikipedia.org/wiki/Less_(Unix)#Frequently_used_commands>`_.
