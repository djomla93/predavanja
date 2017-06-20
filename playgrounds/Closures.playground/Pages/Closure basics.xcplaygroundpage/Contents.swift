//: Playground - noun: a place where people can play

import Foundation





//	# CLOSURES

//	to je svako parče samostojnog koda koje možete dodeliti nekoj promenljivoj
//	već smo ih koristili: to su funkcije

func makeIncrementer(withStep step: Int) -> (_:Int) -> Int {

	func incrementer(num: Int) -> Int {
		return num + 5
	}

	return incrementer
}
var incrementByOne = makeIncrementer(withStep: 1)
var num = 20
incrementByOne(num)



//	## 1. Closures *always* capture values

//	Closure je odgovor na pitanje kako je vrednost step nastavila da važi i nakon momenta izlaska iz makeIncrementerByStep() funkcije

//	Osnovna karakteristika svakog closure-a je da on "uhvati" (eng. captures) sve vrednosti iz parent scopea koje koristi u svom opsegu (scope)
//	I dok god je taj closure "živ", te __vrednosti__ nastave da žive

//	bitno (po treći put!): ne čuva se sama promenljiva, već njena vrednost!

var step = 5
//	kreiram inkrementer za 5
var incrementByFive = makeIncrementer(withStep: step)
//	sada je unutar ove funkcije sačuvana konkretna vrednost 5:
incrementByFive(num)	//	rezulat je 25
//	ako promenim vrednost promenljive
step = 50
//	to ne utiče na prethodno kreiranu funkciju
incrementByFive(num)

//	razlog?
//	jer su argumenti funkcije kopirani po vrednosti, a ne po pointeru







//	## 2. Closure Expressions

//	Prethodno korišćene funkcije su primeri dve od tri forme closure-a


//	(1) imenovani closure koji ne "hvata" nikakve vrednosti
//	npr: makeIncrementer(withStep:), kao globalna funkcija



//	(2) imenovani closure koji "hvata" upotrebljene vrednosti iz parent funkcije
//	npr: incrementer() je ugneždena funkcija unutar makeIncrementer(withStep:) i hvata vrednosti promenljivih iz te funkcije ali ne i iz globalnog opsega

//	(3) neimenovani closure koji "hvata" upotrebljene vrednosti iz nadređenog konteksta
//	ova treća forma je zanimljiva i upotrebljiva u situacijama kada se funkcije prosleđuju kao parametri nekim drugim funkcijama.


//	bitno je razlikovati 2 slučaja:
//	*	kada se closure izvrši u opsegu deklarisanja
//	*	kada closure "pobegne" iz tog opsega i nastavlja da živi u opsegu u koji je poslat putem `return XX`



//	u slučaju neimenovanog closurea (3) ima smisla da se upotrebljena forma uprosti i da se neki delovi sintakse izbace (ako je to moguće), tj. da se izbegne ova šuma raznoraznih zagrada







let ekipa = ["Boško", "Vlada", "Alek", "Ivan", "Petar", "Boris"]

//	Swift standard lib već ima metod za sortiranje
ekipa.sorted()
//	kako sort metdod u stvari zna šta da uradi?

//	iz dokumentacije:
//func sorted(by areInIncreasingOrder: (Element, Element) -> Bool) -> [Element]

//	ovo: (Element, Element) -> Bool
//	je *argument* za funkciju sorted(by:)
//	taj argument je u stvari neimenovani closure, 


//	ok, ja gore nisam poslao nikakav closure već samo napisao .sorted()
//	šta to znači?





//	parametar za sorted() ima default vrednost, tj. neki closure koji već radi nekakvo sortiranje!
//	on radi upoređenje dva po dva elementa i na osnovu Unicode koda prvog slova za svaki element vrati true ako je prvi element ispred drugog. Inače vrati false

//	to je otprilike ovakva funkcija
func defsort( s1: String, s2: String) -> Bool {
	return s1 < s2
}
ekipa.sorted()
ekipa.sorted(by: defsort )





//	hajde da onda napravimo obrnuto sortiranje
//	kako?




func revsort( s1: String, s2: String) -> Bool {
	return s1 > s2
}
ekipa
ekipa.sorted( )
ekipa.sorted(by: revsort )




//	OK, to su osnovne primene closure-a kao argumenta funkcije
//	hajde da se sada igramo raznih naprednih mogućnosti Swifta za manje pisanja kada su u pitanju closure forme, a sve koristeći ovaj revsort


//	rekli smo da se closure definiše sa { i }
//	potpuna forma je:
/*

{ (parametri_za_closure) -> return_type in
	telo_closurea
}

*/
//	"in" je jedina ključna reč

//	Obzirom da je function jedna vrsta closure-a, ajde da je prepišemo kao closure

func revsortfunction(s1: String, s2: String) -> Bool {
	return s1 > s2
}

var revsortclosure = { (s1: String, s2: String) -> Bool in
	return s1 > s2
}
ekipa.sorted(by: revsortclosure )





//	ok, ova promenljiva `revsort` nam zaista i ne treba, zar ne?

//	možemo sam closure da upišem direktno unutar sorted( ... )
ekipa.sorted(by: { (s1: String, s2: String) -> Bool in
	return s1 > s2
} )



//	e, ovo sad deluje kao baš mnoooooogo pisanja i *znatno* nečitljivije
//	a Swift je divan jezik koji ima Type Inference, tj. može na osnovu konteksta izvršavanja da provali tipove sam
//	pa ajde da izbacimo deklarisanje tipova za argumente

//	### Inferring parameter and return value types from context
ekipa.sorted(by: { (s1, s2) -> Bool in
	return s1 > s2
} )
//	obzirom da nema tipova, ni zagrade nisu potrebne, jer -> predstavlja delimiter
ekipa.sorted(by: { s1, s2 -> Bool in
	return s1 > s2
} )


//	ajde sada da izbacimo deklarisanje i tipa koji closure vraća
//	a kada njega (return type) ne pišemo, onda ne treba ni -> jer ispadne samo šum
//	te stoga dobijemo:
var rev = ekipa.sorted(by: { s1, s2  in
	return s1 > s2
} )

//	sad je ovo dosta kompaktnije pa možemo da napišemo i u jednom redu
var rev2 = ekipa.sorted(by: { s1, s2  in return s1 > s2 } )
rev2



//	### Implicit returns from single-expression closures
var rev3 = ekipa.sorted(by: { s1, s2  in s1 > s2 } )
rev3




//	### Shorthand argument names
var rev4 = ekipa.sorted(by: { $0 > $1 } )
rev4




//	### Trailing closure syntax
var rev5 = ekipa.sorted(by:) { $0 > $1 }
rev5


var rev6 = ekipa.sorted { $0 > $1 }
rev6


var rev7 = ekipa.sorted(by: > )
rev7



//	Q: Zbog čega su sva ova skraćena moguća?


//	Zbog definicije .sorted(by: ) methoda

//	je ekvivalentno sa:
//	(s1: String, s2: String) -> Bool
//	iz:
ekipa.sorted(by: { (s1: String, s2: String) -> Bool in
	return s1 > s2
} )



