//: Playground - noun: a place where people can play

import Foundation

//	curly braces:	{}
//	brackets:		[]
//	parenthesis:	()


/*
	Sem u najjednostavnijim programima, nikada se ne izvršavaju sve linije koda. 
	Zavisno od raznih stanja i vrednosti, izvršavaju se određene grupe komandi.

	Za takve situacije svaki programski jezik sadrži određene naredbe koje kontrolišu tok programa, 
	tj. Control Flow
	
	Najosnovnije su: if/else i switch

*/

var predavac = true
var nekoIme: String



//	IF ELSE
//	Koristi se kada je potrebno na osnovu nekog logičkog uslova kreirati skretnicu u kodu i deo koda zaobići.

//	Ako je uslov iza if ispunjen (predavac ima vrednost true) onda će se deo koda unutar { i } izvršiti. Ako uslov nije ispunjen (predavac je false) onda se taj deo koda neće izvršiti.
if predavac {
	nekoIme = "Alek"
	var x = 20
//	print(x)
}
nekoIme
//print(x)


//	ovde sada promenimo vrednost predavac da bude false
predavac = false
//	sada se blok koda unutar { } neće izvršiti (u results panelu sa desne strane se vidi da nema rezultata, tj. da nekoIme="Bosko" nije izvršeno
if predavac {
	nekoIme = "Bosko"
}


//	ovde sada unutar uslova testiram "ako predavac nije true"
//	!predavac === NOT predavac. Kako je predavac u ovom trenutku false, !predavac je onda true, pa je samim tim uslov ispunjen i linija koda se izvrši
if !predavac {
	nekoIme = "Bosko"
}



//	Česta je situacija da je u programiranju potrebno izvršiti različite komande zavisno od toga da li je uslov ispunjen ili nije
//	U ovom primeru...
if ( predavac ) {	//	ako je predavac=true izvršiće se ovaj "if" blok
	nekoIme = "Alek"
	var x = 10
} else {			//	ako je predavac=false, izvršiće se "else" blok
	nekoIme = "Bosko"
	var x = 20
}
nekoIme

//	ova struktura gore je ekvivalentna ternary operatoru:
nekoIme = (predavac) ? "Alek" : "Bosko"





//	takođe je česta praksa da se jedan za drugim testira veći broj raznih uslova
//	To bi izgleda ovako nekako:

var student = true

if predavac {
	nekoIme = "Alek"
} else {
	if student {
		nekoIme = "...."
	} else {
		nekoIme = "Bosko"
	}
}

//	međutim, kako ovo uvlačenje brzo postane nepregledno koristi se ovakva naprednija varijanta, sa "else if"

if predavac {
	nekoIme = "Alek"
} else if student {
	nekoIme = "...."
} else {
	nekoIme = "Bosko"
}

//	Objašnjenje za ovo gore:

if predavac {
	//	ako je predavac = true, izvrši se samo ovaj "if" blok i svi ostali blokovi se preskaču
	nekoIme = "Alek"

	// ako je pak predavac=false onda se prelazi na naredni blok:
} else if student {
	//	ako je student=true, onda će se izvršiti ovaj blok (vidi Results panel sa desne strane)
	nekoIme = "...."

	//	ako ni student nije true, onda se ide na naredni blok
} else {
	//	ovaj blok nema uslov (nema "if") i onda se on izvrši samo ako niti jedan od prethondih nije ispunjen
	nekoIme = "Bosko"
}






//	Nema ograničenja u broju "else if" blokova

var student2 = true
var student3 = true

if predavac {
	nekoIme = "Alek"
} else if student {
	nekoIme = "...."
} else if student2 {
	nekoIme = "...."
} else if student3 {
	nekoIme = "...."
} else {
	nekoIme = "Bosko"
}






//	SWITCH
//	Switch je komanda koja se koristi kada je broj "else if" uslova toliko veliki da je besmisleno ih pisati, jer čak i to posle nekog broja uslova postane nepregledno
//	Druga opcija je da se najčešće koristi kada se radi sa jednom te istom promenljivom koja može imati više različitih vrednosti. 
//	Na primer, naš primer za enumeration sa prošlog predavanja

enum AutoBoja {
	case crvena
	case plava
	case crna
	case bela
}
//var bojaMojihKola = AutoBoja.crna
var bojaMojihKola : AutoBoja = .crna

