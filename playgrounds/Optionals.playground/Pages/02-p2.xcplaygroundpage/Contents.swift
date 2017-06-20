//: [Previous](@previous)

import Foundation


//	OPTIONAL CHAINING
//	umesto da konstantno pišete it let xx = neštoOpciono...
//	možete da nakalemite funkcije jednu za drugom i da izvršavanje naredne karike u lancu uslovite time da prethodni mora da vrati vrednost
//	tamo gde se vrati nil, onda se lanac izvršavanja koda tu prekida

func albumReleased(year: Int) -> String? {
	switch year {
	case 2006: return "Taylor Swift"
	case 2008: return "Fearless"
	case 2010: return "Speak Now"
	case 2012: return "Red"
	case 2014: return "1989"

	default: return nil
	}
}

//	ovde je album opcioni String, tj. String?
let albumIz2006 = albumReleased(year: 2006)
//	zbog toga u printu piše Optional(...)
print("The album is \( albumIz2006 )")

//	standardna optional binding provera ide ovako
if let album = albumReleased(year: 2006) {
	print("The album is \(album)")
}

//	ili ovako:
let album2 = albumReleased(year: 2006)

//	forced unwrapping
if album2 != nil {
	print("The album is \(album2!)")
}
//	ili optional binding
if let album = album2 {
	print("The album is \(album)")
}



//	ok, to je previše prosto i obično se tu još nešto radi, sem prostog ispisa.
//	ajde da promenimo vraćeni naziv da budu sve velika slova
let album3 = albumReleased(year: 2006)
if let album = album3 {
	let bigAlbum = album.uppercased()
	print("The album is \(bigAlbum)")
}

//	e, tu te čekam!
//	ovo gore znači: pretvori album u velika slova samo ako `album` ima vrednost
//	kod ovakve forme se može koristiti **optionals chaining**, gde se *metode* nadovezuju jedna na drugu

let album4 = albumReleased(year: 2006)?.uppercased()
if let album = album4 {
	print("The album is \(album)")
}






//	The nil coalescing operator = još jedan operator koji omogućava kompaktnije napisan kod

let albumName = albumReleased(year: 2006) ?? "Single"
let single2002 = albumReleased(year: 2002) ?? "Single"
//	ovaj operator je sličan ternarnom i čita se ovako:
//	ako je prvi operand neka vrednost, onda dodeli tu vrednost
//	ako je prvi operand == nil, onda dodeli vrednost drugog operanda

// ova jedna linija koda sa ovim operatorom zamenjuje ovih 5 linija:
let single : String
if let album = albumReleased(year: 2006) {
	single = album
} else {
	single = "Single"
}

single




//: [Next](@next)

