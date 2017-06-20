//: Playground - noun: a place where people can play

import Foundation





//	OPTIONALS

/*
	Ovo je vrlo specifičan koncept i označava mogućnost da promenljiva uglavnom ima neku vrednost ali se može desiti i da nema.
	To je čest slučaj u programiranju, jer promenljive svoje vrednosti najčešće dobijaju kao rezultat rada drugih delova programa, gotovo nikada se ne ukucavaju direktno u programu.
*/


//	ovde nema dileme, broj uvek postoji
var nekiBroj = 20

//	međutim, šta ako imamo ovo?
var dict : [String : Int] = ["k1": 20, "k2": 40]
var kBroj = dict["k2"]
//	koji je tip promenljive kBroj?

if let kBroj = dict["k2"] {
	kBroj
}



//	trebalo bi da je Int, zar ne?
var kIntBroj : Int
//kIntBroj = dict["k1"]




//	ako dati key ne postoji, onda vrednost promenljive ne postoji.
var kBroj2 = dict["k10"]
//	to se zove nil vrednost


//	shodno tome, tip promenljive će biti Int ali samo ako nekakva vrednost zaista i postoji
//	tj. ovo je opcioni Int, tj. **Optional Int**
//	to se u Swiftu piše kao `Int?`
var kBrojX : Int?
kBrojX = dict["k10"]
kBrojX = dict["k1"]


//	isto važi i za bilo koji drugi tip podatka gde dodeljena / vraćena vrednost može biti tog tipa ali može biti i nil
//	*veoma* je često da se u kompleksnim programima barata sa opcionim vrednostima





//	primeri
//	- program koji kontroliše svetlo u kući i vraća jačinu svetla u svakoj od soba
//	- niz aviona koji su poleteli sa aerodroma u poslednjih 5min
//	itd.


kBrojX

var test = 20

if kBrojX == test {
	print("TeSt")
}

print(kBrojX)



//	ok, kako da znamo da li vrednost postoji ili ne?
if kBrojX != nil {
	//	...ok, sada možemo da upotrebimo vrednost. 
	print("Postoji ključ k1 i vrednost je \(kBrojX!)")
}
//	dodavanjem "!" na kraju, kažemo Swift kompajleru da smo sigurni da vrednost postoji
//	to se zove: **forced unwraping**

//	OPREZ! Ako ovako nešto napišete a vrednost ipak ne postoji, to izaziva momentalni krah aplikacije.
//kBrojX = nil
//let tempBroj2 = kBrojX!
//print("Postoji ključ k1 i vrednost je \(tempBroj2)")




//	međutim, stalno pisanje ! uzvičnika je smorno a i može nekada da se izostavi
//	zbog toga se koristi: **optional binding**

let tempBroj: Int
if kBrojX != nil {
	tempBroj = kBrojX!
}

if let tempBroj = kBrojX {
	print("Postoji ključ k1 i vrednost je \(tempBroj)")
}
//tempBroj

kBrojX = nil
if let kBrojX = kBrojX {
	print("Postoji ključ k1 i vrednost je \(kBrojX)")
}


//	može i var, ali budite sigurni da znate šta radite!
if var tempBroj = kBrojX {
	print("Postoji ključ k1 i vrednost je \(tempBroj)")
	tempBroj += 1
}


//	ok, zamislite sad scenario: imate promenljivu koja može biti u nekom periodu rada aplikacije *ali* smo sigurni da će u momentu kada je prvi put koristimo ipak imati vrednost?
//	u takvim situacijama bi bilo bezveze da stalno moramo da radimo _forced unwrapping_
//	bilo bi super da možemo da prosto definišemo promenljivu kao takvu, da će sigurno imati vrednost u svim situacijama kada se promenljiva koristi
//	to se zove **implicitly unwrapped optional** i takva promenljiva se definiše ovako
var kSiguranBroj : Int!

kSiguranBroj = dict["k1"]
//	OPREZ:
kSiguranBroj = dict["k111"]
//	ovo će raditi i Swift compiler ne izbacuje greške jer veruje da znamo šta radimo
//	Int! je eksplicitno izrečena namera od strane programera





//: [Next](@next)
