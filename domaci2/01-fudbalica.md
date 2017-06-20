# Zadatak za vežbu

## Opis

Fudbalski tim, ima max 22 igrača.

* Od kojih su tri golmana
* Za utakmicu se mogu prijaviti do 16 igrača, od kojih su dva golmana
* 11 igrača počinju utakmicu, od kojih je jedan golman
* Igrači koji imaju aktivan crveni karton ili 3 žuta kartona ne mogu biti prijavljeni za utakmicu

Svaki igrač ima sledeće parametre:

* tim
* pozicija u timu, jedna od vrednosti: Golman, Odbrana, VezniRed, Napad
* broj dresa (može biti bilo koji broj od 0 do 22) 
* broj žutih kartona, u opsegu 0 do 3
* da li ima aktivan crveni karton

Utakmica može početi ako postoje dva validna tima sa potrebnim brojem igrača.

## Data model

Kreirati prost (šic!) data model koji može da predstavi

- Poziciju igrača: Golman, Odbrana, VezniRed, Napad
- Igrača
- Tim
- Utakmicu

## Zadatak

Napisati funkcije koje daju sledeće rezultate:

* kreiranje igrača
* kreiranje tima: njegovo ime i sve igrače, gde svaki igrač ima ime, dres, poziciju itd.
* ispis parametara proizvoljnog igrača
* da li određeni igrač može učestvovati u utakmici
* prikaz spiska svih igrača u timu
* prikaz spiska igrača koji počinju utakmicu
(pored svakog igrača ispisati poziciju u timu)
* da li postoje uslovi da utakmica počne

## Šta je na raspolaganju

* Promenjive i konstante bilo kog tipa
* Enumerations
* Array, Set, Dictionary
* Functions
+ Sve drugo što smo do sada radili

Sve treba da radi i funkcioniše u jednom Playgroundu.