# Functions zadaci

Svi ovi zadaci i pitanja dole treba da se reše koristeći `func` varijante opisane u `Functions.playground` + neke osnovne stvari - tipa `Int`, `String`, `Bool`, prostiji tuple, jednostavan `enum` itd.

Razmislite dobro i zapamtite / zapišite način razmišljanja kojim ste stigli do rešenja i zašto ste izabrali baš to rešenje.

Kod svih primera voditi računa o pravilnom imenovanju funkcija / parametara.
Za svaku od funkcija koje kreirate, ispišite i nekoliko reprezentativnih primera pozivanja, tj. korišćenja.

**Bitno:**
- Otvorite poseban playground za svaki od ova 3 domaća
- Svaki korak rešavajte jedan po jedan
- Kada ga rešite, otvorite New Page, pa iskopirajte sadržaj prethodne strane u ovu novu
- Sada radite sledeći korak
- Na taj način ću moći da vidim kako ste rešavali korak po korak.

## Doba dana

1. Kreirati enum koji modelira doba dana: Zora, Jutro, Prepodne, Podne, Popodne, Sumrak, Veče, Noć

2. Napisati funkciju koja za prosleđeni broj sati (0-23) i broj minuta (0-59) vrati koje je doba dana (iz prethodne tačke)

3. Dodati default vrednost 0 za parametar koji predstavlja minute

## Brojevi

1. Definisati niz proizvoljnih brojeva (u globalnom opsegu)

2. Napisati funkciju koja vraća min i max brojeva iz niza, tako što direktno pristupa tom globalnom nizu.

3. Napisati varijantu te funkcije gde se niz prosleđuje kao parametar. Napišite u komentaru šta vidite kao suštinsku razliku u odnosu na prethodnu opciju

4. Napisati funkciju koja uzima jedan broj kao parametar i dodaje ga direktno u globalni niz

5. Napisati funkciju koja uzima jedan broj kao parametar, ali ne menja globalni niz direktno već vraća kao rezultat taj globalno niz + prosleđeni parametar

6. Napisati funkciju koja prihvata niz brojeva i dodaje ih na globalni niz. Napisati varijantu ove funkcije koja se ponaša isto kao i ova iz tačke 5

7. Napisati funkciju koja prihvata dva niza brojeva i onda ih spoji u jedan niz i taj rezultujući niz vrati sortiran (od najmanjeg ka najvećem)

## Tetris kontroler

*Vrlo* jednostavna simulacija kontrole prastare Tetris igre, kada se igra na kompjuterskoj tastaturi.

0. Napisati funkciju koja prihvata Character parametar i ignoriše sve karaktere sem 7, 8 i 9. Rezultat funkcije je opcioni string koji vraća:
- "LEFT" ako je 7
- "ROTATE" ako je 8
- "RIGHT" ako je 9
Vraća nil ako je dati karakter nešto drugo sem 7, 8, 9

Ok, sada da ovo gore uradimo u delovima:

1. Napisati tri funkcije bez parametra, koje se zovu goLeft, rotate i goRight i koje vraćaju ona 3 stringa gore.

2. Napisati novu verziju funkcije iz tačke 0, ali sada umesto stringova poziva jednu odgovarajuću funkciju iz tačke 1. Funkcija ne vraća ništa.

3. Napisati varijantu funkcije iz tačke 3, ali sada umesto da direktno pozove jednu od 3 funkcije iz tačke 2, vraća tu funkciju kao svoj rezultat. Ili ne vraća ništa ako nije unet dobar karakter.
