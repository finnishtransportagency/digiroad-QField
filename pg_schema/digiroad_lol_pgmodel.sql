-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.3-alpha
-- PostgreSQL version: 12.0
-- Project Site: pgmodeler.io
-- Model Author: ---


-- Database creation must be done outside a multicommand file.
-- These commands were put in this file only as a convenience.
-- -- object: treinfra_lol_v10 | type: DATABASE --
-- -- DROP DATABASE IF EXISTS treinfra_lol_v10;
-- CREATE DATABASE treinfra_lol_v10
-- 	ENCODING = 'UTF8';
-- -- ddl-end --
-- 

-- object: liikennemerkit | type: SCHEMA --
-- DROP SCHEMA IF EXISTS liikennemerkit CASCADE;
CREATE SCHEMA liikennemerkit;
-- ddl-end --

-- object: koodistot | type: SCHEMA --
-- DROP SCHEMA IF EXISTS koodistot CASCADE;
CREATE SCHEMA koodistot;
-- ddl-end --

SET search_path TO pg_catalog,public,liikennemerkit,koodistot;
-- ddl-end --

-- object: postgis | type: EXTENSION --
-- DROP EXTENSION IF EXISTS postgis CASCADE;
CREATE EXTENSION postgis
WITH SCHEMA public;
-- ddl-end --

-- object: koodistot.merkkityyppi | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.merkkityyppi CASCADE;
CREATE TABLE koodistot.merkkityyppi (
	koodi integer NOT NULL GENERATED ALWAYS AS IDENTITY ,
	asetus varchar,
	tyyppi varchar,
	asetusnumero varchar,
	nimi_fi varchar,
	nimi_sv varchar,
	merkki_svg bytea,
	CONSTRAINT code_liikennemerkit_pk PRIMARY KEY (koodi)

);
-- ddl-end --
COMMENT ON COLUMN koodistot.merkkityyppi.asetus IS 'Tieliikenneasetuksen tunniste';
-- ddl-end --

INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A1.1', E'Mutka oikealle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A1.2', E'Mutka vasemmalle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A2.1', E'Mutkia, joista ensimmäinen oikealle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A2.2', E'Mutkia, joista ensimmäinen vasemmalle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A3.1', E'Jyrkkä ylämäki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A3.2', E'Jyrkkä alamäki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A4', E'Kapeneva tie');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A5', E'Kaksisuuntainen liikenne');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A6', E'Avattava silta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A7', E'Lautta, laituri tai ranta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A8', E'Liikenneruuhka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A9', E'Epätasainen tie');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A10', E'Töyssyjä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A11', E'Tietyö');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A12', E'Irtokiviä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A13', E'Liukas ajorata');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A14', E'Vaarallinen tien reuna');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A15', E'Suojatien ennakkovaroitus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A16', E'Jalankulkijoita');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A17', E'Lapsia');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A18', E'Pyöräilijöitä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A19', E'Hiihtolatu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A20.1', E'Hirvi');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A20.2', E'Poro');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A20.3', E'Kauriseläin');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A21', E'Tienristeys');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A22.1', E'Sivutien risteys molemmin puolin');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A22.2', E'Sivutien risteys molemmin puolin porrastetusti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A22.3', E'Sivutien risteys oikealla/vasemmalla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A22.4', E'Sivutien risteys oikealla/vasemmalla viistoon');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A23', E'Liikennevalot');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A24', E'Liikenneympyrä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A25', E'Raitiovaunu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A26', E'Rautatien tasoristeys ilman puomeja');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A27', E'Rautatien tasoristeys, jossa on puomit');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A28.1', E'Rautatien tasoristeyksen lähestymismerkki ///');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A28.2', E'Rautatien tasoristeyksen lähestymismerkki //');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A28.3', E'Rautatien tasoristeyksen lähestymismerkki /');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A29.1', E'Yksiraiteisen rautatien tasoristeys');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A29.2', E'Kaksi tai useampiraiteisen rautatien tasoristeys');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A30', E'Putoavia kiviä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A31', E'Matalalla lentäviä lentokoneita');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A32', E'Sivutuuli');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Varoitusmerkit', E'A33', E'Muu vaara');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Etuajo-oikeus- ja väistämismerkit', E'B1', E'Etuajo-oikeutettu tie');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Etuajo-oikeus- ja väistämismerkit', E'B2', E'Etuajo-oikeuden päättyminen');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Etuajo-oikeus- ja väistämismerkit', E'B3', E'Etuajo-oikeus kohdattaessa');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Etuajo-oikeus- ja väistämismerkit', E'B4', E'Väistämisvelvollisuus kohdattaessa');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Etuajo-oikeus- ja väistämismerkit', E'B5', E'Väistämisvelvollisuus risteyksessä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Etuajo-oikeus- ja väistämismerkit', E'B6', E'Pakollinen pysäyttäminen');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Etuajo-oikeus- ja väistämismerkit', E'B7', E'Väistämisvelvollisuus pyöräilijän tienylityspaikassa');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C1', E'Ajoneuvolla ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C2', E'Moottorikäyttöisellä ajoneuvolla ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C3', E'Kuorma- ja pakettiautolla ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C4', E'Ajoneuvoyhdistelmällä ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C5', E'Traktorilla ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C6', E'Moottoripyörällä ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C7', E'Moottorikelkalla ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C8', E'Vaarallisten aineiden kuljetus kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C9', E'Linja-autolla ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C10', E'Mopolla ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C11', E'Polkupyörällä ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C12', E'Polkupyörällä ja mopolla ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C13', E'Jalankulku kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C14', E'Jalankulku ja polkupyörällä ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C15', E'Jalankulku ja polkupyörällä ja mopolla ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C16', E'Ratsastus kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C17', E'Kielletty ajosuunta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C18', E'Vasemmalle kääntyminen kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C19', E'Oikealle kääntyminen kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C20', E'U-käännös kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C21', E'Ajoneuvon suurin sallittu leveys');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C22', E'Ajoneuvon suurin sallittu korkeus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C23', E'Ajoneuvon tai ajoneuvoyhdistelmän suurin sallittu pituus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C24', E'Ajoneuvon suurin sallittu massa');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C25', E'Ajoneuvoyhdistelmän suurin sallittu massa');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C26', E'Ajoneuvon suurin sallittu akselille kohdistuva massa');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C27', E'Ajoneuvon suurin sallittu telille kohdistuva massa');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C28', E'Ohituskielto');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C29', E'Ohituskielto päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C30', E'Ohituskielto kuorma-autolla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C31', E'Ohituskielto kuorma-autolla päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C32', E'Nopeusrajoitus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C33', E'Nopeusrajoitus päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C34', E'Nopeusrajoitusalue');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C35', E'Nopeusrajoitusalue päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C36', E'Ajokaistakohtainen kielto, rajoitus tai määräys');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C37', E'Pysäyttäminen kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C38', E'Pysäköinti kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C39', E'Pysäköintikieltoalue');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C40', E'Pysäköintikieltoalue päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C41', E'Taksiasema-alue');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C42', E'Taksin pysäyttämispaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C43', E'Kuormauspaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C44.1', E'Vuoropysäköinti (kielletty parittomina päivinä)');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C44.2', E'Vuoropysäköinti (kielletty parillisina päivinä)');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C45', E'Pakollinen pysäyttäminen tullitarkastusta varten');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C46', E'Pakollinen pysäyttäminen tarkastusta varten');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C47', E'Moottorikäyttöisten ajoneuvojen vähimmäisetäisyys');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Kielto- ja rajoitusmerkit', E'C48', E'Nastarenkailla varustetulla moottorikäyttöisellä ajoneuvolla ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Määräysmerkit', E'D1.1', E'Pakollinen ajosuunta oikealle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Määräysmerkit', E'D1.2', E'Pakollinen ajosuunta vasemmalle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Määräysmerkit', E'D1.3', E'Pakollinen ajosuunta suoraan');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Määräysmerkit', E'D1.4', E'Pakollinen ajosuunta kääntyminen oikealle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Määräysmerkit', E'D1.5', E'Pakollinen ajosuunta kääntyminen vasemmalle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Määräysmerkit', E'D1.6', E'Pakollinen ajosuunta suoraan tai kääntyminen oikealle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Määräysmerkit', E'D1.7', E'Pakollinen ajosuunta suoraan tai kääntyminen vasemmalle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Määräysmerkit', E'D1.8', E'Pakollinen ajosuunta kääntyminen oikealle tai vasemmalle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Määräysmerkit', E'D1.9', E'Pakollinen ajosuunta suoraan tai kääntyminen oikealle tai vasemmalle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Määräysmerkit', E'D2', E'Pakollinen kiertosuunta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Määräysmerkit', E'D3.1', E'Liikenteenjakaja oikea');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Määräysmerkit', E'D3.2', E'Liikenteenjakaja vasen');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Määräysmerkit', E'D3.3', E'Liikenteenjakaja molemmin puolin');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Määräysmerkit', E'D4', E'Jalkakäytävä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Määräysmerkit', E'D5', E'Pyörätie');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Määräysmerkit', E'D6', E'Yhdistetty pyörätie ja jalkakäytävä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Määräysmerkit', E'D7.1', E'Pyörätie ja jalkakäytävä rinnakkain, pyörätie vasemmalla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Määräysmerkit', E'D7.2', E'Pyörätie ja jalkakäytävä rinnakkain, pyörätie oikealla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Määräysmerkit', E'D8', E'Moottorikelkkailureitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Määräysmerkit', E'D9', E'Ratsastustie');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Määräysmerkit', E'D10', E'Vähimmäisnopeus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Määräysmerkit', E'D11', E'Vähimmäisnopeus päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E1', E'Suojatie');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E2', E'Pysäköintipaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E3.1', E'Liityntäpysäköintipaikka juna');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E3.2', E'Liityntäpysäköintipaikka bussi');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E3.3', E'Liityntäpysäköintipaikka metro');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E3.4', E'Liityntäpysäköintipaikka useita joukkoliikennevälineitä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E4.1', E'Ajoneuvojen sijoitus pysäköintipaikalla suoraan');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E4.2', E'Ajoneuvojen sijoitus pysäköintipaikalla vastakkain');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E4.3', E'Ajoneuvojen sijoitus pysäköintipaikalla vinoon');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E5', E'Kohtaamispaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E6', E'Linja-autopysäkki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E7', E'Raitiovaunupysäkki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E8', E'Taksiasema');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E9.1', E'Linja-autokaista');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E9.2', E'Linja-auto ja taksikaista');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E10.1', E'Linja-autokaista päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E10.2', E'Linja-auto ja taksikaista päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E11.1', E'Raitiovaunukaista');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E11.2', E'Raitiovaunu- ja taksikaista');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E12.1', E'Raitiovaunukaista päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E12.2', E'Raitiovaunu- ja taksikaista päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E13.1', E'Pyöräkaista oikealla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E13.2', E'Pyöräkaista keskellä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E14.1', E'Yksisuuntainen tie suoraan');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E14.2', E'Yksisuuntainen tie oikealle/vasemmalle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E15', E'Moottoritie');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E16', E'Moottoritie päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E17', E'Moottoriliikennetie');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E18', E'Moottoriliikennetie päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E19', E'Tunneli');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E20', E'Tunneli päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E21', E'Hätäpysäyttämispaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E22', E'Taajama');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E23', E'Taajama päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E24', E'Pihakatu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E25', E'Pihakatu päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E26', E'Kävelykatu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E27', E'Kävelykatu päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E28', E'Pyöräkatu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E29', E'Pyöräkatu päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Sääntömerkit', E'E30', E'Ajokaistojen yhdistymien');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F1.1', E'Suunnistustaulu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F1.2', E'Suunnistustaulu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F1.3', E'Suunnistustaulu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F2.1', E'Suunnistustaulu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F2.2', E'Suunnistustaulu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F2.3', E'Suunnistustaulu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F3', E'Ajokaistakohtainen suunnistustaulu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F4.1', E'Kiertotien suunnistustaulu (sininen pohja)');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F4.2', E'Kiertotien suunnistustaulu (keltainen pohja)');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F5', E'Kiertotieopastus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F6', E'Ajoreittiopastus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F7.1', E'Ajokaistaopastus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F7.2', E'Ajokaistaopastus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F7.3', E'Ajokaistaopastus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F7.4', E'Ajokaistaopastus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F7.5', E'Ajokaistaopastus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F7.6', E'Ajokaistaopastus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F8.1', E'Ajokaistan päättyminen');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F8.2', E'Ajokaistan päättyminen');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F9', E'Viitoituksen koontimerkki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F10', E'Ajokaistan yläpuolinen viitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F11', E'Ajokaistan yläpuolinen viitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F12', E'Ajokaistan yläpuolinen erkanemisviitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F13', E'Tienviitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F14', E'Erkanemisviitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F15', E'Kiertotien viitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F16', E'Osoiteviitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F17', E'Osoiteviitan ennakkomerkki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F18.1', E'Liityntäpysäköintiviitta juna');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F18.2', E'Liityntäpysäköintiviitta bussi');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F18.3', E'Liityntäpysäköintiviitta raitiovaunu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F18.4', E'Liityntäpysäköintiviitta metro');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F18.5', E'Liityntäpysäköintiviitta useita joukkoliikennevälineitä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F19', E'Jalankulun viitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F20.1', E'Pyöräilyn viitta ilman etäisyyksiä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F20.2', E'Pyöräilyn viitta etäisyyslukemilla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F21.1', E'Pyöräilyn suunnistustaulu etäisyyslukemilla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F21.2', E'Pyöräilyn suunnistustaulu ilman etäisyyksiä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F22', E'Pyöräilyn etäisyystaulu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F23', E'Pyöräilyn paikannimi');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F24.1', E'Umpitie edessä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F24.2', E'Umpitie oikealla/vasemmalla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F24.3', E'Umpitie');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F25', E'Enimmäisnopeussuositus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F26', E'Etäisyystaulu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F27.1', E'Paikannimi');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F27.2', E'Vesistön nimi');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F28', E'Kansainvälisen pääliikenneväylän numero');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F29', E'Valtatien numero');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F30', E'Kantatien numero');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F31', E'Seututien numero');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F32', E'Muun maantien numero');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F33', E'Kehätien numero');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F34', E'Eritasoliittymän numero');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F35', E'Opastus numeron tarkoittamalle tielle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F36', E'Varareitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F37', E'Moottoritien tunnus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F38', E'Moottoriliikennetien tunnus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F39', E'Lentoasema');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F40', E'Autolautta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F41', E'Matkustajasatama');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F42', E'Tavarasatama');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F43', E'Tavaraterminaali');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F44', E'Teollisuusalue tai yritysalue');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F45', E'Vähittäiskaupan suuryksikkö');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F46.1', E'Pysäköinti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F46.2', E'Katettu pysäköinti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F47', E'Rautatieasema');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F48', E'Linja-autoasema');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F49', E'Keskusta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F50', E'Tietylle ajoneuvolle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F50.1', E'Kuorma-autolle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F50.2', E'Henkilöautolle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F50.3', E'Linja-autolle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F50.4', E'Pakettiautolle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F50.5', E'Moottoripyörälle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F50.6', E'Mopolle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F50.7', E'Traktorille tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F50.8', E'Matkailuajoneuvolle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F50.9', E'Polkupyörälle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F51', E'Vaarallisten aineiden kuljetukselle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F52', E'Jalankulkijalle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F53', E'Vammaiselle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F54.1', E'Reitti, jolla on portaat alas');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F54.2', E'Reitti, jolla on portaat ylös');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F55.1', E'Reitti ilman portaita alas');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F55.2', E'Reitti ilman portaita ylös');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F55.3', E'Pyörätuoliramppi alas');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F55.4', E'Pyörätuoliramppi ylös');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F56.1', E'Hätäuloskäynti vasemmalla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F56.2', E'Hätäuloskäynti oikealla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F57.1', E'Poistumisreitti (yksi)');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Opastusmerkit', E'F57.2', E'Poistumisreitti (useita)');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G1', E'Palvelukohteen opastustaulu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G2', E'Palvelukohteen opastustaulu nuolella');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G3', E'Palvelukohteen erkanemisviitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G4', E'Palvelukohteen osoiteviitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G5', E'Palvelukohteen osoiteviitan ennakkomerkki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G6', E'Radioaseman taajuus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G7', E'Opastuspiste');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G8', E'Opastustoimisto');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G9', E'Ensiapu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G10', E'Autokorjaamo');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G11.1', E'Polttoaineen jakelu bensiini tai etanoli');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G11.2', E'Polttoaineen jakelu paineistettu maakaasu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G11.3', E'Polttoaineen jakelu sähkö');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G11.4', E'Polttoaineen jakelu vety');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G12', E'Hotelli tai motelli');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G13', E'Ruokailupaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G14', E'Kahvila tai pikaruokapaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G15', E'Käymälä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G16', E'Retkeilymaja');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G17', E'Leirintäalue');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G18', E'Matkailuajoneuvoalue');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G19', E'Levähdysalue');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G20', E'Ulkoilualue');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G21', E'Hätäpuhelin');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G22', E'Sammutin');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G23', E'Museo tai historiallinen rakennus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G24', E'Maailmanperintökohde');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G25', E'Luontokohde');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G26', E'Näköalapaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G27', E'Eläintarha tai -puisto');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G28', E'Muu nähtävyys');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G29', E'Uintipaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G30', E'Kalastuspaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G31', E'Hiihtohissi');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G32', E'Maastohiihtokeskus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G33', E'Golfkenttä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G34', E'Huvi- ja teemapuisto');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G35', E'Mökkimajoitus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G36', E'Aamiaismajoitus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G37', E'Suoramyyntipaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G38', E'Käsityöpaja');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G39', E'Kotieläinpiha');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G40', E'Ratsastuspaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G41.1', E'Matkailutie (pelkkä teksti)');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G41.2', E'Matkailutie (kuva ja teksti)');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Palvelukohteiden opastusmerkit', E'G42', E'Tilapäinen opastusmerkki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H1', E'Kohde risteävässä suunnassa');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H2.1', E'Kohde nuolen suunnassa');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H2.2', E'Kohde nuolen suunnassa ja etäisyys');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H2.3', E'Kohde edessä ja etäisyys');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H3', E'Vaikutusalueen pituus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H4', E'Etäisyys kohteeseen');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H5', E'Etäisyys pakolliseen pysäyttämiseen');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H6', E'Vapaa leveys');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H7', E'Vapaa korkeus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H8', E'Sähköjohdon korkeus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H9.1', E'Vaikutusalue molempiin suuntiin oikealle ja vasemmalle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H9.2', E'Vaikutusalue molempiin suuntiin eteen- ja taaksepäin');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H10', E'Vaikutusalue nuolen suuntaan');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H11', E'Vaikutusalue päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H12.1', E'Henkilöauto');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H12.2', E'Linja-auto');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H12.3', E'Kuormaauto');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H12.4', E'Pakettiauto');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H12.5', E'Matkailuperävaunu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H12.6', E'Matkailuauto');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H12.7', E'Invalidin ajoneuvo');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H12.8', E'Moottoripyörä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H12.9', E'Mopo');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H12.10', E'Polkupyörä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H12.11', E'Moottorikelkka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H12.12', E'Traktori');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H12.13', E'Vähäpäästöinen ajoneuvo');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H13.1', E'Pysäköintitapa reunakiven päälle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H13.2', E'Pysäköintitapa reunakiven laitaan');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H14', E'Kielto ryhmän A vaarallisten aineiden kuljetukselle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H15', E'Kielto ryhmän B vaarallisten aineiden kuljetukselle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H16', E'Tunneliluokka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H17.1', E'Voimassaoloaika arkisin ma-pe');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H17.2', E'Voimassaoloaika arkilauantaisin');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H17.3', E'Voimassaoloaika sunnuntaisin ja pyhinä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H18', E'Aikarajoitus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H19.1', E'Pysäköintiajan alkamisen osoittamisvelvollisuus (keltainen pohja)');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H19.2', E'Pysäköintiajan alkamisen osoittamisvelvollisuus (sininen pohja)');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H20', E'Maksullinen pysäköinti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H21', E'Latauspaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H22.1', E'Etuajooikeutetun liikenteen suunta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H22.2', E'Etuajooikeutetun liikenteen suunta kääntyville');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H23.1', E'Kaksisuuntainen pyörätie (keltainen pohja)');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H23.2', E'Kaksisuuntainen pyörätie (sininen pohja)');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H24', E'Tekstillinen lisäkilpi');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H25', E'Huoltoajo sallittu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Lisäkilvet', E'H26', E'Hätäpuhelin ja sammutin');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I1', E'Sulkupuomi');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I2.1', E'Sulkuaita');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I2.2', E'Sulkuaita nuolilla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I3.1', E'Sulkupylväs vasemmalla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I3.2', E'Sulkupylväs oikealla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I3.3', E'Sulkupylväs');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I4', E'Sulkukartio');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I5', E'Taustamerkki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I6', E'Kaarteen suuntamerkki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I7.1', E'Reunamerkki vasemmalla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I7.2', E'Reunamerkki oikealla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I8', E'Korkeusmerkki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I9', E'Alikulun korkeusmitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I10.1', E'Liikennemerkkipylvään tehostamismerkki (sinivalkoinen)');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I10.2', E'Liikennemerkkipylvään tehostamismerkki (keltamusta)');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I11', E'Erkanemismerkki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I12.1', E'Reunapaalu vasemmalla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I12.2', E'Reunapaalu oikealla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I13', E'Siirtokehotus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I14', E'Paikannusmerkki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I15', E'Automaattinen liikennevalvonta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I16', E'Tekninen valvonta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I17.1', E'Poronhoitoalue tekstillinen');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I17.2', E'Poronhoitoalue ilman tekstiä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I18', E'Yleinen nopeusrajoitus rajalla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'729/2018', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'I19', E'Valtion raja');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Etuajo-oikeus- ja väistämismerkit', E'211', E'Etuajo-oikeutettu tie');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Etuajo-oikeus- ja väistämismerkit', E'212', E'Etuajo-oikeuden päättyminen');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Etuajo-oikeus- ja väistämismerkit', E'221', E'Etuajo-oikeus kohdattaessa');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Etuajo-oikeus- ja väistämismerkit', E'222', E'Väistämisvelvollisuus kohdattaessa');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Etuajo-oikeus- ja väistämismerkit', E'231', E'Väistämisvelvollisuus risteyksessä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Etuajo-oikeus- ja väistämismerkit', E'232', E'Pakollinen pysäyttäminen');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'111', E'Mutka oikealle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'112', E'Mutka vasemmalle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'113', E'Mutkia, joista ensimmäinen oikealle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'114', E'Mutkia, joista ensimmäinen vasemmalle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'116', E'Jyrkkä ylämäki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'115', E'Jyrkkä alamäki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'121', E'Kapeneva tie');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'122', E'Kaksisuuntainen liikenne');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'131', E'Avattava silta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'132', E'Lautta, laituri tai ranta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'133', E'Liikenneruuhka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'141', E'Epätasainen tie');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'141a', E'Töyssyjä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'142', E'Tietyö');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'143', E'Irtokiviä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'144', E'Liukas ajorata');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'147', E'Vaarallinen tien reuna');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'151', E'Suojatien ennakkovaroitus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'152', E'Lapsia');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'153', E'Pyöräilijöitä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'154', E'Hiihtolatu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'155', E'Hirvi');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'156', E'Poro');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'161', E'Tienristeys');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'162', E'Sivutien risteys molemmin puolin');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'163', E'Sivutien risteys oikealla/vasemmalla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'164', E'Sivutien risteys oikealla/vasemmalla viistoon');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'165', E'Liikennevalot');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'166', E'Liikenneympyrä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'167', E'Raitiovaunu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'171', E'Rautatien tasoristeys ilman puomeja');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'172', E'Rautatien tasoristeys, jossa on puomit');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'173', E'Rautatien tasoristeyksen lähestymismerkki ///');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'174', E'Rautatien tasoristeyksen lähestymismerkki //');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'175', E'Rautatien tasoristeyksen lähestymismerkki /');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'177', E'Kaksi tai useampiraiteisen rautatien tasoristeys');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'181', E'Putoavia kiviä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'182', E'Matalalla lentäviä lentokoneita');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'183', E'Sivutuuli');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Varoitusmerkit', E'189', E'Muu vaara');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'311', E'Ajoneuvolla ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'312', E'Moottorikäyttöisellä ajoneuvolla ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'313', E'Kuorma- ja pakettiautolla ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'314', E'Ajoneuvoyhdistelmällä ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'316', E'Moottoripyörällä ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'317', E'Moottorikelkalla ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'318', E'Vaarallisten aineiden kuljetus kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'319', E'Linja-autolla ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'321', E'Mopolla ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'322', E'Polkupyörällä ja mopolla ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'323', E'Jalankulku kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'324', E'Jalankulku ja polkupyörällä ja mopolla ajo kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'325', E'Ratsastus kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'331', E'Kielletty ajosuunta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'332', E'Vasemmalle kääntyminen kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'333', E'Oikealle kääntyminen kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'334', E'U-käännös kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'341', E'Ajoneuvon suurin sallittu leveys');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'342', E'Ajoneuvon suurin sallittu korkeus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'343', E'Ajoneuvon tai ajoneuvoyhdistelmän suurin sallittu pituus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'344', E'Ajoneuvon suurin sallittu massa');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'345', E'Ajoneuvoyhdistelmän suurin sallittu massa');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'346', E'Ajoneuvon suurin sallittu akselille kohdistuva massa');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'347', E'Ajoneuvon suurin sallittu telille kohdistuva massa');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'351', E'Ohituskielto');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'352', E'Ohituskielto päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'353', E'Ohituskielto kuorma-autolla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'354', E'Ohituskielto kuorma-autolla päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'361', E'Nopeusrajoitus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'362', E'Nopeusrajoitus päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'363', E'Nopeusrajoitusalue');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'364', E'Nopeusrajoitusalue päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'365', E'Ajokaistakohtainen kielto, rajoitus tai määräys');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'371', E'Pysäyttäminen kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'372', E'Pysäköinti kielletty');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'373', E'Pysäköintikieltoalue');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'374', E'Pysäköintikieltoalue päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'375', E'Taksiasema-alue');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'376', E'Taksin pysäyttämispaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'381', E'Vuoropysäköinti (kielletty parittomina päivinä)');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'382', E'Vuoropysäköinti (kielletty parillisina päivinä)');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'391', E'Pakollinen pysäyttäminen tullitarkastusta varten');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'392', E'Pakollinen pysäyttäminen tarkastusta varten');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Kielto- ja rajoitusmerkit', E'393', E'Moottorikäyttöisten ajoneuvojen vähimmäisetäisyys');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Määräysmerkit', E'411', E'Pakollinen ajosuunta oikealle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Määräysmerkit', E'412', E'Pakollinen ajosuunta suoraan');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Määräysmerkit', E'413', E'Pakollinen ajosuunta kääntyminen oikealle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Määräysmerkit', E'414', E'Pakollinen ajosuunta suoraan tai kääntyminen oikealle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Määräysmerkit', E'415', E'Pakollinen ajosuunta kääntyminen oikealle tai vasemmalle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Määräysmerkit', E'416', E'Pakollinen kiertosuunta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Määräysmerkit', E'417', E'Liikenteenjakaja');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Määräysmerkit', E'418', E'Liikenteenjakaja');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Määräysmerkit', E'421', E'Jalkakäytävä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Määräysmerkit', E'422', E'Pyörätie');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Määräysmerkit', E'423', E'Yhdistetty pyörätie ja jalkakäytävä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Määräysmerkit', E'424', E'Pyörätie ja jalkakäytävä rinnakkain, pyörätie vasemmalla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Määräysmerkit', E'425', E'Pyörätie ja jalkakäytävä rinnakkain, pyörätie oikealla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Määräysmerkit', E'426', E'Moottorikelkkailureitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Määräysmerkit', E'427', E'Ratsastustie');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'511', E'Suojatie');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'521', E'Pysäköintipaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'520', E'Liityntäpysäköintipaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'521 a', E'Ajoneuvojen sijoitus pysäköintipaikalla suoraan');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'521 b', E'Ajoneuvojen sijoitus pysäköintipaikalla vastakkain');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'521 c', E'Ajoneuvojen sijoitus pysäköintipaikalla vinoon');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'522', E'Kohtaamispaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'531', E'Paikallisliikenteen lina-auton pysäkki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'532', E'Kaukoliikenteen linja-auton pysäkki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'533', E'Raitiovaunupysäkki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'534', E'Taksiasema');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'541 a', E'Linja-autokaista');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'541 b', E'Linja-auto ja taksikaista');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'542 a', E'Linja-autokaista päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'542 b', E'Linja-auto ja taksikaista päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'543 a', E'Raitiovaunukaista');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'543 b', E'Raitiovaunu- ja taksikaista');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'544 a', E'Raitiovaunukaista päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'544 b', E'Raitiovaunu- ja taksikaista päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'551', E'Yksisuuntainen tie suoraan');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'561', E'Moottoritie');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'562', E'Moottoritie päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'563', E'Moottoriliikennetie');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'564', E'Moottoriliikennetie päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'565', E'Tunneli');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'566', E'Tunneli päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'567', E'Hätäpysäyttämispaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'571', E'Taajama');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'572', E'Taajama päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'573', E'Pihakatu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'574', E'Pihakatu päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'575', E'Kävelykatu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Sääntömerkit', E'576', E'Kävelykatu päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'611', E'Suunnistustaulu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'612', E'Suunnistustaulu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'614', E'Kiertotien suunnistustaulu (sininen pohja)');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'613', E'Kiertotien suunnistustaulu (keltainen pohja)');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'615', E'Kiertotieopastus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'616', E'Ajoreittiopastus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'621', E'Ajokaistaopastus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'622', E'Ajokaistaopastus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'623', E'Ajokaistan päättyminen');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'631', E'Ajokaistan yläpuolinen viitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'632', E'Ajokaistan yläpuolinen viitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'633', E'Ajokaistan yläpuolinen erkanemisviitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'641', E'Tienviitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'642', E'Erkanemisviitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'643', E'Yksityisen tien viitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'644', E'Osoiteviitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'644 a', E'Osoiteviitan ennakkomerkki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'646', E'Kiertotien viitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'645', E'Kevyen liikenteen viitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'647', E'Kiertotien viitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'648', E'Paikalliskohteen viitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'649', E'Moottori- ja moottoriliikennetien viitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'650', E'Liityntäpysäköintiviitta juna');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'651', E'Umpitie edessä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'652', E'Umpitie oikealla/vasemmalla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'653', E'Enimmäisnopeussuositus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'661', E'Etäisyystaulu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'662', E'Paikannimi');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'663', E'Kansainvälisen pääliikenneväylän numero');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'664', E'Valtatien numero');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'665', E'Kantatien numero');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'665 a', E'Seututien numero');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'666', E'Muun maantien numero');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'6679', E'Eritasoliittymän numero');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'667', E'Opastus numeron tarkoittamalle tielle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'671', E'Moottoritien tunnus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'672', E'Moottoriliikennetien tunnus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'673', E'Lentoasema');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'674', E'Autolautta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'675', E'Tavarasatama');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'676', E'Teollisuusalue tai yritysalue');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'677', E'Pysäköinti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'677 a', E'Katettu pysäköinti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'678', E'Rautatieasema');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'679', E'Linja-autoasema');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'681', E'Tietylle ajoneuvolle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'681a', E'Kuorma-autolle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'681 b', E'Henkilöautolle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'681 c', E'Linja-autolle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'681 d', E'Pakettiautolle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'681 e', E'Moottoripyörälle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'681 f', E'Mopolle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'681 g', E'Traktorille tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'681 h', E'Matkailuajoneuvolle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'681 i', E'Polkupyörälle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'684', E'Vaarallisten aineiden kuljetukselle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'682', E'Jalankulkijalle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'683', E'Vammaiselle tarkoitettu reitti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'685', E'Reitti, jolla on portaat alas');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'686', E'Reitti ilman portaita alas');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'690', E'Hätäuloskäynti vasemmalla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Opastusmerkit', E'691', E'Poistumisreitti (yksi)');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'701', E'Palvelukohteen opastustaulu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'702', E'Palvelukohteen opastustaulu nuolella');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'703', E'Palvelukohteen erkanemisviitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'704', E'Palvelukohteen osoiteviitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'704 a', E'Palvelukohteen osoiteviitan ennakkomerkki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'710', E'Radioaseman taajuus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'711', E'Opastuspiste');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'712', E'Opastustoimisto');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'715', E'Ensiapu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'721', E'Autokorjaamo');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'722', E'Polttoaineen jakelu bensiini tai etanoli');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'723', E'Hotelli tai motelli');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'724', E'Ruokailupaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'725', E'Kahvila tai pikaruokapaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'726', E'Käymälä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'731', E'Retkeilymaja');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'733', E'Leirintäalue');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'734', E'Matkailuajoneuvoalue');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'741', E'Levähdysalue');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'742', E'Ulkoilualue');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'791', E'Hätäpuhelin');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'792', E'Sammutin');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'772 a', E'Museo tai historiallinen rakennus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'772 c', E'Maailmanperintökohde');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'772 b', E'Luontokohde');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'772 e', E'Näköalapaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'772 f', E'Eläintarha tai -puisto');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'772 g', E'Muu nähtävyys');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'773 a', E'Uintipaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'773 b', E'Kalastuspaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'773 c', E'Hiihtohissi');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'773 d', E'Golfkenttä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'773 e', E'Huvi- ja teemapuisto');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'774 a', E'Mökkimajoitus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'774 b', E'Aamiaismajoitus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'774 c', E'Suoramyyntipaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'774 d', E'Käsityöpaja');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'774 e', E'Kotieläinpiha');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'774 f', E'Ratsastuspaikka');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'771 a', E'Matkailutie (pelkkä teksti)');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Palvelukohteiden opastusmerkit', E'771 b', E'Matkailutie (kuva ja teksti)');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'811', E'Kohde risteävässä suunnassa');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'812', E'Kohde nuolen suunnassa');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'813', E'Kohde nuolen suunnassa ja etäisyys');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'814', E'Vaikutusalueen pituus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'815', E'Etäisyys kohteeseen');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'816', E'Etäisyys pakolliseen pysäyttämiseen');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'821', E'Vapaa leveys');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'822', E'Vapaa korkeus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'823', E'Sähköjohdon korkeus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'824', E'Vaikutusalue molempiin suuntiin oikealle ja vasemmalle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'825', E'Vaikutusalue molempiin suuntiin eteen- ja taaksepäin');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'826', E'Vaikutusalue nuolen suuntaan');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'827', E'Vaikutusalue alkaa');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'828', E'Vaikutusalue päättyy');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'831', E'Henkilöauto');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'832', E'Linja-auto');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'833', E'Kuormaauto');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'834', E'Pakettiauto');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'835', E'Matkailuperävaunu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'836', E'Invalidin ajoneuvo');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'841', E'Moottoripyörä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'842', E'Mopo');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'843', E'Polkupyörä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'845', E'Pysäköintitapa reunakiven päälle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'844', E'Pysäköintitapa reunakiven laitaan');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'848', E'Kielto ryhmän A vaarallisten aineiden kuljetukselle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'849', E'Kielto ryhmän B vaarallisten aineiden kuljetukselle');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'851', E'Voimassaoloaika arkisin ma-pe');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'852', E'Voimassaoloaika arkilauantaisin');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'853', E'Voimassaoloaika sunnuntaisin ja pyhinä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'854', E'Aikarajoitus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'856 a', E'Pysäköintiajan alkamisen osoittamisvelvollisuus (keltainen pohja)');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'856 b', E'Pysäköintiajan alkamisen osoittamisvelvollisuus (sininen pohja)');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'855 a', E'Maksullinen pysäköinti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'855 b', E'Maksullinen pysäköinti');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'856 a', E'Pysäköintikiekon käyttövelvollisuus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'856 b', E'Pysäköintikiekon käyttövelvollisuus');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'861 a', E'Etuajooikeutetun liikenteen suunta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'861 b', E'Etuajooikeutetun liikenteen suunta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'862', E'Tukkitie');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'863', E'Kaksisuuntainen pyörätie');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'871', E'Tekstillinen lisäkilpi');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'872', E'Huoltoajo sallittu');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Lisäkilvet', E'880', E'Hätäpuhelin ja sammutin');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'916', E'Kaarteen suuntamerkki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'931', E'Reunamerkki vasemmalla');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'935', E'Korkeusmerkki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'941', E'Alikulun korkeusmitta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'932', E'Liikennemerkkipylvään tehostamismerkki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'911', E'Erkanemismerkki');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'9901', E'Automaattinen liikennevalvonta');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'9512', E'Poronhoitoalue tekstillinen');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'9512', E'Poronhoitoalue ilman tekstiä');
-- ddl-end --
INSERT INTO koodistot.merkkityyppi (asetus, tyyppi, asetusnumero, nimi_fi) VALUES (E'182/1982', E'Muut liikenteenohjaukseen tarkoitetut merkit', E'9512', E'Valtion raja');
-- ddl-end --

