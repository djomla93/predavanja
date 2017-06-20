//: Playground - noun: a place where people can play

import Foundation








//	hajde da definišemo model osobe
//	to smo u Fudbalica domaćem radili koristeći tuple:
typealias Personna = (clothes: String, shoes: String)
//	ali smo onda kada smo pisali razne funkcije, stalno morali da ponavljamo dosta koda
//	tuple je dobar za ad-hoc model podatka, ali ne pruža nikakav kontekst u kome bi se eventualno ranije kreirane vrednosti iskoristile bez ponavljanja jednog te istog procesiranja





//	STRUCT
//	struct je kompleksni *vrednosni* tip podataka (value type)
//	praktično, ovo je tuple na steroidima i sa mnoštvom dodatnih mogućnosti

//	možemo da krenemo od jako male definicije i da je dopunjujemo vremenom
//	(kako se program razvija)
struct Person {
	var clothes: String
	var shoes: String
}

//	sa ovim gore – struct Person – vi ste definisali novi tip podataka, Person
//	koji ima dva člana, ne engleskom *Properties*
//	Property je u stvari interna promenljiva za struct



//	kreiranje vrednosti tipa Person se onda radi gotovo identično tuple-ovima:
let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let rihanna = Person(clothes: "Short skirts", shoes: "High heels")

//	oops!
//	kako ovo gore uopšte radi?!
//	
//	mi nigde nismo definisali ovaj tuple, a opet Swift je to prihvatio za definiiju structa
//	Swift interno kreira tzv. initializer za dati struct koji automatski sadrži svaki property
//	to se zove *memberwise initializer*

//	opet, nema tu magije, neko je seo i to isprogramirao da radi samo od sebe


//	ispis vrednosti je takođe isti kao kod tuplea
taylor.shoes
print(rihanna.clothes)
//	ovo se zove *dot syntax*




//	struct je value type
//			= vrednosni tip, kao i String, Int, tuple, neki Enum itd
//	to znači da dodeljivanje vrednosti kopira tu vrednost u novu promenljivu
var taylorCopy = taylor
taylorCopy.shoes = "flip flops"
//	stara promenljiva
taylor
//	nova promenljiva
taylorCopy


//	## Properties

struct Person2 {
	var clothes: String		//	promenljiv property
	let shoes: String		//	konstantan property
}

//	ako je shoes konstanta, kako da mu se onda dodeli vrednost?


//	kroz initializer
var adelle = Person2(clothes: "Black Dress", shoes: "None")

//	ali ne i kasnije
adelle.clothes = "Coat"
//adelle.shoes = "Flat"


//	ok, šta ako je čitava instanca konstanta?
let adelle2 = Person2(clothes: "Black Dress", shoes: "None")
//adelle2.clothes = "Coat"
//adelle2.shoes = "Flat"
//	razlog: struct je value type i važe ista pravila kao za String, Int itd

//	ovi property koje smo do sada imali se zovu Stored Property - odlika je imaju stalnu vrednost




//	## Methods
//	To su jednostavno ugneždene funkcije napisane unutar struct-a

struct Person6 {
	var clothes: String
	var shoes: String

	func concertOutfit() -> [String] {
		return [clothes, shoes]
	}
}

let taylor6 = Person6(clothes: "T-shirts", shoes: "sneakers")
taylor6.concertOutfit()


	//	Metode za neki struct se pišu tako da najčešće operišu nad property-ima
	//	Tj. pišu se tako da se podrazumeva da je prvi parametar instanca kojoj pripadaju

	.sorted()	//	primenjuje se na instancu gde je pozvana
	//	ali kako da unutar metoda pristupimo toj instanci, ako ona nije prosleđena kao parametar?




//	### self
//	magična referenca na samu instancu, unutar metoda


//	svaki stored property implicitno ima dva metoda:
//	get - čitava vrednost
//	set - upisuje vrednost





//	## Computed Properties
//	Nema stalnu vrednost već se svaki put izračunava

struct Person3 {
	var clothes: String
	var shoes: String

	var concertOutfit: [String] {
		get {
			return [clothes, shoes]
		}
		set(outfit) {
			if ( outfit.count >= 2 ) {
				clothes = outfit[0]
				shoes = outfit[1]
			}
		}
	}
}

var ttt = Person3(clothes: "Bla", shoes: "Meh")
ttt.concertOutfit
ttt.clothes = "Lepa haljina"
ttt.concertOutfit



//	Read-only computed property

struct Person4 {
	var clothes: String
	var shoes: String

	var concertOutfit: [String] {
		get {
			return [clothes, shoes]
		}
	}
}


//	## Type Property
//	property of samog tipa, a ne od instance tipa

struct Person5 {
	var clothes: String		//	promenljiv property
	var shoes: String		//	konstantan property

	static var animalType = "Human"
}

let taylor5 = Person5(clothes: "T-shirts", shoes: "sneakers")
//taylor5.
//	kako pristupiti animalType property-ju?
Person5.animalType




