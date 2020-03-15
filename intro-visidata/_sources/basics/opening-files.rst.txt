=============
Aprire i file
=============

La prima cosa che impareremo è la più elementare: come aprire (e chiudere) un set di dati in VisiData.

Come aprire un file
-------------------

Il modo più semplice per aprire un file in VisiData è quello di specificarlo direttamente quando si invoca il comando ``vd``:

::

    vd faa-wildlife-strikes.csv

Se hai scaricato il file :download:`faa-wildlife-strikes.csv <../datasets/faa-wildlife-strikes.csv>` ed hai lanciato il comando come appena descritto, dovresti vedere questo:

.. raw:: html
    :file: ../raw_html/faa-opened.output.html

Vediamo nel dettaglio:

- Riga in alto
    - Mostra le colonne nel set di dati (quelle che rientrano nello schermo)
- Riga in basso
    - Ti dice quale file stai vedendo (``faa-wildlife-strikes`` a sinistra) e ti fornisce altre informazioni come lo stato ed il numero di righe.

- Colonna e riga evidenziate
    - Indica la posizione attuale all'interno del set di dati.

.. note::

    A seconda della dimensione de vostro terminale vedrete più/meno colonne e righe.


Come chiudere un file
---------------------

Per chiudere un file digita :kbd:`q`.

Se hai aperto più file puoi chiuderli tutti digitando :kbd:`gq`.


Come specificare il formato file
--------------------------------

VisiData stima il tipo di file che cerchi di aprire in base all'estensione del file stesso. Ad esempio, cercherà di aprire ``my-csv-data.xlsx`` come file Excel. Per sovrascrivere questa impostazione predefinita, puoi specificare il tipo di file con il flag ``--filetype``. Esempio:

::

    vd my-csv-data.xlsx --filetype csv


O con la versione più corta ``-f``:

::

    vd my-csv-data.xlsx -f csv


.. _compatible-filetypes:

Tipi di file compatibili
------------------------

VisiData può aprire tutta una serie di tipi di file, tra cui:

Dati tabellari
^^^^^^^^^^^^^^

- File CSV e qualsiasi altro formato *delimiter-separated*
- Fogli Excel (richiede ``pip3 install xlrd openpyxl``)
- File a larghezza fissa
- Database SQLite
- Database Postgres (richiede ``pip3 install psycopg2``)
- File HDF5 (richiede ``pip3 install h5py``)
- File .sas7bdat (richiede ``pip3 install sas7bdat``)
- File .xpt (richiede ``pip3 install xport``)
- File .sav (richiede ``pip3 install savReaderWriter``)
- File .dta (richiede ``pip3 install pandas``)

Dati *nested*
^^^^^^^^^^^^^

- JSON / JSONL
- XML (richiede ``pip3 install lxml``)
- YAML (richiede ``pip3 install PyYAML``)

Dati geospaziali
^^^^^^^^^^^^^^^^

- Shapefiles (richiede ``pip3 install pyshp``)
- MBTiles (richiede ``pip3 install mapbox-vector-tile``)

Directory
^^^^^^^^^^^

- Directory Unix standard
- File ZIP

Altri
^^^^^

- HTML (cerca i tag ``<table>``; richiede ``pip3 install lxml``)
- URL (scarica l'HTML e cerca i tag ``<table>``; richiede ``pip3 install lxml``)
- File .pcap (richiede ``pip3 install dpkt dnslib``)