-- object: liikennemerkit.liikennemerkki | type: TABLE --
-- DROP TABLE IF EXISTS liikennemerkit.liikennemerkki CASCADE;
CREATE TABLE liikennemerkit.liikennemerkki (
	id uuid NOT NULL,
	arvo integer,
	suunta integer,
	teksti varchar,
	lisatieto varchar,
	paatosnumero varchar,
	suunnitelmanumero varchar,
	katulupanumero varchar,
	luoja varchar DEFAULT current_user,
	luonti_aika timestamptz DEFAULT now(),
	viimeisin_muokkaaja varchar DEFAULT current_user,
	viimeisin_muokkausaika timestamptz DEFAULT now(),
	"digiroad-id" varchar,
	geom geometry(POINTZ, 3067),
	koodi_merkkityyppi integer,
	koodi_suhteellinen_sijainti integer,
	koodi_rakenne integer,
	koodi_kaistanumero integer,
	koodi_kaistatyyppi integer,
	koodi_kuntoluokka integer,
	koodi_vauriotyyppi integer,
	koodi_kalvo integer,
	koodi_koko integer,
	koodi_korjauksen_kiireellisyys integer,
	koodi_puoleisuus integer,
	CONSTRAINT liikennemerkkit_pk PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON COLUMN liikennemerkit.liikennemerkki.paatosnumero IS 'Viranomaispäätöksen numero';
-- ddl-end --
COMMENT ON COLUMN liikennemerkit.liikennemerkki.suunnitelmanumero IS 'Katusuunnitelman numero tms.';
-- ddl-end --
COMMENT ON COLUMN liikennemerkit.liikennemerkki.katulupanumero IS 'Katulupajärjestelmässä oleva numero';
-- ddl-end --
COMMENT ON COLUMN liikennemerkit.liikennemerkki."digiroad-id" IS 'Digiroadin tunnus: pitäisikö olla Integer?';
-- ddl-end --

-- object: merkkityyppi_fk | type: CONSTRAINT --
-- ALTER TABLE liikennemerkit.liikennemerkki DROP CONSTRAINT IF EXISTS merkkityyppi_fk CASCADE;
ALTER TABLE liikennemerkit.liikennemerkki ADD CONSTRAINT merkkityyppi_fk FOREIGN KEY (koodi_merkkityyppi)
REFERENCES koodistot.merkkityyppi (koodi) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: liikennemerkit.lisakilpi | type: TABLE --
-- DROP TABLE IF EXISTS liikennemerkit.lisakilpi CASCADE;
CREATE TABLE liikennemerkit.lisakilpi (
	id uuid NOT NULL,
	teksti varchar,
	jarjestys smallint,
	lisatieto varchar,
	paatosnumero varchar,
	suunnitelmanumero varchar,
	katulupanumero varchar,
	luoja varchar DEFAULT current_user,
	luonti_aika timestamptz DEFAULT now(),
	viimeisin_muokkaaja varchar DEFAULT current_user,
	viimeisin_muokkausaika timestamptz DEFAULT now(),
	id_liikennemerkki uuid,
	koodi_merkkityyppi integer,
	koodi_koko integer,
	koodi_kalvo integer,
	CONSTRAINT lisakilpi_pk PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON COLUMN liikennemerkit.lisakilpi.jarjestys IS 'Lisäkilven järjestysnumero päämerkkiin suhteessa: 1 on lähin, 2 seuraava ja 3 kauimpana';
-- ddl-end --
COMMENT ON COLUMN liikennemerkit.lisakilpi.paatosnumero IS 'Jätetään tyhjäksi, jos sama kuin päämerkin päätösnumero';
-- ddl-end --
COMMENT ON COLUMN liikennemerkit.lisakilpi.suunnitelmanumero IS 'Jätetään tyhjäksi, jos sama kuin päämerkin päätösnumero';
-- ddl-end --
COMMENT ON COLUMN liikennemerkit.lisakilpi.katulupanumero IS 'Jätetään tyhjäksi, jos sama kuin päämerkin päätösnumero';
-- ddl-end --

-- object: liikennemerkki_fk | type: CONSTRAINT --
-- ALTER TABLE liikennemerkit.lisakilpi DROP CONSTRAINT IF EXISTS liikennemerkki_fk CASCADE;
ALTER TABLE liikennemerkit.lisakilpi ADD CONSTRAINT liikennemerkki_fk FOREIGN KEY (id_liikennemerkki)
REFERENCES liikennemerkit.liikennemerkki (id) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: koodistot.suhteellinen_sijainti | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.suhteellinen_sijainti CASCADE;
CREATE TABLE koodistot.suhteellinen_sijainti (
	koodi integer NOT NULL,
	selite_fi varchar,
	CONSTRAINT koodilista_suhteellinen_sijainti_pk PRIMARY KEY (koodi)

);
-- ddl-end --

INSERT INTO koodistot.suhteellinen_sijainti (koodi, selite_fi) VALUES (E'0', E'Ei tiedossa');
-- ddl-end --
INSERT INTO koodistot.suhteellinen_sijainti (koodi, selite_fi) VALUES (E'1', E'Väylän oikea puoli (ajosuuntaan nähden)');
-- ddl-end --
INSERT INTO koodistot.suhteellinen_sijainti (koodi, selite_fi) VALUES (E'2', E'Väylän vasen puoli (ajosuuntaan nähden)');
-- ddl-end --
INSERT INTO koodistot.suhteellinen_sijainti (koodi, selite_fi) VALUES (E'3', E'Kaistan yläpuolella');
-- ddl-end --
INSERT INTO koodistot.suhteellinen_sijainti (koodi, selite_fi) VALUES (E'4', E'Keskisaareke tai liikenteenjakaja');
-- ddl-end --
INSERT INTO koodistot.suhteellinen_sijainti (koodi, selite_fi) VALUES (E'5', E'Pituussuuntan ajosuuntaan nähden');
-- ddl-end --
INSERT INTO koodistot.suhteellinen_sijainti (koodi, selite_fi) VALUES (E'6', E'Tie tai katuverkon ulkopuolella, esimerkiksi parkkialueella tai piha-alueella');
-- ddl-end --

-- object: koodistot.rakenne | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.rakenne CASCADE;
CREATE TABLE koodistot.rakenne (
	koodi integer NOT NULL,
	selite_fi varchar,
	CONSTRAINT koodilista_rakenne_pk PRIMARY KEY (koodi)

);
-- ddl-end --

INSERT INTO koodistot.rakenne (koodi, selite_fi) VALUES (E'0', E'Ei tiedossa');
-- ddl-end --
INSERT INTO koodistot.rakenne (koodi, selite_fi) VALUES (E'1', E'Pylväs');
-- ddl-end --
INSERT INTO koodistot.rakenne (koodi, selite_fi) VALUES (E'2', E'Seinä');
-- ddl-end --
INSERT INTO koodistot.rakenne (koodi, selite_fi) VALUES (E'3', E'Silta');
-- ddl-end --
INSERT INTO koodistot.rakenne (koodi, selite_fi) VALUES (E'4', E'Portaali');
-- ddl-end --
INSERT INTO koodistot.rakenne (koodi, selite_fi) VALUES (E'5', E'Puoliportaali');
-- ddl-end --
INSERT INTO koodistot.rakenne (koodi, selite_fi) VALUES (E'6', E'Puomi tai muu esterakennelma');
-- ddl-end --
INSERT INTO koodistot.rakenne (koodi, selite_fi) VALUES (E'7', E'Muu');
-- ddl-end --

-- object: koodistot.kuntoluokka | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.kuntoluokka CASCADE;
CREATE TABLE koodistot.kuntoluokka (
	koodi integer NOT NULL,
	selite_fi varchar,
	tarkenne_fi varchar,
	CONSTRAINT koodilista_kuntoluokka_pk PRIMARY KEY (koodi)

);
-- ddl-end --
COMMENT ON TABLE koodistot.kuntoluokka IS 'Liikennemerkin kuntoluokka';
-- ddl-end --

INSERT INTO koodistot.kuntoluokka (koodi, selite_fi, tarkenne_fi) VALUES (E'0', E'Ei tiedossa', DEFAULT);
-- ddl-end --
INSERT INTO koodistot.kuntoluokka (koodi, selite_fi, tarkenne_fi) VALUES (E'1', E'Erittäin huono', E'Ei enää hyväksyttävissä oleva kunto. Aiheuttaa ylimääräisiä kustannuksia niin tienpitäjälle kuin tienkäyttäjille.');
-- ddl-end --
INSERT INTO koodistot.kuntoluokka (koodi, selite_fi, tarkenne_fi) VALUES (E'2', E'Huono', E'Korjausta vaativa kunto. Tämä on kestävän tienpidon kannalta oikea ylläpito- ja peruskorjaustoimenpiteiden toteutushetki.');
-- ddl-end --
INSERT INTO koodistot.kuntoluokka (koodi, selite_fi, tarkenne_fi) VALUES (E'3', E'Tyydyttävä', E'Tyydyttävä kunto. Tarvitaan yleensä kunnon tehostettua seurantaa, ja yksittäisiä ylläpitotoimia saattaa olla perusteltua tehdä.');
-- ddl-end --
INSERT INTO koodistot.kuntoluokka (koodi, selite_fi, tarkenne_fi) VALUES (E'4', E'Hyvä', E'Hyvä kunto, vaikka normaalia kulumista esiintyy jo. Ylläpitotarpeita ei ole.');
-- ddl-end --
INSERT INTO koodistot.kuntoluokka (koodi, selite_fi, tarkenne_fi) VALUES (E'5', E'Erittäin hyvä', E'Uutta vastaava kunto. Ylläpitotarpeita ei ole.');
-- ddl-end --

-- object: koodistot.vauriotyyppi | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.vauriotyyppi CASCADE;
CREATE TABLE koodistot.vauriotyyppi (
	koodi integer NOT NULL,
	selite_fi varchar,
	CONSTRAINT koodilista_vauriotyyppi_pk PRIMARY KEY (koodi)

);
-- ddl-end --

INSERT INTO koodistot.vauriotyyppi (koodi, selite_fi) VALUES (E'0', E'Ei tiedossa');
-- ddl-end --
INSERT INTO koodistot.vauriotyyppi (koodi, selite_fi) VALUES (E'1', E'Ruostunut');
-- ddl-end --
INSERT INTO koodistot.vauriotyyppi (koodi, selite_fi) VALUES (E'2', E'Kolhiintunut');
-- ddl-end --
INSERT INTO koodistot.vauriotyyppi (koodi, selite_fi) VALUES (E'3', E'Maalaus vaurioitunut');
-- ddl-end --
INSERT INTO koodistot.vauriotyyppi (koodi, selite_fi) VALUES (E'4', E'Muu vaurio');
-- ddl-end --

-- object: koodistot.korjauksen_kiireellisyys | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.korjauksen_kiireellisyys CASCADE;
CREATE TABLE koodistot.korjauksen_kiireellisyys (
	koodi integer NOT NULL,
	selite_fi varchar,
	CONSTRAINT koodilista_korjauksen_kiireellisyys_pk PRIMARY KEY (koodi)

);
-- ddl-end --

INSERT INTO koodistot.korjauksen_kiireellisyys (koodi, selite_fi) VALUES (E'0', E'Ei tiedossa');
-- ddl-end --
INSERT INTO koodistot.korjauksen_kiireellisyys (koodi, selite_fi) VALUES (E'1', E'Erittäin kiireellinen');
-- ddl-end --
INSERT INTO koodistot.korjauksen_kiireellisyys (koodi, selite_fi) VALUES (E'2', E'Kiireellinen');
-- ddl-end --
INSERT INTO koodistot.korjauksen_kiireellisyys (koodi, selite_fi) VALUES (E'3', E'Jokseenkin kiireellinen');
-- ddl-end --
INSERT INTO koodistot.korjauksen_kiireellisyys (koodi, selite_fi) VALUES (E'4', E'Ei kiireellinen');
-- ddl-end --

-- object: koodistot.koko | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.koko CASCADE;
CREATE TABLE koodistot.koko (
	koodi integer NOT NULL,
	selite_fi varchar,
	CONSTRAINT koodilista_koko_pk PRIMARY KEY (koodi)

);
-- ddl-end --

INSERT INTO koodistot.koko (koodi, selite_fi) VALUES (E'0', E'Ei tiedossa');
-- ddl-end --
INSERT INTO koodistot.koko (koodi, selite_fi) VALUES (E'1', E'Pienikokoinen merkki');
-- ddl-end --
INSERT INTO koodistot.koko (koodi, selite_fi) VALUES (E'2', E'Normaalikokoinen merkki');
-- ddl-end --
INSERT INTO koodistot.koko (koodi, selite_fi) VALUES (E'3', E'Suurikokoinen merkki');
-- ddl-end --

-- object: koodistot.kalvo | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.kalvo CASCADE;
CREATE TABLE koodistot.kalvo (
	koodi integer NOT NULL,
	selite_fi varchar,
	CONSTRAINT koodilista_kalvo_pk PRIMARY KEY (koodi)

);
-- ddl-end --

INSERT INTO koodistot.kalvo (koodi, selite_fi) VALUES (E'0', E'Ei tiedossa');
-- ddl-end --
INSERT INTO koodistot.kalvo (koodi, selite_fi) VALUES (E'1', E'R1 luokan kalvo');
-- ddl-end --
INSERT INTO koodistot.kalvo (koodi, selite_fi) VALUES (E'2', E'R2 luokan kalvo');
-- ddl-end --
INSERT INTO koodistot.kalvo (koodi, selite_fi) VALUES (E'3', E'R3 luokan kalvo');
-- ddl-end --

-- object: merkkityyppi_fk | type: CONSTRAINT --
-- ALTER TABLE liikennemerkit.lisakilpi DROP CONSTRAINT IF EXISTS merkkityyppi_fk CASCADE;
ALTER TABLE liikennemerkit.lisakilpi ADD CONSTRAINT merkkityyppi_fk FOREIGN KEY (koodi_merkkityyppi)
REFERENCES koodistot.merkkityyppi (koodi) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: koodistot.kaistanumero | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.kaistanumero CASCADE;
CREATE TABLE koodistot.kaistanumero (
	koodi integer NOT NULL,
	selite_fi varchar,
	digiroad_koodi integer,
	CONSTRAINT koodilista_kaistanumero_pk PRIMARY KEY (koodi)

);
-- ddl-end --

INSERT INTO koodistot.kaistanumero (koodi, selite_fi, digiroad_koodi) VALUES (E'0', E'Ei tiedossa', E'0');
-- ddl-end --
INSERT INTO koodistot.kaistanumero (koodi, selite_fi, digiroad_koodi) VALUES (E'1', E'Pääkaista 1', E'11');
-- ddl-end --
INSERT INTO koodistot.kaistanumero (koodi, selite_fi, digiroad_koodi) VALUES (E'2', E'I lisäkaista pääkaistan 1 vasemmalla puolella', E'12');
-- ddl-end --
INSERT INTO koodistot.kaistanumero (koodi, selite_fi, digiroad_koodi) VALUES (E'3', E'I lisäkaista pääkaistan 1 oikealla puolella', E'13');
-- ddl-end --
INSERT INTO koodistot.kaistanumero (koodi, selite_fi, digiroad_koodi) VALUES (E'4', E'II lisäkaista pääkaistan 1 vasemmalla puolella', E'14');
-- ddl-end --
INSERT INTO koodistot.kaistanumero (koodi, selite_fi, digiroad_koodi) VALUES (E'5', E'II lisäkaista pääkaistan 1 oikealla puolella', E'15');
-- ddl-end --
INSERT INTO koodistot.kaistanumero (koodi, selite_fi, digiroad_koodi) VALUES (E'6', E'III lisäkaista pääkaistan 1 vasemmalla puolella', E'16');
-- ddl-end --
INSERT INTO koodistot.kaistanumero (koodi, selite_fi, digiroad_koodi) VALUES (E'7', E'III lisäkaista pääkaistan 1 oikealla puolella', E'17');
-- ddl-end --
INSERT INTO koodistot.kaistanumero (koodi, selite_fi, digiroad_koodi) VALUES (E'8', E'IV lisäkaista pääkaistan 1 vasemmalla puolella', E'18');
-- ddl-end --
INSERT INTO koodistot.kaistanumero (koodi, selite_fi, digiroad_koodi) VALUES (E'9', E'IV lisäkaista pääkaistan 1 oikealla puolella', E'19');
-- ddl-end --
INSERT INTO koodistot.kaistanumero (koodi, selite_fi, digiroad_koodi) VALUES (E'10', E'Pääkaista 2', E'21');
-- ddl-end --
INSERT INTO koodistot.kaistanumero (koodi, selite_fi, digiroad_koodi) VALUES (E'11', E'I lisäkaista pääkaistan 2 vasemmalla puolella', E'22');
-- ddl-end --
INSERT INTO koodistot.kaistanumero (koodi, selite_fi, digiroad_koodi) VALUES (E'12', E'I lisäkaista pääkaistan 2 oikealla puolella', E'23');
-- ddl-end --
INSERT INTO koodistot.kaistanumero (koodi, selite_fi, digiroad_koodi) VALUES (E'13', E'II lisäkaista pääkaistan 2 vasemmalla puolella', E'24');
-- ddl-end --
INSERT INTO koodistot.kaistanumero (koodi, selite_fi, digiroad_koodi) VALUES (E'14', E'II lisäkaista pääkaistan 2 oikealla puolella', E'25');
-- ddl-end --
INSERT INTO koodistot.kaistanumero (koodi, selite_fi, digiroad_koodi) VALUES (E'15', E'III lisäkaista pääkaistan 1 vasemmalla puolella', E'26');
-- ddl-end --
INSERT INTO koodistot.kaistanumero (koodi, selite_fi, digiroad_koodi) VALUES (E'16', E'III lisäkaista pääkaistan 2 oikealla puolella', E'27');
-- ddl-end --
INSERT INTO koodistot.kaistanumero (koodi, selite_fi, digiroad_koodi) VALUES (E'17', E'IV lisäkaista pääkaistan 2 vasemmalla puolella', E'28');
-- ddl-end --
INSERT INTO koodistot.kaistanumero (koodi, selite_fi, digiroad_koodi) VALUES (E'18', E'IV lisäkaista pääkaistan 2 oikealla puolella', E'29');
-- ddl-end --
INSERT INTO koodistot.kaistanumero (koodi, selite_fi, digiroad_koodi) VALUES (E'19', E'Molempiin suuntiin liikenteen salliva kaista', E'31');
-- ddl-end --

-- object: koodistot.kaistatyyppi | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.kaistatyyppi CASCADE;
CREATE TABLE koodistot.kaistatyyppi (
	koodi integer NOT NULL,
	selite_fi varchar,
	CONSTRAINT koodilista_kaistatyyppi_pk PRIMARY KEY (koodi)

);
-- ddl-end --

INSERT INTO koodistot.kaistatyyppi (koodi, selite_fi) VALUES (E'0', E'Ei tiedossa');
-- ddl-end --
INSERT INTO koodistot.kaistatyyppi (koodi, selite_fi) VALUES (E'1', E'Pääkaista');
-- ddl-end --
INSERT INTO koodistot.kaistatyyppi (koodi, selite_fi) VALUES (E'2', E'Ohituskaista');
-- ddl-end --
INSERT INTO koodistot.kaistatyyppi (koodi, selite_fi) VALUES (E'3', E'Kääntymiskaista oikealle');
-- ddl-end --
INSERT INTO koodistot.kaistatyyppi (koodi, selite_fi) VALUES (E'4', E'Kääntymiskaista vasemmalle');
-- ddl-end --
INSERT INTO koodistot.kaistatyyppi (koodi, selite_fi) VALUES (E'5', E'Lisäkaista suoraan ajaville');
-- ddl-end --
INSERT INTO koodistot.kaistatyyppi (koodi, selite_fi) VALUES (E'6', E'Liittymiskaista');
-- ddl-end --
INSERT INTO koodistot.kaistatyyppi (koodi, selite_fi) VALUES (E'7', E'Erkanemiskaista');
-- ddl-end --
INSERT INTO koodistot.kaistatyyppi (koodi, selite_fi) VALUES (E'8', E'Sekoittumiskaista');
-- ddl-end --
INSERT INTO koodistot.kaistatyyppi (koodi, selite_fi) VALUES (E'9', E'Joukkoliikenteen kaista / taksikaista');
-- ddl-end --
INSERT INTO koodistot.kaistatyyppi (koodi, selite_fi) VALUES (E'10', E'Raskaan liikenteen kaista');
-- ddl-end --
INSERT INTO koodistot.kaistatyyppi (koodi, selite_fi) VALUES (E'11', E'Vaihtuvasuuntainen kaista');
-- ddl-end --
INSERT INTO koodistot.kaistatyyppi (koodi, selite_fi) VALUES (E'12', E'Pyöräkaista');
-- ddl-end --
INSERT INTO koodistot.kaistatyyppi (koodi, selite_fi) VALUES (E'20', E'Yhdistetty pyörätie ja jalkakäytävä');
-- ddl-end --
INSERT INTO koodistot.kaistatyyppi (koodi, selite_fi) VALUES (E'21', E'Jalkakäytävä');
-- ddl-end --
INSERT INTO koodistot.kaistatyyppi (koodi, selite_fi) VALUES (E'22', E'Pyörätie');
-- ddl-end --
INSERT INTO koodistot.kaistatyyppi (koodi, selite_fi) VALUES (E'23', E'Kävelykatu');
-- ddl-end --
INSERT INTO koodistot.kaistatyyppi (koodi, selite_fi) VALUES (E'24', E'Pyöräkatu');
-- ddl-end --

-- object: suhteellinen_sijainti_fk | type: CONSTRAINT --
-- ALTER TABLE liikennemerkit.liikennemerkki DROP CONSTRAINT IF EXISTS suhteellinen_sijainti_fk CASCADE;
ALTER TABLE liikennemerkit.liikennemerkki ADD CONSTRAINT suhteellinen_sijainti_fk FOREIGN KEY (koodi_suhteellinen_sijainti)
REFERENCES koodistot.suhteellinen_sijainti (koodi) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: rakenne_fk | type: CONSTRAINT --
-- ALTER TABLE liikennemerkit.liikennemerkki DROP CONSTRAINT IF EXISTS rakenne_fk CASCADE;
ALTER TABLE liikennemerkit.liikennemerkki ADD CONSTRAINT rakenne_fk FOREIGN KEY (koodi_rakenne)
REFERENCES koodistot.rakenne (koodi) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: kaistanumero_fk | type: CONSTRAINT --
-- ALTER TABLE liikennemerkit.liikennemerkki DROP CONSTRAINT IF EXISTS kaistanumero_fk CASCADE;
ALTER TABLE liikennemerkit.liikennemerkki ADD CONSTRAINT kaistanumero_fk FOREIGN KEY (koodi_kaistanumero)
REFERENCES koodistot.kaistanumero (koodi) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: kaistatyyppi_fk | type: CONSTRAINT --
-- ALTER TABLE liikennemerkit.liikennemerkki DROP CONSTRAINT IF EXISTS kaistatyyppi_fk CASCADE;
ALTER TABLE liikennemerkit.liikennemerkki ADD CONSTRAINT kaistatyyppi_fk FOREIGN KEY (koodi_kaistatyyppi)
REFERENCES koodistot.kaistatyyppi (koodi) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: kuntoluokka_fk | type: CONSTRAINT --
-- ALTER TABLE liikennemerkit.liikennemerkki DROP CONSTRAINT IF EXISTS kuntoluokka_fk CASCADE;
ALTER TABLE liikennemerkit.liikennemerkki ADD CONSTRAINT kuntoluokka_fk FOREIGN KEY (koodi_kuntoluokka)
REFERENCES koodistot.kuntoluokka (koodi) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: vauriotyyppi_fk | type: CONSTRAINT --
-- ALTER TABLE liikennemerkit.liikennemerkki DROP CONSTRAINT IF EXISTS vauriotyyppi_fk CASCADE;
ALTER TABLE liikennemerkit.liikennemerkki ADD CONSTRAINT vauriotyyppi_fk FOREIGN KEY (koodi_vauriotyyppi)
REFERENCES koodistot.vauriotyyppi (koodi) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: kalvo_fk | type: CONSTRAINT --
-- ALTER TABLE liikennemerkit.liikennemerkki DROP CONSTRAINT IF EXISTS kalvo_fk CASCADE;
ALTER TABLE liikennemerkit.liikennemerkki ADD CONSTRAINT kalvo_fk FOREIGN KEY (koodi_kalvo)
REFERENCES koodistot.kalvo (koodi) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: koko_fk | type: CONSTRAINT --
-- ALTER TABLE liikennemerkit.liikennemerkki DROP CONSTRAINT IF EXISTS koko_fk CASCADE;
ALTER TABLE liikennemerkit.liikennemerkki ADD CONSTRAINT koko_fk FOREIGN KEY (koodi_koko)
REFERENCES koodistot.koko (koodi) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: korjauksen_kiireellisyys_fk | type: CONSTRAINT --
-- ALTER TABLE liikennemerkit.liikennemerkki DROP CONSTRAINT IF EXISTS korjauksen_kiireellisyys_fk CASCADE;
ALTER TABLE liikennemerkit.liikennemerkki ADD CONSTRAINT korjauksen_kiireellisyys_fk FOREIGN KEY (koodi_korjauksen_kiireellisyys)
REFERENCES koodistot.korjauksen_kiireellisyys (koodi) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: koko_fk | type: CONSTRAINT --
-- ALTER TABLE liikennemerkit.lisakilpi DROP CONSTRAINT IF EXISTS koko_fk CASCADE;
ALTER TABLE liikennemerkit.lisakilpi ADD CONSTRAINT koko_fk FOREIGN KEY (koodi_koko)
REFERENCES koodistot.koko (koodi) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: kalvo_fk | type: CONSTRAINT --
-- ALTER TABLE liikennemerkit.lisakilpi DROP CONSTRAINT IF EXISTS kalvo_fk CASCADE;
ALTER TABLE liikennemerkit.lisakilpi ADD CONSTRAINT kalvo_fk FOREIGN KEY (koodi_kalvo)
REFERENCES koodistot.kalvo (koodi) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --

-- object: koodistot.puoleisuus | type: TABLE --
-- DROP TABLE IF EXISTS koodistot.puoleisuus CASCADE;
CREATE TABLE koodistot.puoleisuus (
	koodi integer NOT NULL,
	selite_fi varchar,
	CONSTRAINT koodilista_puoleisuus_pk PRIMARY KEY (koodi)

);
-- ddl-end --
COMMENT ON TABLE koodistot.puoleisuus IS 'Liikennemerkin puoleisuus';
-- ddl-end --

INSERT INTO koodistot.puoleisuus (koodi, selite_fi) VALUES (E'0', E'Ei tiedossa');
-- ddl-end --
INSERT INTO koodistot.puoleisuus (koodi, selite_fi) VALUES (E'1', E'1-puoleinen liikennemerkki');
-- ddl-end --
INSERT INTO koodistot.puoleisuus (koodi, selite_fi) VALUES (E'2', E'2-puoleinen liikennemerkki');
-- ddl-end --

-- object: puoleisuus_fk | type: CONSTRAINT --
-- ALTER TABLE liikennemerkit.liikennemerkki DROP CONSTRAINT IF EXISTS puoleisuus_fk CASCADE;
ALTER TABLE liikennemerkit.liikennemerkki ADD CONSTRAINT puoleisuus_fk FOREIGN KEY (koodi_puoleisuus)
REFERENCES koodistot.puoleisuus (koodi) MATCH FULL
ON DELETE SET NULL ON UPDATE CASCADE;
-- ddl-end --


