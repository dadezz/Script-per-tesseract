for /L %%i IN (1,1,116) DO (
	tesseract C:\Users\Dade\Desktop\ossessione\ossessione_%%i.tif C:\Users\Dade\Desktop\ossessione\ossessione_%%i.txt
	copy C:\Users\Dade\Desktop\ossessione\oss.txt+C:\Users\Dade\Desktop\ossessione\ossessione_%%i.txt.txt C:\Users\Dade\Desktop\ossessione\oss.txt
	del C:\Users\Dade\Desktop\ossessione\ossessione_%%i.txt /q
	)