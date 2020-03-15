===============================
Lavorare con i fogli Excel
===============================

Lavorare con i fogli Excel in VisiData non è molto diverso dal lavorare con in file CSV ed altri dati tabellari, ma quanto apri un file Excel la prima cosa che vedrai è una lista dei fogli che esso contiene. Spostati sul foglio con cui intendi lavorare e digita :kbd:`Invio` per aprirlo.



Come sistemare i nomi delle colonne
-----------------------------------

VisiData considera la prima riga di un set di dati tabellari come la riga contenente i nomi delle colonne. È il caso di molti dei formati di dati tabellari supportati da VisiData, ma i fogli Excel spesso non seguono questa tendenza e presentano ogni sorta di formazione aggiuntiva (come titoli e note) prima dei nomi delle colonne.

Come detto precedentemente, puoi modificare manualmente il nome di una colonna digitando :kbd:`^` oppure dal Foglio delle colonne.

Inoltre puoi popolare automaticamente i nomi delle colonne facendo quanto segue:

- Spostati sulla riga contenente i nomi delle colonne desiderati

- Digita :kbd:`g^` per usare i valori della riga come nomi per le *colonne senza nome*, oppure digita :kbd:`gz^` per usare i valori della riga come nomi per *tutte le colonne* (indipendentemente dal fatto che siano già nominate).

Se vuoi che VisiData non carichi la prima riga come intestazione per le colonne puoi procedere come di seguito:

- Usa l'opzione ``--header 0`` quando lanci il comando ``vd`` dal terminale

- Se già sei all'interno di VisiData:

   - Digita :kbd:`Shift-O` per aprire il Foglio delle opzioni
   - Imposta ``header`` a ``0``
   - Digita :kbd:`q` per tornare al foglio di calcolo
   - Digita :kbd:`Control-r` per ricaricarlo
