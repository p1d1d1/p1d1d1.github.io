===========================
Un'introduzione a VisiData
===========================

`VisiData <http://visidata.org/>`_ è uno strumento open source che consente di **aprire, esplorare, riassumere ed analizzare** velocemente dati con il **terminale**. VisiData funziona con file CSV, fogli di calcolo Excel, database SQL e `moltissime altre fonti <basics/opening-files/#compatible-filetypes>`_. L'interfaccia ha l'aspetto seguente:

.. raw:: html
    :file: raw_html/faa-operator-frequency.output.html

VisiData è il primo strumento che utilizzo per avere velocemente un'idea di un nuovo set di dati. Penso che potrebbe piacere anche a te.


Informazioni su questo tutorial
-------------------------------

.. note::

    Questo tutorial non è ufficialmente affiliato a VisiData e non è inteso come un riferimento completo. Puoi saperne di più su VisiData da queste fonti ufficiali:

    - `VisiData.org <https://visidata.org/>`_
    - `Repository GitHub di VisiData <https://github.com/saulpw/visidata>`_
    - `Pagine Patreon di Saul Pwanson <https://www.patreon.com/saulpw>`_
    - `I casi di studio di Saul Pwanson's su YouTube <https://www.youtube.com/playlist?list=PLxu7QdBkC7drrAGfYzatPGVHIpv4Et46W>`_


Struttura del tutorial
^^^^^^^^^^^^^^^^^^^^^^

Il tutorial è strutturato in cinque sezioni:

====================== 	===========================================  ================
Sezione                	 Descrizione                                  Stato
====================== 	===========================================  ================
Il quadro generale     	Se non leggete nient'altro ...               Bozza completa
Uso di base            	Tutto quello che dovete sapere per iniziare  Bozza completa
Uso intermedio         	Alcune delle *power-features* più pratiche   Bozza completa
Uso avanzato           	Come piegare VisiData ai vostri capricci     Due capitoli in bozza
Esempi pratici         	Step-by-step walkthroughs                    Due capitoli in bozza
====================== 	===========================================  ================

Stato del tutorial
^^^^^^^^^^^^^^^^^^

======================  ================
Ultimo aggiornamento    ``2019-08-15``
Versione di VisiData    ``1.5.2``
======================  ================

Informazioni sull'autore
------------------------

`Jeremy Singer-Vine <https://www.jsvine.com/>`_ è `data editor <https://github.com/BuzzFeedNews/everything>`_ presso `BuzzFeed News <https://www.buzzfeednews.com/>`_. Pubblica `Data Is Plural <https://tinyletter.com/data-is-plural>`_, una newsletter settimanale su dati utili e *curiosi*.

Feedback / domande / correzioni?
-----------------------------------

Per fornire un feedback a questa traduzione, `apri un issue <https://github.com/p1d1d1/intro-visidata/issues>`_.

Per quanto riguarda la versione originale in inglese fai riferimento al repository di `Jeremy <https://github.com/jsvine/intro-to-visidata>`_.

Riconoscimenti
---------------

Molte grazie alle seguenti persone per il loro feedback, i loro suggerimenti e le loro correzioni: `Saul Pwanson <http://saul.pw/>`_, `Anja Kefala <https://github.com/anjakefala>`_, `John Templon <https://twitter.com/jtemplon>`_, `Scott Pham <https://twitter.com/scottpham>`_, `Andrea Borruso <https://github.com/aborruso>`_.


.. toctree::
    :maxdepth: 1
    :hidden:

    Informazioni su questo tutorial <self>

.. toctree::
    :caption: Il quadro generale
    :maxdepth: 1
    :hidden:

    the-big-picture/what-is-visidata
    the-big-picture/installation
    the-big-picture/visidata-in-60-seconds

.. toctree::
    :caption: Uso di base
    :maxdepth: 1
    :hidden:

    basics/getting-out-of-trouble
    basics/opening-files
    basics/navigating-visidata
    basics/understanding-sheets
    basics/understanding-rows
    basics/understanding-columns
    basics/sorting-and-filtering
    basics/summarizing-data
    basics/working-with-excel
    basics/saving-sheets

.. toctree::
    :caption: Uso intermedio
    :maxdepth: 1
    :hidden:

    intermediate/creating-new-columns
    intermediate/joining-sheets
    intermediate/reshaping-data
    intermediate/large-files

.. toctree::
    :caption: Uso avanzato
    :maxdepth: 1
    :hidden:

    advanced/configuring-visidata
    advanced/extending-visidata
    advanced/debugging-visidata
    advanced/the-command-log

.. toctree::
    :caption: Esempi pratici
    :maxdepth: 1
    :hidden:

    practical/high-flying-birds
    practical/distinctive-birds
