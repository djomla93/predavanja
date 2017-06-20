//: [Previous](@previous)

import Foundation

enum Planeta: Int {
	case merkur = 1, venera, zemlja = 10, mars, jupiter, saturn = 100, uran, neptun
}


//	##	Initialization

//	(1)jednostavnim dodeljivanjem vrednosti iz case liste
var x = Planeta.merkur

//	(2)raw value se sada može iskoristiti za kreiranje vrednosti, tj. za inicijalizaciju vrednosti enum tipa
let possiblePlanet = Planeta(rawValue: 7)
//	međutim, ovaj init uvek vraća Optional jer init može da ne uspe, ako prosleđeni broj ne odgovara niti jednom case-u
//	stoga je tip vraćene vrednosti: Planeta?


//	(3)za enum možete kreirati i svoj init, ako želite
extension Planeta {
	init?(string: String) {
		//	unutar init-a za enum, `self` se *mora* postaviti na neku od `case` vrednosti
		switch string.lowercased() {
		case "merkur":
			self = .merkur
		//...
		default:
			//	ili da se vrati nil, ako inicijalizacija nije moguća
			return nil
		}
	}
}

Planeta(string: "Merkur")


var pluto: Planeta? = nil


//: [Next](@next)
