# Yksilötehtävät

Tämä tiedosto sisältää dokumentaation Projekti: Terveyssovelluksen kehitys- kurssille (TX00EY13-3002)

## Sisältö (tehtävät)

- Tehtävä 1
- Tehtävä 2
- Tehtävä 3
- Tehtävä 4
- Tehtävä 5
- Tehtävä 6
- Tehtävä 7
- Tehtävä 8
- Tehtävä 9

Tehtävä 10 on tämä dokumentaatiotiedosto tehtävistä 1- 9.

## 1. Tehtävä 1, Työkalujen Asennus

Tehtävänanto: 

"Asenna omalle koneellesi seuraavat työkalut: Robot Framework, Browser Library, Requests library, CryptoLibrary, Robotidy
Dokumentoi asennus. Ks. Tehtävien palautus ja Tehtävä 10."

#### 1. Uusi kansio nimeltään "sovellustesti", jonka alle kopioitu period 3 aikana tehdyt Frontend ja Backend- kansiot, jotka uudelleenlinkitetty uuteen github repositioon (ja irrotettu vanhoista).

Projektirakenne:
```
sovellustesti
   > frontend/
   > backend/
   > tests/
   > resources/   
   > outputs/   
``` 
#### 2. Python versio, luotiin, sekä aktivoitiin virtuaaliympäristö. Komennot suoritettiin bash- terminaalissa. Komennot ja tulokset näkyvät alla olevassa kuvassa (Kuva 1).

![image](images/1kuva.png)
Kuva 1. Python asennuksen tarkistus, virtuaaliympäristön luominen ja aktivointi bash- terminaalissa.

Python versio tarkistettiin komennolla:  `python --version`. Terminaalin kirjoitettiin sitten `python -m venv .venv`, jolla virtuaaliympäristö luotiin. Komento `source .venv/Scripts/activate` aktivoi virtuaaliympäristön, jossa suoritetaan loput asennukset. 

Projektin juuressa luotiin `.gitignore`- tiedosto, johon lisättiin `.venv`.

#### 3. Pip- päivitys viimeisimpään versioon (Kuva 2).

![image](images/2kuva.png)
Kuva 2. Pip- päivitys bash- terminaalissa.

Päivitys suoritettiin komennolla `python -m pip install --upgrade pip`. Tuloksena oli viesti: "Succesfully installed pip-25.0.1". Pip päivitys oli onnistunut.

#### 4. Robot Framework asennus (Kuva 3).

![image](images/3kuva-oikea.png)
Kuva 3. Robot Framework asennus ja testaus.

Robot Framework asennettiin komennolla `pip install robotframework`. Asennus tarkistettiin komennolla `robot --version`.

#### 5. Browser Libraryn asennus.

Ensimmäisen tarkistettiin Pythonin että Node.JS asennukset, jonka jälkeen suoritettiin Browser Libraryn asennus (kuva 4).

![image](images/4kuva.png)
Kuva 4. Python ja Node.js asetusten tarkistus ja Browser Libraryn asennus.

Asetukset tarkistettiin komennolla `node -v`. Browser Library asennettiin komennolla `pip install robotframework-browser`.

Asennuksen jälkeen suoritettiin kirjaston alustus (Kuva 5).

![image](images/5kuva.png)
Kuva 5. Browser Library kirjaston alustus.

Alustus suoritettiin komennolla `rfbrowser init`.

#### 6. Requests Libraryn asennus. (kuva 6)

![image](images/6kuva.png)
Kuva 6. Requests Library kirjaston asennus.

Request Libraryn asennus suoritettiin komennolla `pip install robotframework-requests`.

#### 7. Cryptolibraryn asennus. (kuva 7)

![image](images/7kuva.png)
Kuva 7. Cryptolibrary kirjaston asennus.

Cryptolibraryn asennus suoritettiin komennolla `pip install --upgrade robotframework-crypto`.

#### 8. Robotidyn asennus. (kuva 8)

![image](images/8kuva.png)
Kuva 8. Robotidyn asennus.

Robotidyn asennus suoritettiin komennolla `pip install robotframework-tidy`.

#### 9. Asennuslistan tarkistus. (kuva 9)

![image](images/9kuva.png)
Kuva 9. Asennuslistan tarkistus.

Python-ympäristöön asennetut paketit ja niiden versiot listattiin kommenolla `pip freeze`.

#### 10. requirements.txt-asennuslista

![image](images/10kuva.png)
Kuva 10. Asennuslistan luominen.

Asennuslista tulevaisuutta varten luotiin komennolla `pip freeze > requirements.txt`.

#### 11. Asennusten testaus

![image](images/11kuva.png)
Kuva 11. Asennuslistan testaaminen.

Asennusten toimivuus testattu komennolla `python tests/asennustesti.py`.