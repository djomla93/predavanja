//: [Previous](@previous)

import Foundation

class Person {
	var clothes: String
	var shoes: String {
		willSet {
			print("Biće promenjena vrednost iz \(shoes) u \(newValue)")
		}
		didSet {
			print("Promenjena je vrednost iz \(oldValue) u \(shoes)")
		}
	}

	init(clothes: String, shoes: String) {
		self.clothes = clothes
		self.shoes = shoes
	}

	deinit {
		print("odeeee")
	}
}

//var taylor = Person(clothes: "T-shirts", shoes: "sneakers")

//taylor.shoes = "fancy heels"



class Singer {
	var clothes: String
	weak var person: Person? {
		willSet {
			print("willSet")
		}
		didSet {
			print("didSet")
		}
	}

	init(clothes: String) {
		self.clothes = clothes
	}
}

var taylor: Person? = Person(clothes: "T-shirts", shoes: "sneakers")

var pevac: Singer = Singer(clothes: "blah")
pevac.person
pevac.person = taylor

pevac.person
taylor = nil
pevac.person
taylor

//pevac = nil
//taylor.shoes = "fancy heels"


//: [Next](@next)
