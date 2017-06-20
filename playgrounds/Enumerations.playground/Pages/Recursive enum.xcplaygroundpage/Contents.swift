//: [Previous](@previous)

import Foundation

//	## Recursive Enumeration
//	uff...

enum TheColor {
	case blue
	case black
	case white

	case fireRed
	case volcanoRed
	//	ovo znači da vrednost .red ima pridruženu vrednost koja je istog tipa kao i onda sama.
	//	zbog toga se ovo zove indirect ili recursive enum value
	indirect case red(TheColor)
}

let boja = TheColor.red(.fireRed)


switch boja {
case .red(let subColor):
	print(subColor)
default:
	break
}






//: [Next](@next)
