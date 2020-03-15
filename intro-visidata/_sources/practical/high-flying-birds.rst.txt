======================
Uccelli *d'alta quota*
======================

In questo capitolo utilizzeremo VisiData per rispondere alla seguente domanda: quali uccelli vengono colpiti, in media, alle quote più alte?

Nel corso del processo, utilizzeremo le seguenti tecniche:

- Assegnazione del *tipo di dati* alle colonne
- Creazione di nuove colonne
- Utilizzo di tabelle di frequenza per filtrare i fogli
- Calcolo di statistiche aggregate

.. note::

    Se non l'hai ancora fatto, scarica :download:`faa-wildlife-strikes.csv <../datasets/faa-wildlife-strikes.csv>`, un elenco delle collisioni tra velivoli e volatili segnalate alla `Federal Aviation Administration <https://wildlife.faa.gov/database.aspx>`_ tra il 2010 e la metà del 2016.

Aprire l'elenco delle collisioni in VisiData
---------------------------------------------

Cominciamo dall'inizio. Lancia il seguente comando dal terminale:

::

    vd faa-wildlife-strikes.csv


Dovresti vedere qualcosa di simile a quanto segue:

.. raw:: html
    :file: ../raw_html/practical-hfb-00-open.output.html


Assegnare il tipo di dato *intero* alla colonna ``HEIGHT``
----------------------------------------------------------

Spostati sulla colonna ``HEIGHT`` e digita :kbd:`#`.

Dovresti vedere qualcosa di simile:

.. raw:: html
    :file: ../raw_html/practical-hfb-01-integer.output.html

Noterai che molte delle collisioni riportate non hanno informazioni sulla quota o sembrano essere avvenute sul terreno (``HEIGHT == 0``).

Concentriamoci sulle collisioni avvenute in quota.

Selezionare solo le righe in cui ``HEIGHT`` è maggiore di zero
--------------------------------------------------------------

Useremo :kbd:`z|`, il comando "selezione per espressione" di VisiData . Digita :kbd:`z|` e al prompt digita ``HEIGHT > 0``. Dovresti vedere qualcosa del genere:

.. raw:: html
    :file: ../raw_html/practical-hfb-02-select-expr-input.output.html

Premi :kbd:`Invio`. Dovresti vedere una selezione delle collisioni in quota:

.. raw:: html
    :file: ../raw_html/practical-hfb-03-select-expr-result.output.html

Creare un nuovo foglio con le sole righe selezionate
----------------------------------------------------

Digita :kbd:`"`:

.. raw:: html
    :file: ../raw_html/practical-hfb-04-filtered.output.html


Identificare la quota media di collisione per specie
----------------------------------------------------

Si tratta di un processo in due fasi. In primo luogo spostati sulla colonna ``HEIGHT`` e digita :kbd:`+` per aggiungere un *aggregatore*. Al prompt in fondo allo schermo digita ``mean`` ...

.. raw:: html
    :file: ../raw_html/practical-hfb-05-mean.output.html

\.\.\. e premi :kbd:`Invio`.

.. note::

   L'aggiunta dell'aggregatore non cambia l'aspetto del foglio. Per essere sicuro di averlo aggiunto correttamente, digita :kbd:`Shift-C` per aprire il Foglio delle colonne e guarda nel campo ``aggregators``.

Poi, per ottenere la media per ogni animale, spostati sulla colonna ``SPECIES`` e digita :kbd:`Shift-F` per creare un foglio di frequenza. Dovresti vedere qualcosa del genere:

.. raw:: html
    :file: ../raw_html/practical-hfb-06-species-freq.output.html


Ordinare le specie per quota di collisione
------------------------------------------

Di norma, le tabelle di frequenza sono ordinate in base al conteggio delle righe corrispondenti. Per ordinare per quota di collisione decrescente, spostati sulla colonna ``mean_HEIGHT`` e digita :kbd:`]`.

Dovresti vedere qualcosa del genere:

.. raw:: html
    :file: ../raw_html/practical-hfb-07-sorted.output.html

Noterai che molte di queste specie hanno un'occorrenza bassa, molto bassa per essere di una qualche utilità informativa pratica. Facciamo qualcosa al riguardo

Limitare i risultati alle specie più comuni
-------------------------------------------

Digita :kbd:`z|` per attivare il prompt "select by expression", quindi digita ``count >= 20``:

.. raw:: html
	:file: ../raw_html/practical-hfb-08-select-expr-input.output.html

Premi :kbd:`Invio` per completare l'operazione. A parte una conferma nella barra di stato in basso, non noterai molte differenze nella parte visibile de foglio:

.. raw:: html
	:file: ../raw_html/practical-hfb-09-select-expr-result.output.html

Ora digita :kbd:`"` per creare un nuovo foglio contenente le sole righe selezionate:

.. raw:: html
    :file: ../raw_html/practical-hfb-10-limited.output.html

Infine digita :kbd:`g_` per allargare tutte le colonne in modo da poter leggere i nomi delle specie:

.. raw:: html
    :file: ../raw_html/practical-hfb-11-col-expanded.output.html
