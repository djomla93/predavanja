//: Playground - noun: a place where people can play

import Foundation





//	CLASS
//	Klase predstavljaju nacrt, tj. definiciju kompleksnih tipova podataka
//	Ne postoji limit koliko kompleksne mogu biti

//	Sama za sebe, Class ne znači ništa.
//	ono sa čime vi radite je da kreirate objekte tog tipa
//	kao što kreirate vrednsoti tipa String, tako treba da kreirate i vrednost tipa Person

//	Class je veoma sličan Struct-ovima
//	za razliku od Structa, ovo nema nikakve interne magije.
//	Morate sve da uradite sami!

//	tako da ovo, samo za sebe, ne radi
//class PersonFail {
//	var clothes: String
//	var shoes: String
//}


//	ok, šta sad?
//	jedna opcija je proglasiti sve unutra opcionim vrednostima
class PersonOptional {
	var clothes: String?
	var shoes: String?
}
//	ovo radite samo ako imate baš, baš dobar razlog.
//	vrednost tipa Person treba da se ponaša kao i svaka druga vrednost - da u njoj ima nešto pametno i upotrebljivo


//	druga opcija: dodelite inicijalne vrednosti
class PersonInitialValues {
	var clothes: String = ""
	var shoes: String = ""
}
//var test = PersonInitialValues()
//	ali koje inicijalne vrednosti? vrlo retko ima univerzalno prihvatljivih vrednosti


//	ono što nam treba je initializer koji će podesiti te vrednosti, pri kreiranju objekta
class Person {
	var clothes: String
	var shoes: String

	//	nema "func" ispred ove funkcije, iako jeste funkcija!
	init(clothes: String, shoes: String) {
		self.clothes = clothes
		self.shoes = shoes
	}
	//	self je interna promenljiva koja važi unutar Class
	//	auto-magično postoji kao referenca na kreirani objekat
}

var taylor = Person(clothes: "T-shirts", shoes: "sneakers")
//	ha!
//	ovo je sada identično kao i struct




//	al' zamalo...




//	ima jedna suštinska razlika:
//	# # # #
//	Class je *reference type*
//	# # # #
let taylorCopy = taylor
//	kada se radi sa klasama, ovo znači da su taylor i taylorCopy dve promenljive koje pokazuju na jedan te isti objekat
//	bukvalno se tako i zove: pointer na objekat
taylor.clothes
taylorCopy.clothes
//	promeni jednu
taylorCopy.clothes = "Short skirts"
//	obe promenljive "imaju" tu promenu
taylor.clothes
taylorCopy.clothes


//	## Properties
taylor.clothes = "Pants"
//	ali ovo sada radi, iako je taylorCopy konstanta
taylorCopy.clothes = "Shorts"
//	razlog: Class je *reference* type


//	ono što ne može je promena reference:
//taylorCopy = Person(clothes: "T-shirts", shoes: "sneakers")







//	## Lazy Property

class AlbumDetails {
	var year : Int?
	var publisher = ""
	//	...
	init() {
		//	telo može biti prazno, ako je svaki property već definisan ili opcioni
	}
}


class Album {
	var singer: Person
	var title: String
	lazy var details = AlbumDetails()

	init(title:String, singer:Person) {
		self.title = title
		self.singer = singer
	}
}

//	lazy property se - unutar Album instance - popuni u momentu prvog pristupa
let album = Album(title: "1989", singer: taylor)
print( album.details.year )





//	Computed Properties - isto kao kod Struct

//	Methods - isto kao kod Struct









//	# Inheritance

class Singer: Person {

	var genre : Int

	init(clothes: String, shoes: String, genre: Int) {
		self.genre = genre
		super.init(clothes: clothes, shoes: shoes)
	}

	init(genre: Int) {
		self.genre = genre
		super.init(clothes: "", shoes: "")
	}
}

//var taylorSwift = Singer(clothes: "", shoes: "")
var taylorSwift = Singer(clothes: "", shoes: "", genre: 1)
var adelle = Singer(genre: 10)
adelle.clothes




//	final ispred class onemogućava nasleđivanje
//	treba ga koristiti svaki put kada znate da se klasa neće nasleđivati jer znatno doprinosi performansama

final class CountrySinger: Singer {

}

//	i onda ovo sada nije moguće
//class BackupSinger: CountrySinger {
//}
