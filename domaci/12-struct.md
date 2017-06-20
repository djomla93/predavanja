# Structs

Svi ovi zadaci i pitanja dole treba da se reše koristeći `struct` stvari opisane u `Structs.playground` + neke osnovne stvari - tipa `Int`, `String`, `Bool`, prostiji tuple, `enum` itd.

Razmislite dobro i zapamtite / zapišite način razmišljanja kojim ste stigli do rešenja i zašto ste izabrali baš to rešenje.

Kod svih primera voditi računa o pravilnom imenovanju.
Kreirajte obavezno i par primera, kako se dati objektni model koristi.

**Bitno:**
- Otvorite poseban playground za svaki od ovih zadataka.
- Svaki korak rešavajte jedan po jedan
- Kada ga rešite, otvorite New Page, pa iskopirajte sadržaj prethodne strane u ovu novu
- Sada radite sledeći korak
- Na taj način ću moći da vidim kako ste rešavali korak po korak.

## Address Book

1. Kreirati model kontakta u imeniku, koji za početak ima samo: ime, prezime, email

2. Kreirati model social network naloga, koji sadrži ime društvene mreže (Facebook, Instagram, Twitter) + username na datoj mreži.

3. Dodati u model kontakta (iz tačke 1) listu mogućih social network naloga. 

4. Kreirati model kompanije koji sadrži ime, vrstu delatnosti, home page URL

5. Proširiti model kontakta u imeniku tako da se opciono može dodeliti i kompanija

## Checklist (to do) app

Zamislite da kreirate fiktivnu to-do aplikaciju, gde imate listu nekih aktivnosti, a svaka aktivnost ima listu pojedinačnih stavki.

1. Modelirati jednu stavku (item), sa sledećim parametrima: 
	- tekst stavke
	- njen redosled
	- prioritet (jedna od 4 opcije: Low, Default, High, Urgent)
	- opcioni krajnji datum završetka // radi jednostavnosti, datum neka bude string enum sa vrednostima: danas, sutra, ove nedelje, ovog meseca, bilo kad
	- kao i stanje da li je stavka kompletirana ili ne

2. Napisati nekoliko različitih init-a za stavku: 
	- unos samo teksta, 
	- unos teksta i prioriteta, 
	- unos teksta, redosleda i prioriteta, 
	- unos teksta i datuma završetka
Ako vidite da bi još neki init bilo smisleno da postoji, dodajte i njega.

3. Modelirati aktivnost, sa sledećim parametrima: 
	- ime
	- lista stavki
	- opciona lokacija (string) iz unapred poznatog spiska lokacija: Home, Work, CoffeeShop, GroceryShop, School

4. Proširiti model stavke iz tačke 1, tako da postoji mogućnost da se svakoj stavci opciono dodeli lista proizvoljnih string tagova (0 do 5 tagova max)

5. Za model aktivnosti, napisati method koji dodaje novu stavku u listu.

6. Za model aktivnosti, napisati method koji izlistava stavke čiji je datum završetka danas

7. Napisati specifične init varijante za aktivnost - za svaku od mogućih lokacija. Svaki od tih inita prihvata samo ime aktivnosti kao argument metoda, a lokacijski string dodeli automatski.
//	hint: ovde pre svega pikiram na pravilno imenovanje argumenta init-a

8. Napisati method za aktivnost koji ispisuje samo nekompletirane stavke

9. Kreirati globalni niz koji sadrži sve kreirane aktivnosti

10. Napisati globalnu funkciju koja izlistava sve aktivnosti koje imaju barem jednu nekompletiranu stavku

11. Napisati method stavke koji menja njen krajnji datum izvršenja na danas

