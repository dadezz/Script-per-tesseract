goto :start
(questo è un commento)
"n" nel for è il numero di foto presenti. queste foto sono salvate come nomefoto_1, nomefoto_2 etc
è essenziale mettere il doppio ".txt" dove indicato, perché tesseract salva il file con il primo ".txt" come parte del nome, non come estensione
:start

for /L %%i IN (1,1,n) DO (
	tesseract C:[percorso]\nomefoto_%%i.tif C:[percorso]\nomefoto__%%i.txt
	copy C:[percorso]\filefinale.txt+C:[percorso]\nomefoto_%%i.txt.txt C:[percorso]\filefinale.txt
	del C:[percorso]\nomefoto_%%i.txt.txt /q
	)
