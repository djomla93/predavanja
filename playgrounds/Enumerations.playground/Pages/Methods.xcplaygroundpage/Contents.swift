//: [Previous](@previous)

import Foundation

//	## Methods

//	Enumerations mogu imati metode, tj. ugneždene funkcije

enum Planet: Int {
	case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune

	//	Instance Method je obična ugnježdena funkcija
	func isCloserToSun(thanPlanet otherPlanet : Planet) -> Bool {
		//	self = konkretna instanca
		return self.rawValue < otherPlanet.rawValue;
	}

	//	Type Method se kreirana sa static ispred imena
	static func closerToSunThanEarth() -> [Planet] {
		return [.mercury, .venus]
	}
}

//Planet.closerToSunThan(.neptune)

//	Type method se poziva direktno na Enumu
Planet.closerToSunThanEarth()

//	Instance method se poziva na konkretnoj instanci (u ovom slučaju promenljivoj)
var m = Planet.mars

//	ovo je (unutar metoda) poređenje .Mars < .Venus
m.isCloserToSun(thanPlanet: .venus)
//	ovo je poređenje .Mars < .Saturn
m.isCloserToSun(thanPlanet: .saturn)



//	Swift Standard Library magic dust
print(Planet.jupiter)	//	nije 5, već baš ime vrednosti



extension Planet {
	static func closerToSunThan(_ p: Planet) -> [Planet] {
		var arr: [Planet] = []
		var i = 1
		while true {
			if i < p.rawValue {
				//	ovako ne može, jer je rezultat init-a Planet? a ne Planet
//				arr.append(Planet(rawValue: i))

				//	ali može (i treba uvek) ovako:
				if let planet = Planet(rawValue: i) {
					arr.append( planet )
				} else {
					continue
				}
				i += 1
				continue
			}
			break
//			let currentPlanet = Planet(rawValue: i)
//			if currentPlanet == nil { break }
//			if currentPlanet?.isCloserToSun(thanPlanet: p) {
//				arr.append(currentPlanet)
//			}
		}
		return arr
	}
}

Planet.closerToSunThan(.mars)
Planet.closerToSunThan(.neptune)


//: [Next](@next)
