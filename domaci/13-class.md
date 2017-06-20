# Classes

Svi ovi zadaci i pitanja dole treba da se reše koristeći `class` stvari opisane u `Classes.playground` + `struct` ako mislite da treba + neke osnovne stvari - tipa `Int`, `String`, `Bool`, prostiji tuple, `enum` itd.

Razmislite dobro i zapamtite / zapišite način razmišljanja kojim ste stigli do rešenja i zašto ste izabrali baš to rešenje.

Kod svih primera voditi računa o pravilnom imenovanju.
Kreirajte obavezno i par primera, kako se dati objektni model koristi.

**Bitno:**
- Otvorite poseban playground za svaki od ovih zadataka.
- Svaki korak rešavajte jedan po jedan
- Kada ga rešite, otvorite New Page, pa iskopirajte sadržaj prethodne strane u ovu novu
- Sada radite sledeći korak
- Na taj način ću moći da vidim kako ste rešavali korak po korak.

(Ne zaboravite: svaka klasa mora da ima barem jedan init, Swift će vas na to već upozoriti)

Razmislite dobro i zapamtite / zapišite način razmišljanja kojim ste stigli do rešenja i zašto ste izabrali baš to rešenje.

## Address Book

(ovo je isti zadatak kao u struct, ali ga sada treba uraditi koristeći samo class)

1. Kreirati model kontakta u imeniku, koji za početak ima samo: ime, prezime, email

2. Dodati u model listu mogućih social network naloga. Svaka stavka u toj listi treba da sadrži informaciju o kojoj mreži se radi - Facebook, Instagram, Twitter - kao i username na toj mreži

3. Kreirati model kompanije, koja sadrži ime, vrstu delatnosti, home page URL

4. Proširiti model kontakta u imeniku tako da se opciono može dodeliti i kompanija

5. Proširiti model kompanije tako da sadrži listu kontakata koji joj pripadaju

Extra izazov:

1. Razmislite i napišite šta bi po vama bilo idealno rešenje ovog zadatka, tj. koja kombinacija `struct` / `class` bi bila najbolja

## Car Dealership

1. Kreirati model vozila, sa sledećim parametrima: tip vozila (motor, automobil, kamion, autobus)

2. Unapred definisati listu proizvođača vozila na neki fiksan način, kako god mislite da je najbolje. Pojedinačni proizvođač neka bude običan String. Moguće vrednosti su:
Ducati, Honda, Yamaha, Renault, VW, Mercedes, Tesla, BMW, Iveco, Ferrari, Maserati

3. Dodati u model iz tačke 1, listu proizvođača vozila ali tako da tu listu nije moguće promeniti spolja (izvan klase), već se samo može pročitati
//	hint: class method

4. Napisati 4 nasleđene klase od ove osnovne, za svaki od tipova vozila. U svakoj od novih klasa dodati parametar koji opisuje broj točkova

5. Suziti listu mogućih proizvođača u svakoj od 4 nove klase, tako da se vraćaju samo oni proizvođači koji prave proizvode tog tipa
- Ducati (motor)
- Honda (motor, auto)
- Yamaha (motor)
- Renault (auto, kamion), 
- VW (auto, kamion)
- Mercedes (auto, kamion, bus)
- Tesla (auto)
- BMW (motor, auto)
- Iveco (kamion)
- Ferrari (auto)
- Maserati (auto)

6. Dodati u svaku od 4 klase property koji predstavlja proizvođača, koji prihvata jednu vrednost iz spomenute liste mogućih. Taj property nije moguće promeniti nakon što se postavi.

7. Kreirati više konkretnih objekata za svaku od klasa

## Škola

Ovde ima mnogo veza između raznih klasa, tako da vodite o računa o reference cycle problemu. 
//	hint: weak is your friend

1. Kreirati model osobe, koja ima: ime, prezime, broj godina, pol

2. Nasleđivanjem od te klase kreirati nove klase koje definišu učenika, nastavno osoblje, administrativno osoblje, čuvare, čistače, direktora škole

3. Definisati model odeljenja, koje ima jednog učitelja/učiteljicu i listu đaka, kao i oznaku učionice (proizvoljni tekst)

4. Definisati model razreda, koji može imati spisak odeljenja.
Takođe proširiti model odeljenja da sadrži i property koji predstavlja razred

5. Proširiti model nastavnog osoblja tako da sadrži informaciju o odeljenju kojem predaje.

6. Proširiti model učenika, tako da sadrži referencu na odeljenje kojem pripada

7. Kreirati model škole, koji ima ime, spisak nastavnog osoblja, spisak ostalog osoblja, spisak učenika

8. Napisati metod koji upisuje novog učenika u školu i dodeljuje ga određenom odeljenju. 

9. Napisati metod koji dodeljuje nastavnika određenom odeljenju. Ta dodela takođe mora da popuni sve ostale vezane parametre u svim ostalim modelima

10. Napisati metod za nastavno osoblje koji vraća broj učenika kojima dotični nastavnik/ca predaje
