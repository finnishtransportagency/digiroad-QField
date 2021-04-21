

# Liikenneohjauslaitteiden inventointi QField-sovelluksella

Väylävirasto ja Gispo toteuttavat projektia, jossa testataan QField-mobiilisovelluksen soveltuvuutta LOL-inventointiin (LOL = liikenneohjauslaitteet). Projektissa käytetään ja kehitetään Tampereen Infran kanssa tuotettua LOL-tietomallia, jonka avulla inventointia tehdään. Sekä tietomallin että QFieldin testaukseen osallistuu asiantuntijoiden lisäksi kolme eri kokoista ja alkuasetelmiltaan erilaista kuntaa: Ylöjärvi, Kouvola ja Nurmes. Testaukseen osallistuvilta kunnilta kerätään palautetta, jonka pohjalta inventointiprosessia kehitetään eteenpäin. Lopullisena tavoitteena on viedä kuntien tekemä LOL-inventointi Digiroadiin.

![Yksinkertaistettu kuvaus tiedon virtaamisesta](https://github.com/finnishtransportagency/digiroad-QField/blob/main/media/prosessimalli.png "Prosessimalli")

Tähän repositorioon kootaan kaikki projektiin liittyvä dokumentaatio ja projektissa tuotetut työkalut.
## Mikä QField?

[QField](https://github.com/opengisch/QField) on avoimen lähdekoodin mobiilisovellus, jonka teknologia pohjautuu QGIS-työpöytäohjelmistoon. QField on ennen kaikkea kenttätyökalu, jolla voidaan tuottaa erilaista vektoridataa QGIS-projektiin. Lue lisää QFieldistä [dokumentaatiosta](https://qfield.org/docs/fi/).

![QFieldin käyttöliittymä](https://github.com/finnishtransportagency/digiroad-QField/blob/main/media/qfield-ui.png "QField")

[PostGIS tietomalli](lol_postgis%28README.md)

[Testiprojekti](qfield_testiprojekti/README.md)