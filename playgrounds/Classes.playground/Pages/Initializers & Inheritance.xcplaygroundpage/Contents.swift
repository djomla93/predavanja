//: [Previous](@previous)

import Foundation

class Person {
	var clothes: String
	var shoes: String

	init(clothes: String, shoes: String) {
		self.clothes = clothes
		self.shoes = shoes
	}
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")


//	# Initializers

class BSinger: Person {

	var genre : Int

	//	designated initializer
	init(clothes: String, shoes: String, genre: Int) {
		self.genre = genre
		super.init(clothes: clothes, shoes: shoes)
	}

	//	designated initializer
	init(person: Person, genre: Int) {
		self.genre = genre
		super.init(clothes: person.clothes, shoes: person.shoes)
	}
}

let t = Person(clothes: "Haljina", shoes: "Cipele")

//let bs = BSinger(clothes: t.clothes, shoes: t.shoes, genre: 1)


let bs = BSinger(person: t, genre: 1)






class CSinger: Person {

	var genre : Int
	var yearOfBirth : Int
	var publisher : String
	var manager: Person

	//	designated initializer - uvek mora da na kraju pozove neki super.init()
	init(clothes: String, shoes: String, genre: Int, yearOfBirth: Int, publisher: String, manager: Person) {
		self.genre = genre
		self.yearOfBirth = yearOfBirth
		self.publisher = publisher
		self.manager = manager
		super.init(clothes: clothes, shoes: shoes)
	}

	//	convenience initializer - uvek mora da na kraju pozove designated
	convenience init(person: Person, yearOfBirth: Int) {
		self.init(clothes: person.clothes,
		          shoes: person.shoes,
		          genre: 1,
		          yearOfBirth: yearOfBirth,
		          publisher: CSinger.pubBMG,	//	korišćenje type property za defulat vrednosti
			manager: t)
	}

	//	type property
	static var pubBMG: String = "BMG"
}


let cs = CSinger(person: t, yearOfBirth: 1992)
let cs2 = cs

var pevac : CSinger?

pevac = CSinger(person: t, yearOfBirth: 1992)
let pevac2 = pevac


pevac = nil




//	MARK: Failable Initializer
extension CSinger {
//	convenience init?(dictionary: [String:Any]) {
//		let clothes = dictionary["clothes"]
//	}
}




class DSinger: Person {

	var name: String = ""
}

var dTaylor = DSinger(clothes: "", shoes: "")





//: [Next](@next)
