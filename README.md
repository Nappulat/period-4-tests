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

#### 1. Ensimmäiseksi luotiin uusi kansio nimeltään "sovellustesti", jonka alle kopioitu period 3 aikana tehdyt Frontend ja Backend- kansiot, jotka uudelleenlinkitetty uuteen github repositioon (ja irrotettu vanhoista).

Projektirakenne:
```
sovellustesti
   > frontend/
   > backend/
   > tests/
   > resources/   
   > outputs/   
``` 
#### 2. Seuraavaksi suoritettiin komennot, joilla tarkistettiin python versio, luotiin, sekä aktivoitiin virtuaaliympäristö. Komennot suoritettiin bash- terminaalissa. Komennot ja tulokset näkyvät alla olevassa kuvassa (Kuva 1).

![image](frontend/vite-project/public/img/1kuva.png)
Kuva 1. Python asennuksen tarkistus, virtuaaliympäristön luominen ja aktivointi bash- terminaalissa.

Python versio tarkistettiin komennolla:  `python --version`. Terminaalin kirjoitettiin sitten `python -m venv .venv`, jolla virtuaaliympäristö luotiin. Komento `source .venv/Scripts/activate` aktivoi virtuaaliympäristön, jossa suoritetaan loput asennukset. 

Projektin juuressa luotiin `.gitignore`- tiedosto, johon lisättiin `.venv`.

#### 3. Ympäristön aktivoinnin jälkeen suoritettiin pip- päivitys viimeisimpään versioon (Kuva 2).

![image](frontend/vite-project/public/img/2kuva.png)
Kuva 2. Pip- päivitys bash- terminaalissa.

Päivitys suoritettiin komennolla `python -m pip install --upgrade pip`. Tuloksena oli viesti: "Succesfully installed pip-25.0.1". Pip päivitys oli onnistunut.

#### 4. Robot Framework asennus (Kuva 3).

![image](frontend/vite-project/public/img/3kuva-oikea.png)
Kuva 3. Robot Framework asennus ja testaus.

Robot Framework asennettiin komennolla `pip install robotframework`. Asennus tarkistettiin komennolla `robot --version`.

#### 5. Browser Libraryn asennus.

Ensimmäisen tarkistettiin Pythonin että Node.JS asennukset, jonka jälkeen suoritettiin Browser Libraryn asennus (kuva 4).

![image](frontend/vite-project/public/img/4kuva.png)
Kuva 4. Python ja Node.js asetusten tarkistus ja Browser Libraryn asennus.

Asetukset tarkistettiin komennolla `node -v`. Browser Library asennettiin komennolla `pip install robotframework-browser`.

Asennuksen jälkeen suoritettiin kirjaston alustus (Kuva 5).

![image](frontend/vite-project/public/img/5kuva.png)
Kuva 5. Browser Library kirjaston alustus.

Alustus suoritettiin komennolla `rfbrowser init`.



