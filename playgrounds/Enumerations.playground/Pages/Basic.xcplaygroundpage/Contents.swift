//: Playground - noun: a place where people can play

import Foundation


//	ENUMERATIONS
//	Omogućava kreiranje tipa podataka sa unapred poznatim, konačnim setom mogućih vrednosti.

//	ime tipa UVEK počinje velikim slovom
enum AutoBoja {
	//	ime vrednosti UVEK počinje malim slovom
	case crvena
	case plava
	case crna
	case bela
}

var bojaMojihKola = AutoBoja.crna
var bojaMojihKola2 : AutoBoja = .crna

//	nakon što sada Swift zna koji je tip ove promenljive, možete nove vrednosti dodeljivati kraće
bojaMojihKola = .plava

switch bojaMojihKola {
case .crna:
	print("crna boja")
default:
	print("Neka druga boja")
}






//	Associated Values


//enum Result {
//	case success(img: UIImage)
//	case failure(err: Error)
//}

enum CarColor {
	case red(nijansa: Int)
	case blue
	case black
	case white
}

var myColor = CarColor.black
var crvena = CarColor.red(nijansa: 1)

switch crvena {
case .black:
	print("crna boja")
case .red(let subColor) where subColor == 0:
	print("Fire red")
case .red(let subColor) where subColor == 1:
	print("Ferrari red")
case .red(let subColor):
	print("Standardna crvena, nijanse \(subColor)")
default:
	print("Neka druga boja")
}


//	Raw values
//	definišete svoj enum tip podataka, ali baziran na nekom postojećem tipu

enum WhiteCharacter: Character {
	case tab = "\t"
	case newLine = "\n"
	case space = " "
//	case nesto
}

var whiteChar: WhiteCharacter = .tab
var whiteChar2 = WhiteCharacter.tab

whiteChar2.rawValue





enum AccountSection: Int {
	case userDetails// = 0
	case addressDetails// = 1
	case paymentDetails// = 2
}

//	dohvatanje te "sirove" vrednosti:
AccountSection.addressDetails.rawValue

//	Implicit raw values
//	definišete samo prvu vrednost, a ostale su uvećane za 1
//	u bilo kom momentu možemo da izmenimo bilo koju vrednost i onda se +1 sistem nastavlja za one naredne

enum Planeta: Int {
	case merkur = 1, venera, zemlja = 10, mars, jupiter, saturn = 100, uran, neptun
}


Planeta.merkur
Planeta.merkur.rawValue
Planeta.zemlja
Planeta.zemlja.rawValue




enum Proba: String {
	case xxx
	case yyy
}
var test = Proba.xxx
test
test.rawValue



