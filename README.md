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

#### 10. requirements.txt-asennuslista. (Kuva 10)

![image](images/10kuva.png)
Kuva 10. Asennuslistan luominen.

Asennuslista tulevaisuutta varten luotiin komennolla `pip freeze > requirements.txt`.

#### 11. Asennusten testaus. (Kuva 11)

![image](images/11kuva.png)
Kuva 11. Asennuslistan testaaminen.

Asennusten toimivuus testattu komennolla `python tests/asennustesti.py`.

## 2. Tehtävä 2, kirjautumistesti omalle terveyspäiväkirja-sovellukselle. (Kuva 12)

Tehtävänanto: "Sovella esimerkkiä ja tee kirjautumistesti omalle terveyspäiväkirja-sovelluksellesi. 
Katso tarkemmat ohjeet: [linkki](https://github.com/sakluk/projekti-terveyssovelluksen-kehitys/blob/main/ohjeet_testaus/02_gui_testaus.md)"

Ensimmäisenä kopioitiin opettajan antamat esimerkkitiedostot tests- kansioon, jonka jälkeen tehtiin demotestejä. Sitten luotiin uudet tiedostot muuttujille, sekä varsinaiselle testille. 

Oma testi luotiin opetusmateriaalien pohjalta omaa päiväkirjasovellusta vastaavaksi.

![image](images/teht_2.png)
Kuva 12. Koodi sisäänkirjautumis- testin suorittamiseen ja suorituksen onnistuminen.

`robot --outputdir outputs tests/assignment_2.robot`- komennolla testi käynnistettiin ja tulostukset ohjattiin outputs-kansioon.

Huom! Muuttujat sisältävää tiedostoa ei syötetty tietoturvasyistä Githubiin.

## 3. Tehtävä 3, jatkotestejä Web form- esimerkkisivulle. (Kuva 13)

Tehtävänanto: "Tutki lisää Browser Libraryn käyttöä. Tee testi, joka testaa Web form-esimerkkisivun muiden 
kenttien toimintaa (Dropdown (select), Dropwdown (datalist), File input, Checkboxit, Radio 
buttonit, jne)."

Testejä tehty:
- Text input, käyttäjänimen syöttö
- Type secret, salasanan syöttö
- Type Text, Message syötetty
- Dropdown menu (select), valittu tietty numero
- Dropdown menu (datalist), syötetty tietty kaupunki
- File Input, luotu projektiin tyhjä tiedosto, joka ladattiin.
- Checkboxit ja radiobuttonit, valittu tyhjät checkboxit, klikattu pois jo- valitut
- Example range, liikutettu napattu kiinni ja raahattu hiukan vasemmalle.

![image](images/teht_3.png)
Kuva 13. Koodi web form esimerkkisivun testaamiseen ja suorituksen onnistuminen.

`robot --outputdir outputs tests/assignment_3.robot`- komennolla testi käynnistettiin ja tulostukset ohjattiin outputs-kansioon.

Huom! Muuttujat sisältävää tiedostoa ei syötetty tietoturvasyistä Githubiin.

## 4. Tehtävä 4, uusi päiväkirjamerkintätesti omalle terveyspäiväkirja-sovellukselle. (Kuva 14)

Ensin testissä suoritetaan tehtävän 2 mukainen sisäänkirjautuminen. Seuraavaksi siirrytään etusivulta HRV-mittaukset- sivulle, jossa syötetään päiväkirja- formiin uudet mittaustiedot (muuttujat tulevat erillisesti tiedostosta). Tämä form syötetään sovelluksen tietokantaan ja sivu ladataan uudelleen. (Sivun uudelleen lataus hakee päiväkirjamerkinnät uudestaan tietokannasta ja listaa nyt myös uuden merkinnän.)

Mittaustuloksia tarkastellaan painamalla "MITTAUS 1"- nappia (listalla aina uusin). Tämä avaa modaalin, jossa näkyy käyttäjän syöttämä mittausdata. "Sulje"- napista modaali sulkeutuu.

Testi päättyy uloskirjautumiseen, jossa painetaan "Kirjaudu ulos"- nappia navigaatiossa.

![image](images/teht_4.png)
Kuva 14. Koodi uuden päiväkirjamerkinnän syötön testaamiseen ja suorituksen onnistuminen.

`robot --outputdir outputs tests/assignment_4.robot`- komennolla testi käynnistettiin ja tulostukset ohjattiin outputs-kansioon.

Huom! Muuttujat sisältävää tiedostoa ei syötetty tietoturvasyistä Githubiin.