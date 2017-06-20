//: [Previous](@previous)

import Foundation


struct Person {

	//	Stored properties

	var clothes: String
	var shoes: String
	var dateOfBirth: Date

	var firstName: String?
	var lastName: String?
	var gender: String = "F"


	//	Inits

	init(clothes: String, shoes: String, dateOfBirth: Date) {
		self.clothes = clothes
		self.shoes = shoes
		self.dateOfBirth = dateOfBirth
	}

	init() {
		clothes = ""
		shoes = ""
		dateOfBirth = Date()
	}


	//	Computed Properties
}


extension Person {

	var fullName: String {
		get {
			if let firstName = firstName, let lastName = lastName {
				return "\( firstName ) \( lastName )"
			}
			return ""
		}
		set(str) {
//			let parts = str.components(separatedBy: " ")
//			firstName = parts.first
//			lastName = parts.last
		}
	}

	var displayName: String {
		if let firstName = firstName, let lastName = lastName {
			return "\( firstName ) \( lastName )"
		}
		return ""
	}
}


var taylor = Person(clothes: "", shoes: "", dateOfBirth: Date() )
var swift = taylor


taylor.fullName

taylor.firstName = "Taylor"
taylor.lastName = "Swift"
taylor.fullName

taylor.fullName = "Aleksandar Vacic"
taylor.firstName




extension Person {
	func describe() {
//		clothes.helloMe()
	}

	mutating func updateDateOfBirth(_ dob: Date) {
		dateOfBirth = dob
	}
}


struct Auto {
	var color: String
}

var mojAUto = Auto(color: "")
//mojAUto.color.helloMe()




extension String {
	func helloMe() {

	}
}

taylor.describe()

taylor.dateOfBirth

//: [Next](@next)
