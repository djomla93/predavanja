//: [Previous](@previous)

import Foundation

//	LOOPS

//	forma kontrole toka programa gde se jedan te isti kod ponavlja mnogo puta

var nizImena: [String] = ["Alek", "Boško", "Ivan", "Vlada"]


//	najprostija moguća forma: za svaki element u nizu, izvrši kod unutar { i }
for element in nizImena {
	print(element)
}



//	ako nam treba i index elementa, onda se može posredno izvući na ovaj način
var indeks2 = 0
for element in nizImena {
	var indeks2 = 0
	print(element)
	indeks2 += 1
}



//	varijanta for petlje gde je ova indeks promenljiva automatski dostupna...
for indeks in 0 ..< nizImena.count {
	//	ali moramo da "jurimo" vrednost elementa
	var element = nizImena[indeks]
	print("Na poziciji \( indeks ) se nalazi \(element)")
}



//	SIDE-TOUR: Range Operators
//	kakve su sad ovo tačke u ovoj for petlji?!

//	x...y == operator koji pokriva vrednosti između x i y *uključujući i x i y
//	zove se **closed range** operator
for x in 1...5 {
	print(x)
}

//	x ..< y == operator koji pokriva vrednosti između x i y *uključujući i x ali *ne* i y
//	zove se **half open range** operator
for x in 1..<5 {
	print(x)
}
//	ovaj operator je smišljen manje-više samo zbog nizova i drugih kolekcija koje su 0-based
//	jer je onda indeks poslednjeg elementa u nizu u stvari niz.count - 1
for indeks in 0 ..< nizImena.count {
	var element = nizImena[indeks]
	print("Na poziciji \( indeks ) se nalazi \(element)")
}




//	NAPOMENA:
//	u svim slučajevima gore pišemo previše koda
//	ili jurimo koji je indeks ili jurimo vrednost elementa na datom indeksu
//	više koda = više šansi za greške (bugs!)


//	zar ne bi bilo super da imamo oba (indeks i vrednost) na raspolaganju a da ne moramo sami da pišemo kod za indeks?
//	evo prve sjajne primene "tuples" u realnom programerskom radu:
for (indeks, element) in nizImena.enumerated() {
	print("Na poziciji \( indeks ) se nalazi \(element)")
}
//	Swift rulez! Zbog ovoga ga programeri vole.
//	najmanje koda, najmanje šanse da se nešto zezne, nema potrebe da se proverava išta već compiler sve sam radi, popunjava vrednosti, proverava uslove itd.
//	divota!







//	šta je sa Setovima?
var setImena : Set<String> = ["Alek", "Boško", "Vlada", "Ivan"]

for element in setImena {
	print("Ime \(element)")
}





//	Dictionary
var dictEkipa2 = [0: "Ivan", 1: "Vlada", 2: "Boško", 3: "Alek"]

//	ovo je ekvivalentno sa "for element in nekiNiz"
//	s tim što je ovde element === (key, value) tuple
for (key, value) in dictEkipa2 {
	print("Ključ \( key ) == \(value)")

	//	ova forma pisanja Stringova se zove String Interpolation
	//	i ekvivalentna je ovome
	print("Ključ " + String(key) + " == " + value)
}






//	WHILE petlja

var windeks = 0;

//	kod unutar petlje će se izvršavati dokle god je uslov ispunjen
//	while USLOV {
//	...
//	}

while windeks < 10 {
	print(windeks)
	windeks += 1
}
//	obzirom da se provera uslova vrši na početku, može se desiti da se kod unutar petlje ne izvrši nikada





//	REPEAT WHILE petlja
windeks = 0
repeat {
	print(windeks)
	windeks += 1

} while windeks < 10
//	ovde se proverava na kraju, pa se kod u petlji uvek izvrši barem jednom


//	šta su razlike između ove dve petlje?
//	Kod WHILE, kod unutar petlje ne mora da se izvrši niti jednom, zavisi od uslova
//	Kod REPEAT WHILE, garantovano će se izvršiti barem jednom




//	CONTROL TRANSFER

//	kada se vrtimo u petljama, nekad ima potrebe da se iskoči iz petlje pre vremena
//	sve komande ovde se odnose samo na kod *unutar* petlje, ne i na same uslove ili definiciju petlje

//	continue
for (indeks, element) in nizImena.enumerated() {
	if indeks == 1 {
		continue
	}

	//	ovaj kod se izvrši 3x, tj. neće za indeks=1
	//	ali se izvrši za 0, 2, 3

	print("Na poziciji \( indeks ) se nalazi \(element)")
}







//	break
for (indeks, element) in nizImena.enumerated() {
	if indeks == 1 {
		break
	}

	//	ovaj kod se izvrši samo jednom, tj za indeks=0, a onda nađe na ovo gore i iskoči iz petlje

	print("Na poziciji \( indeks ) se nalazi \(element)")
}



//: [Next](@next)
