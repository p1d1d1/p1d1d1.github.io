======================================
Lavorare con file di grandi dimensioni
======================================

VisiData gestisce abbastanza bene file moderatamente grandi. Ma se un file particolarmente grande rallenta VisiData, i suggerimenti seguenti possono essere di aiuti.

Selezionare un numero casuale di righe
--------------------------------------

In VisiData è possibile creare una copia campionata a caso di qualsiasi foglio. Per creare un foglio campione casuale, digita :kbd:`Shift-R`. Al prompt digita il numero di righe che desideri includere, quindi premi :kbd:`Enter`.

Caricare solo parte di un file
------------------------------

Se vuoi utilizzare VisiData solo per avere un'anteprima dei dati, potresti caricare solo l'inizio del file.

Da linea di comando
^^^^^^^^^^^^^^^^^^^^^

Se stai lavorando con un file CSV semplice, puoi utilizzare il comando ``head``, combinato con ``vd -f csv``, ad esempio:

::

   head -n 1000 faa-wildlife-strikes.csv | vd -f csv

Il tal modo, le prime 1.000 righe del file saranno caricate (in effetti qualcuna in meno, visto che la colonna ``REMARKS`` contiene alcuni caratteri di nuova riga).

In alternativa potresti usare `xsv <https://github.com/BurntSushi/xsv>`_ per ritagliare o filtrare il file prima di caricarlo in VisiData. Ad esempio:

::

   xsv search "CHICAGO" faa-wildlife-strikes.csv | vd -f csv


Arrestando il processi di caricamento
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Puoi arrestare il processo di caricamento dei dati digitando :kbd:`Control-c`. VisiData gestisce il tutto senza problemi e potrai continuare ad usare il programma normalmente.

Questo approccio funziona bene se si utilizza una fonte di dati più complessa di un file CSV e se non ci si preoccupa esattamente di quante righe vengono caricate.


Mettendo le colonne dinamiche nella cache
-----------------------------------------

Se si stanno eseguendo molte operazioni su colonne dinamiche (per esempio, quelle create con il comando :kbd:`=`), magari calcolandone la media, la mediana e la somma, si può risparmiare un po' di tempo "mettendo in cache" le colonne stesse.

Spostai sulla colonna che intendi mettere in cache e digita :kbd:`z'`.
