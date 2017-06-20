//: [Previous](@previous)

import Foundation


//	Deinitialization
//	Kao što postoji init za kreiranje objekta, tako postoji i deinit
//	(samo za class!!)

//	Najlepši deo: najčešće vas baš briga za to, to za vas radi sam Swift compiler
//	Ali ponekad treba i tu nešto čačnuti, pa da vidimo šta to znači

class Person {
	let name: String

	init(name: String) {
		self.name = name
		print("\(name) is being initialized")
	}

	deinit {
		print("\(name) is being deinitialized")
	}
}


//	ARC = Automatic Reference Counting
//	ovo znači da Swift runtime drži interni brojač koliko referenci ima na instancu nekog objekta
//	kada taj broj spadne na 0, onda će objekat biti uklonjen iz memorije

//	tri promenljive bez dodeljenih vrednosti
var osoba1: Person?
var osoba2: Person?
var osoba3: Person?

//	sada sa Person(name: "Alek") kreiramo objekat
//	referenca na taj objekat se dodeljuje promenljivoj osoba1
//	stoga je sada brojačReferenci na taj objekat = 1
//osoba1 = Person(name: "Alek")
//	brojačReferenci += 1
//osoba2 = osoba1
//	brojačReferenci += 1
//osoba3 = osoba1

//	Sada imamo 3 reference na isti objekat i on čuči u memoriji
//	Ajde da skidamo jednu po jednu (redosled je nebitan)

//	brojačReferenci -= 1	(sada je 2)
//osoba2 = nil
//	brojačReferenci -= 1	(sada je 1)
//osoba1 = nil
//	brojačReferenci -= 1	(sada je 0 i objekat se uklanja)
//osoba3 = nil
//	u ovom momentu naš deinit() method gore bude pozvan od strane sistema




//	Reference Cycle == memory leak
//	Dešava se kada dva objekta pokazuju jedan na drugoog

class Tenant {
	let name: String

	init(name: String) {
		self.name = name
		print("Tenant \(name) is being initialized")
	}

	//	ova je jaka referenca na objekat tipa Apartment
	//	svaka jaka referenca se računa u brojačReferenci
	var apartment: Apartment?

	deinit {
		print("Tenant \(name) is being deinitialized")
	}
}

class Apartment {
	let unit: String

	init(unit: String) {
		self.unit = unit
		print("Apartment number \(unit) is being initialized")
	}

	//	ova je jaka referenca na objekat tipa Tenant
	var tenant: Tenant?
	//	ova je slaba referenca na objekat tipa Tenant
	//	weak refs se ne računaju u brojačReferenci
	//	weak var tenant: Tenant?

	deinit {
		print("Apartment number \(unit) is being deinitialized")
	}
}

//	jedna referenca na Tenant objekat
//var myself : Tenant? = Tenant(name: "Alek")
//	jedna referenca na Apartment objekat
//var mojStan : Apartment? = Apartment(unit: "25")


//	strong cycle se kreira ako i .apartment i .tenant standardni property, tj. niti jedan nema weak ispred
//	+1 referenca na Apartment objekat
//myself?.apartment = mojStan
//	+1 referenca na Tenant objekat
//mojStan?.tenant = myself

//	test da je ceo krug uvezan
//myself?.name
//myself?.apartment?.tenant?.name

//	skinem jednu referencu sa Tenant objekat i onda ostaje jedna
//myself = nil
//	ova ovde:
//mojStan?.tenant

//	Apartment objekat i dalje ima 2 reference
//mojStan?.tenant?.apartment

//	skinem jednu referencu sa Apartment objekta, pa ostaje ona jedna
//mojStan = nil

//	oops!
//	sada više nemam mojih promenljivih i oba objekta stoje u memoriji bezveze
//	drže jedna drugog u memoriji, a beskorisni su
//	to se zove memory leak


//	Jedno rešenje:
//	da se setite sami da uredno skinete reference
//	dakle prvo ovo:
//myself?.apartment = nil
//	pa tek onda ovo:
//myself = nil


//	Drugo rešenje:
//	stavite: weak
//	kako ovde: var tenant: Tenant?
//	pa onda to Swift/iOS runtime radi za vas, automatski
//	Yay!

//: [Next](@next)
