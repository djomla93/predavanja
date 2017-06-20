//: [Previous](@previous)

import Foundation


class Person {
	var clothes: String
	var shoes: String

	init(clothes: String, shoes: String) {
		self.clothes = clothes
		self.shoes = shoes
	}

	func opis() -> String {
		return "Uobičajeno nosi \(clothes) i \(shoes)"
	}

}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
taylor.opis()




class Singer: Person {

	var genre : Int

	//	designated initializer
	//	obzirom da ovaj init sadrži u pozivu imena svih property-ja u ovoj klasi, zove se i memberwise initializer
	init(clothes: String, shoes: String, genre: Int) {
		self.genre = genre
		super.init(clothes: clothes, shoes: shoes)
	}

	//	override je neophodan kada želite da u sub-klasi pregazite postojeći method u superclass (parent klasi)
	override func opis() -> String {
		//	parent klasa je i dalje dostupna, ako zatreba
		return super.opis() + " i peva u žanru \(genre)"
	}
}

let taylorSwift = Singer(clothes: "Shiny dress", shoes: "high heels", genre: 1)
//	yay: novi opis
taylorSwift.opis()


//	ovo ne može :)
//taylorSwift.super.opis()

//: [Next](@next)
