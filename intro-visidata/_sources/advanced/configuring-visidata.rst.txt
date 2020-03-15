====================
Configurare VisiData
====================

Il comportamento di VisiData può essere configurato in diversi modi:

- Tramite gli argomenti da linea di comando di ``vd``
- Tramite il foglio delle opzioni globali
- Tramite fogli opzione specifici per foglio
- Tramite il file ``~/.visidatarc``

Argomenti da linea di comando di ``vd``
---------------------------------------

Quando lanci ``vd`` dalla linea di comando, puoi impostare determinati comportamenti di VisiData tramite gli argomenti.

Per esempio, per dire a VisiData di ignorare le prime tre righe del file di input, puoi puoi usare l'argomento ``skip``:

::

   vd my-spreadsheet.csv --skip 3


Per vedere l'elenco completo delle opzioni configurabili, lancia ``vd -h | less``:


.. raw:: html
    :file: ../raw_html/configuring-00-vd-h.output.html

Premi :kbd:`Spazio` per scorrere la lista.

Il foglio delle opzioni globali
--------------------------------

Puoi impostare la maggior parte delle stesse opzioni (più altre opzioni per il colore e l'aspetto) tramite il "foglio delle opzioni globali". Digita :kbd:`Shift-O` per aprire il foglio. Dovresti vedere qualcosa del genere:

.. raw:: html
    :file: ../raw_html/configuring-01-global-options.output.html

Per personalizzare un'opzione, spostati nella cella ``global_value`` nella riga dell'opzione e digita :kbd:`e` per modificarla. Ad esempio, modificare la larghezza predefinita di una colonna da 20 a 10, spostati sulla riga ``default_width``, quindi fino alla cella ``global_value`` e digita :kbd:`e`, quindi digita ``10`` seguito da :kbd:`Invio`. Dovresti vedere qualcosa di simile a quanto segue:

.. raw:: html
    :file: ../raw_html/configuring-02-global-edited.output.html

Digita :kbd:`q` per uscire dal foglio delle opzioni globali e ritornare al foglio precedente.

Fogli opzione specifici per foglio
----------------------------------

Come suggerisce il nome, le modifiche apportate nel foglio delle opzioni *globali* riguardano l'intera sessione VisiData. Per modificare il comportamento di VisiData per un solo foglio, digita :kbd:`zO` per modificare il "foglio delle opzioni del foglio":

.. raw:: html
    :file: ../raw_html/configuring-03-sheet-options.output.html

Il file ``~/.visidatarc``
--------------------------

I due approcci fin qui descritti hanno effetto solo nella sessione corrente di VisiData: quando esci dal programma, le impostazioni vengono perse.

Per rendere le personalizzazioni persistenti, devi usare il file ``~/.visidatarc``. Apri il file in un editor di tua scelta e, per ogni opzione che vuoi modificare, scrivi ``options.my_example_option = my_custom_value``. Ad esempio:

::

   options.default_width = 10
   options.encoding = "latin-1"
   options.bulk_select_clear = True

... quindi salve il file.

.. note::

   Il file ``~/.visidatarc`` si aspetta che i tuoi comandi siano scritti in Python. Per le impostazioni di base, non importa molto se non conosci Python, purché tu segua lo schema dell'esempio riportato. Ad esempio, le stringhe di caratteri (testo) devono essere scritte tra virgolette ed i valori vero/falso devono essere scritti esattamente come nell'esempio (True o False).

.. note::

   Se conosci Python e sei disposto a familiarizzare con l'`architettura diVisiData <https://github.com/saulpw/visidata/>`_, potrai usare il file ``~/.visidatarc`` per personalizzazioni molto potenti, che vanno oltre la semplice impostazione di opzioni. Potrai, ad esempio, `creare i tuoi propri comandi <https://github.com/saulpw/visidata/blob/stable/docs/customize.md#how-to-configure-commands>`_.