//	Kako na osnovu boje kola izvršiti neke komande?
//	Može ovako:

if bojaMojihKola == AutoBoja.crvena {
	//	...neke komande...
} else if bojaMojihKola == AutoBoja.crna {
	//	...
} else if bojaMojihKola == AutoBoja.plava {
	//	...
} else if bojaMojihKola == AutoBoja.crna {
	//	...
} else if bojaMojihKola == AutoBoja.bela {
	//	...
} else {
	//
}

//	Očigledno je da ima previše ponavljanja istog teksta, što smanjuje preglednost.

//	Hajmo onda da vidimo switch
//	Prazan switch nije dozvoljen od strane Swifta, moraju da postoje neke komande unutar njega:
//	(skinite komentar sa ovog primera dole pa vidite koju grešku Swift prijavi)

//switch bojaMojihKola {
//}


//	Takođe ni ovaj switch nije dozvoljen, jer programer nije obradio sve moguće vrednosti koje switch može da ima
//	(skinite komentar sa ovog primera dole pa vidite koju grešku Swift prijavi)
switch bojaMojihKola {

	case .crvena:
		print("Boja mojih kola je Crvena")
}


//	Tek je ovo prva dozvoljena minimalna forma:
switch bojaMojihKola {

	default:
		print("Boja mojih kola je neka druga")
}
//	default: je grana koja se izvrši ako niti jedna druga grana (slučaj) unutar switch bloka nije izvršena
//	Međutim, nema mnogo smisla da se to radi, jer praktično ako je default: jedina grana koja postoji, switch nam ni treba




var modelAuta = "Trabant"

//	Ovo sada već ima smisla:
switch bojaMojihKola {

	case .crvena:
	//	ako je boja crvena, onda se izvrše ove komande ispod
		modelAuta = "BMW"
		print("Boja mojih kola je Crvena")

	default:
		//	ova grana se izvrši samo ako boja nije Crvena
		print("Boja mojih kola je neka druga")
}

//	možete grupisati više vrednosti zarezima:

switch bojaMojihKola {
case .crvena, .plava:
	print("Boja mojih kola je osnovna boja")
default:
	print("Boja mojih kola je neka druga")
}



//	nikada niste obavezni da navedete sve moguće vrednosti, default: je tu da bude fallback opcija, koja će se izvršiti ako niti jedan drugi "case" nije ispunjen

switch bojaMojihKola {
case .crvena, .plava:
	print("Boja mojih kola je osnovna boja")
default:
	print("Boja mojih kola je neka druga")
}




//	Ako ste pak iscrpeli baš sve moguće vrednosti, onda vam default: nije potrebno

switch bojaMojihKola {
case .crvena, .plava:
	print("Boja mojih kola je Crvena")
case .crna:
	print("Boja mojih kola je Crna")
case .bela:
	print("Boja mojih kola je Crna")
}


//	kako god da pišete, onaj uslov ("case") koji bude zadovoljen, izvšiće se samo blok komandi ispod njega _do_ narednog case ili default i onda se sve ostalo preskače:

//	1. stigli smo do ovde, pa se testiraju vrednosti promenljive bojaMojihKola
switch bojaMojihKola {
case .crvena, .plava:
//	print("Boja mojih kola je Crvena")
	break
case .crna:	//	ovaj uslov je ispunjen (jer je bojaMojihKola = AutoBoja.crna)
	//	2. ovde počinje izvršavanje koda
	print("Boja mojih kola je Crna")
	//	3. ovde se završava izvršavanje koda
case .bela:
	print("Boja mojih kola je Crna")
}
//	4. ovde se nastavlja izvršavanje koda






//	moguće je testirati i više od jedne vrednosti, na primer ako se testira tuple

typealias HTTPStatus = (code : Int, message : String)
var responseStatus: HTTPStatus
responseStatus.code = 302
responseStatus.message = "Permanently moved"

//	ovde sada case opcije moraju da zadovolje tuple format
switch responseStatus {
case (302, "Moved"):	//	tuple da ima tačno ovu vrednost, .code=302, .message = "Moved"
	print(responseStatus)
case (302, _):			//	.code mora da bude 302 a .message može biti bilo šta
	print(responseStatus)
default:				//	sve ostalo
	print("Nothing!")
}






