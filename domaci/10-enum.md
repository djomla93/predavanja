# Enumerations zadaci

Svi ovi zadaci i pitanja dole treba da se reše koristeći `enum` u jednoj od formi koje postoje u `Enumerations.playground` + neke osnovne stvari - tipa `Int`, `String`, `Bool`, prostiji tuple itd.

Razmislite dobro i zapamtite / zapišite način razmišljanja kojim ste stigli do rešenja i zašto ste izabrali baš to rešenje.

**Bitno:**
- Otvorite poseban playground za svaki od ova 3 domaća: _Library_, _AppleDevices_, _CashRegister_
- Svaki korak rešavajte jedan po jedan
- Kada ga rešite, otvorite New Page, pa iskopirajte sadržaj prethodne strane u ovu novu
- Sada radite sledeći korak
- Na taj način ću moći da vidim kako ste rešavali korak po korak.

## Biblioteka

1. Modelirajte informaciju da li je neka knjiga iznajmljena ili ne. Razmislite šta bi bilo dobro ime za to.
//	hint: najprostiji mogući enum

2. Kreirajte data model koji opisuje osobu (dovoljno je ime, prezime i email adresa)
// hint: tuple

3. Unapredite data model tako da, ako je knjiga iznajmljena, onda sadrži i informaciju o tome ko je iznajmio knjigu
//	hint: associated values

## iOS Devices

1. Kreirajte enum tip podatka koji izlistava osnovne klase Apple hw uređaja za koje možete programirati: iPhone, iPad, AppleWatch, AppleTV, Mac. 
Posebnu pažnju usmerite na to šta bi bilo dobro ime za takav tip podatka.

2. Proširite ovaj enum tako da su izlistane i pojedinačne verzije modela (tipa iPhone 6, iPhone 6s, iPhone 5 itd) ali tako da budu proširenje odgovarajuće opšte klase uređaja
// hint: recursive enum

## Novčići

1. Kreirajte enum sa vrednostima koje predstavljaju imena američkih novčića: penny, nickel, dime, quarter, dollar

2. Unapredite enum tako da modelirate njihove stvarne vrednosti u odnosu na $1:
Penny = 1 / 100 
Nickel = 5 / 100
Dime = 10 / 100
Quarter = 25 / 100
Dollar = 100 / 100
(ovde ima 3-4 dobra rešenja, razmislite šta bi vam bilo najlakše da uradite)

3. Napišite globalnu funkciju koja za proizvoljnu cifru u dolarima između 1 i 2 vraća *niz tupleova* koji izlistaju koliko je to čega u pojedinačnim novčićima
//	hint: koristite `/` i `%` operatore

4. Prepišite ovu funkciju kao method samog enuma 

