//: Playground - noun: a place where people can play

import Foundation


typealias Food = String



struct Dog {
	var name: String

	init(name: String) {
		self.name = name
	}


	var isSuitableForIndoor: Bool { return true }

	var feedInterval: TimeInterval = 720

	func feed(withFood food: Food, amountGrams grams: Int) {
		//…
	}
}

let jack = Dog(name: "Jack")
jack.feedInterval









typealias BirdKind = Int

struct Bird {
	let kind: BirdKind
	var name: String

	init(name: String, kind: BirdKind, suitableForIndoor: Bool = true) {
		self.name = name
		self.kind = kind
		self.isSuitableForIndoor = suitableForIndoor
		self.feedInterval = 300
	}

	let isSuitableForIndoor: Bool	//	ne mora biti promenljiva (var)

	var feedInterval: TimeInterval

	func feed(withFood food: Food, amountGrams grams: Int) {
		//…
	}
}


let sparrow = Bird(name: "Mickey", kind: 1)
let chicken	= Bird(name: "Chiq", kind: 10)

sparrow.isSuitableForIndoor



//	ok, sada imam dva structa, koji su potpuno različiti tipovi
//	stoga nije moguće da uradim ovo

var myPets: [Any] = [jack, sparrow]

//	može ako i samo ako za elemente niza kažem da su tipa Any
//	ali to onda obesmišljava stvar, tj. izgubio se originalni tip podatka
//	i sada Swift ne zna da bilo šta od definisanih properties/methods postoji
//myPets[0].



//	zašto bih ovo uopšte stavljao u isti Array, Set ili nešto?
//	pa zato što imaju iste properties i dele iste methods
//	da su ovi tipovi definisani kao `class` onda bih mogao da napravim parent class koja ima te stvari deklarisane i onda nasledim, mada i to nije baš dobra stvar
//	no, kod struct ne postoji inheritance priča, tako da nije ni bitno



//	kako nam protocol onda pomaže?

//	jedan mali protocol
protocol PetAnimal {
	var isSuitableForIndoor: Bool { get }
}

//	i recimo još jedan veći
protocol AnimalFeeding {
	var feedInterval: TimeInterval { get set }
	func feed(withFood food: Food, amountGrams grams: Int)
}

//	i pošto naši structovi već ispunjavaju te zahteve, 
//	onda mogu naknadno samo da formalizujem to

extension Dog: PetAnimal, AnimalFeeding {}
extension Bird: PetAnimal, AnimalFeeding {}

//	i sada mogu da napišem ovo

var animalsToFeed: [AnimalFeeding] = [jack, sparrow]
for animal in animalsToFeed {
	animal.feed(withFood: "", amountGrams: 200)

	switch animal {
	case is Bird:
		break
	default:
		break
	}

	if animal is Bird {
		let item = animal as! Bird
	}

	if let item = animal as? Bird {

	}
}

var heyJack = animalsToFeed[0]
//	i dalje imam ograničenje da ova promenljiva sada ne vidi sve što Dog ima da ponudi
//heyJack.
//	ali to je good thing, jer sam fokusirao namenu ovog koda




protocol Flying {
	func fly()
}

extension Bird: Flying {
	func fly() {
		//..
	}
}

sparrow.fly()




struct Cat {
	var name: String
}


extension Cat: PetAnimal {
	var isSuitableForIndoor: Bool { return true }
}





//	## Swift Standard Library primeri

//	chicken i sparrow su vrednosti. 
//	a vrednosti bi trebalo da možemo uporediti jednu sa drugom, zar ne?

//sparrow == chicken


