===============================
Estendere VisiData con i Plugin
===============================

A partire dalla `versione 1.5 <https://github.com/saulpw/visidata/releases/tag/v1.5>`_, VisiData supporta i plugin.

Come installare un plugin
-------------------------

Per installare un plugin devi come prima cosa mettere a disposizione di VisiData il plugin stesso. La procedura può variare in funzione del plugin: alcuni plugin vanno salvati nella cartella ``~/.visidata/``, altri vanno installati lanciando ``pip install [nome del pacchetto del plugin]``. 

In seguito, devi usare ``il file di configurazioen ~/.visidatarc`` per importare il plugin. Se hai salvato il plugin come ``~/.visidata/myplugin.py``, allora devi semplicemente aggiungere la linea ``import myplugin`` al file di configurazione.

Esempio
^^^^^^^

Proviamo ad installare il plugin `"vddedupe" <https://github.com/jsvine/visidata-plugins>`_:

- Apri questo `file <https://raw.githubusercontent.com/jsvine/visidata-plugins/master/plugins/vddedupe.py>`_ nel tuo browser e salvalo come ``~/.visidata/vddedupe.py`` sul tuo computer
- Apri il ``file ~/.visidatarc``, aggiundi ``import vddedupe`` su una nuova linea e salva il file.

Riavvia VisiData e dovresti avere accesso a due nuovi comandi: ``select-duplicate-rows`` e ``dedupe-rows``.

Diamo un'occhiata al plugin. Scarica :download:`dedupe-example.csv <../datasets/dedupe-example.csv>` ed aprilo in VisiData:

::

   vd dedupe-example.csv

Dovresti vedere qualcosa del genere:

.. raw:: html
    :file: ../raw_html/extending-00-example.output.html

Premi :kbd:`Spazio` ed al prompt digita ``dedupe-rows``:

.. raw:: html
    :file: ../raw_html/extending-01-longname.output.html

Premi :kbd:`Invio` per eseguire il comando. Ora dovresti vedere una nuova copia del foglio, ma con le righe duplicate rimosse:

.. raw:: html
    :file: ../raw_html/extending-02-deduped.output.html


Dove trovare i plugin
---------------------

Il supporto dei plugin è una caratteristica relativamente nuova di VisiData, quindi non ci sono ancora molti plugin disponibili. Ecco una lista (probabilmente incompleta) di risorse:

- `jsvine/visidata-plugins <https://github.com/jsvine/visidata-plugins>`_
- `anjakefala/vd-plugins <https://github.com/anjakefala/vd-plugins>`_

.. warning::

   Come per qualsiasi software scaricato, i plugin possono contenere codice dannoso. Quindi fai attenzione a cosa installi, sopratutto se non sei sicuro della fonte!
