# Liikenneohjauslaitteiden inventointi QField-sovelluksella

Väylävirasto ja Gispo toteuttavat projektia, jossa testataan QField-mobiilisovelluksen soveltuvuutta LOL-inventointiin (LOL = liikenneohjauslaitteet). Projektissa käytetään ja kehitetään Tampereen Infran kanssa tuotettua LOL-tietomallia, jonka avulla inventointia tehdään. Sekä tietomallin että QFieldin testaukseen osallistuu asiantuntijoiden lisäksi kolme eri kokoista ja alkuasetelmiltaan erilaista kuntaa: Ylöjärvi, Kouvola ja Nurmes. Testaukseen osallistuvilta kunnilta kerätään palautetta, jonka pohjalta inventointiprosessia kehitetään eteenpäin. Lopullisena tavoitteena on viedä kuntien tekemä LOL-inventointi Digiroadiin.

(https://github.com/finnishtransportagency/digiroad-QField/blob/main/media/prosessimalli.png)

Tähän repositorioon kootaan kaikki projektiin liittyvä dokumentaatio ja projektissa tuotetut työkalut.
## QField

QField on avoimen lähdekoodin mobiilisovellus, jonka teknologia pohjautuu QGIS-työpöytäohjelmistoon. QField on ennen kaikkea kenttätyökalu, jolla voidaan tuottaa erilaista vektoridataa QGIS-projektiin. Lue lisää QFieldistä [dokumentaatiosta](https://qfield.org/docs/fi/).

(https://github.com/finnishtransportagency/digiroad-QField/blob/main/media/QField_UI.png)

## LOL-tietomalli (alustava)

Alkuperäinen LOL-tietomalli on tuotettu pgModelerilla yhteistyössä Tampereen Infran kanssa. Tietomallia on kehitetty ja kehitetään edelleen eteenpäin tässä projektissa tehtävien huomioiden perusteella. Tietomalli rakentuu *liikennemerkit-skeemasta* sekä *koodistot-skeemasta*. Liikennemerkit-skeema sisältää liikennemerkki- ja lisakilpitaulut, joihin on linkitetty sijaintiin, rakenteeseen, kuntoon ja korjaukseen liittyvät koodistotaulut.

(https://github.com/finnishtransportagency/digiroad-QField/blob/main/media/lol-tietomalli.png)

## QField-testiprojekti

Päivitetään myöhemmin.
