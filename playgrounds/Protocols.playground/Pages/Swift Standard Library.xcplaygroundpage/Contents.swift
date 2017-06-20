//: [Previous](@previous)

import Foundation

typealias Food = String
typealias BirdKind = Int

protocol PetAnimal {
	var isSuitableForIndoor: Bool { get }
	var feedInterval: TimeInterval { get set }
	func feed(withFood food: Food, amountGrams grams: Int)
}


struct Bird: PetAnimal {
	let kind: BirdKind
	var name: String

	init(name:  String, kind: BirdKind, suitableForIndoor: Bool = true) {
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


//	## Swift Standard Library primeri

//	chicken i sparrow su vrednosti. a vrednosti bi trebalo da možemo uporediti, zar ne?

//	za tako nešto moramo implementirati Equatable protocol
extension Bird: Equatable {
	static func ==(lhs: Bird, rhs: Bird) -> Bool {
		return
			lhs.name == rhs.name &&
			lhs.isSuitableForIndoor == rhs.isSuitableForIndoor &&
			lhs.kind == rhs.kind &&
			lhs.feedInterval == rhs.feedInterval
	}
}

sparrow == chicken

//	nejednakost radi automatski na osnovu jednakosti
sparrow != chicken


//	a da li i kako možemo upoređivate ptice?

extension Bird: Comparable {

	static func <(lhs: Bird, rhs: Bird) -> Bool{
		return false
	}
}

//	dovoljno je da postoji samo ovaj jedan operator
sparrow < chicken

//	uz == definisan gore, to je dovoljno za sve operacije uporešivanja

sparrow > chicken
sparrow >= chicken
sparrow <= chicken





//	Array

var ptičice = [sparrow, chicken]
ptičice.contains(sparrow)


//	Dictionary
var birdies = [String: Bird]()
//var birdies2 = [Bird: String]()




//	A da li može da napravimo Set<Bird>?
//	za to nam treba Hashable protocol

extension Bird: Hashable {
	var hashValue: Int {
		return name.hashValue ^ kind.hashValue
	}
}

//
var birds = Set<Bird>()
birds

birds.insert(sparrow)
//birds.count
//
//birds.insert(chicken)
//birds.count
//
birds.contains(chicken)



//: [Next](@next)
