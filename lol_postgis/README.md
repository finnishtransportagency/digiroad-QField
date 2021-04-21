# LOL-tietomallin PostGIS-toteutus

Alkuperäinen LOL-tietomalli on tuotettu pgModelerilla yhteistyössä Tampereen Infra Oy:n kanssa.  Sen pohjana on käytetty [Digiroadin aineistotoimituksen käsitemallia.](https://vayla.fi/vaylista/aineistot/digiroad/tieliikennelaki-2020/ohje-viranomaiselle/aineiston-toimitus-massatoimituksella)

Tietomalli rakentuu *liikennemerkit-skeemasta* sekä *koodistot-skeemasta*. Liikennemerkit-skeema sisältää liikennemerkki- ja lisakilpitaulut, joihin on linkitetty sijaintiin, rakenteeseen, kuntoon ja korjaukseen liittyvät koodistotaulut.

![Kuvaus tietomallin rakenteesta](../imgs/lol-tietomalli.png)

Tietomalli on testattu PostgreSQL:n versiolla 12 ja PostGIS versiolla 3.0

Ennen tietomallin käyttöönottoa PostgreSQL:ssä tulee aktivoida PostGIS lisäosa:

    CREATE EXTENSION postgis;

Tämän jälkeen voit ajaa digiroad_lol_pgmodel.sql tiedoston sisällön luomassasi tietokannassa. Tämä luo automaattisesti tietokantataulut, niiden väliset relaatiot sekä tarvittavien koodilistojen sisällöt. 