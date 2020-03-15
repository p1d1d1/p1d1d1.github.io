==============
Join di fogli
==============

Proprio come in SQL, VisiData consente di fare il *join* di più fogli.

.. note::

   Se questo concetto non ti è familiare, puoi trovare più dettagli `qui <https://www.w3schools.com/sql/sql_join.asp>`_ e `qui <https://blog.codinghorror.com/a-visual-explanation-of-sql-joins/>`_.

Join in tre passi
-----------------

Per fare il *join* di due o più fogli, procedi come di seguito:

1. Nei fogli che vuoi unire **marca le colonne condivise come "chiavi"**
2. Nel Foglio dei fogli **seleziona i fogli che vuoi unire**
3. Digita :kbd:`&` e al prompt **indica il tipo di join**

VisiData supporta cinque tipi di *join*:

================  ===================  ===================================================================================================================
Comando di join      Equivalente SQL       Descrizione
================  ===================  ===================================================================================================================
inner             ``LEFT INNER JOIN``  Mantiene le righe con chiavi corrispondenti in tutti i fogli
outer             ``LEFT OUTER JOIN``  Mantiene tutte le righe dal primo foglio selezionato
full              ``FULL OUTER JOIN``  Mantiene tutte le righe di tutti i fogli (unione)
diff              -                    Mantiene solo le righe Keeps only rows NOT in all sheets
append            ``UNION ALL``        Mantiene tutte le righe di tutti i fogli (concatenazione)
extend            -                    Copia il foglio selezionato, mantenendone tutte le righe, e lo estende con colonne di altri fogli
================  ===================  ===================================================================================================================

(Le descrizioni sopra riportate sono tratte da `Quick Reference <http://visidata.org/man/>`_.)

Esempio pratico
-----------------

Trovi un esempio pratico di un *join* nel capitolo `Uccelli caratteristici <../../practical/distinctive-birds/>`_.
