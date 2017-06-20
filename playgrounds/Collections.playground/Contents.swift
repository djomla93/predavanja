//: Playground - noun: a place where people can play

import Foundation


//	Kolekcije su forme koja omogućavaju da u jednoj promenljivoj čuvate veću grupu vrednosti istog tipa
//	Mogu biti: nizovi, setovi i hm...rečnici :)
//	Tj: Array, Set, Dictionary




//	ARRAY - niz vrednosti u tačnom određenom redosledu

//	data type: Array<Value-Data-Type>

//	niz se definiše tako što niz vrednosti ograničite sa [ i ]
//var niz = []
//	ovo je nesiguran kod, jer nije moguće odrediti tip.
//	samo kaže da je ovo niz nekih vrednosti, ali niti pišu ikakve vrednosti, niti kog su tipa

var x: Int = 0
var nekiNiz: Array<Int> = []
var nekiNiz2: [Int] = []
var nekiNiz3 = [Int]()


//	ovo je već bolje: definišemo promenljiv (zbog "var") niz celih brojeva
var nizCelih = [1,2,3,4,5]
//	ovo je konstantan niz 4 cela broja
let nizFiksnih = [1, 3, 5, 7]

//	definicija praznog niza određenog tipa
var prazanNizCelih = [Int]()
var prazanNizDecimalnih = [Double]()
var nizNekihStringova = [String]()

typealias HTTPStatus = (code : Int, message : String)
var httpStatuses = [HTTPStatus]()

//	ovo ne radi, jer je ovo konstantan niz
//nizFiksnih.append(3)

//	ovo neće da može! "Type Safety" nas spreči da sabiramo različite tipove. U ovom slučaju [Int] (niz celih brojeva) i Int (ceo broj)
//nizCelih += 6
//nizCelih = nizCelih + 6 //	[Int] + Int

//	ovo već može, jer sabiramo dva niza:
nizCelih += [6]
//	ne radi, jer je ne može zabirati [Int] i [Double]
//nizCelih += [6.0]

//	alternativni način da se navede tip elemenata u nizu je ovakav, kao za standardne promenljive:
var nizImena: [String] = []
//	to se zove deklaracija tipa

var n1 = [1,2,3]
var n2 = [1,3,4,5]
n1+n2

if n2.count > 10 {
	n2[10]
}


//	Nizovi, kao i ostali tipovi imaju neke već predefinisane properties & methods (više o tome kasnije u kursu)
//	dodavanje elementa na kraj niza
nizImena.append( "Alek" )
nizImena.append( "Bosko" )
//	može i ovako, to je isto
nizImena += ["Vlada"]
nizImena.append("Ivan")

//	ovako možete dohvatiti prvi element niza
var prviElement = nizImena.first
//	slično i poslednji
var poslednjiElement = nizImena.last
//	nizovi su 0-based, pa je indeks prvog elementa u stvari 0 a ne 1
nizImena[0]
//	drugi element
nizImena[1]


//	Method "split" ima jedan argument, tj. neki element unutra i onda pronađe taj element unutar niza i podeli niz na dva niza
nizImena
var pobuna = nizImena.split(separator: "Bosko")
//	rezultat koji se vrati je niz nizova


//	broj elemenata u nizu se dobija ovako:
nizImena.count
pobuna.count
//	pogledajte šta je sada prvi element u nizu pobuna:
pobuna.first



//	kako je niz uređena struktura, pri dodavanju elemenata se ne vrši provera da li neki element već postoji
nizImena.append("Alek")





//	ako je potrebno da elementi unutar kolekcije budu jedinstveni, onda se koristi druga vrsta kolekcije: Set

//	SET = neuređena kolekcija elemenata istog tipa, sa garantovanom jedinstvenošću elemenata

//	data type: Set<Value-Data-Type>

//	forma kako se definiše set:
var setImena = Set<String>()

//	ne postoji .append obzirom da se elementi ne dodaju (prilepljuju) već se ubacuju. Stoga se koristi .insert:
setImena.insert("Alek")
setImena.insert("Bosko")
setImena.insert("Vlada")
setImena.insert("Ivan")

setImena

setImena.insert("Alek")
setImena


//	element možete i izbaciti iz seta. rezultat metoda "remove" je upravo taj izbačeni element:
var ime = setImena.remove("Alek")

setImena
//	docs, docs, DOCS!
//	pritisnite Option na tastaturi pa onda klik mišem i dobićete mali help koji prikazuje šta u dokumentaciji piše za dati tip, property, method itd.















//	DICTIONARY

//	Dictionary je baš to što mu ime kaže: to je kolekcija key:value vrednosti. Imate spisak ključeva i svaki ključ ima neku pridruženu vrednost. 
//	Ključevi su jedinstveni unutar kolekcije, vrednosti ne moraju biti.
//	Ova kolekcija je takođe neuređena (kao i Set) i ne možete se osloniti da će redosled ključeva ikada biti isti.

//	data type je: Dictionary<Key-Data-Type, Value-Data-Type>

//	kraća forma: [Key-Type : Value-Type]
//	takođe se koristi kao literal


//	definicija praznog dict
var dictPrimer = [Int: String]()
//	(vidi results sa desne strane)

//	ovo je puna specifikacija, sa sve navođenjem tipova za key:value
var dictEkipa : [Int: String] = [0: "Ivan", 1: "Vlada", 2: "Boško", 3: "Alek"]

var dictEkipaString : [String: String] = ["xx": "Ivan", "xy": "Vlada"]

//	no, to u Swiftu ne mora, ako se navedu i vrednosti (barem jedna je dovoljna
var dictEkipa2 = [0: "Ivan", 1: "Vlada", 2: "Boško", 3: "Alek"]

//	koliko ima elemenata?
dictEkipa2.count


//	da li ima barem jedan element
dictPrimer.isEmpty
dictEkipa2.isEmpty


//	izmena vrednosti ključa
dictEkipa2[3] = "Aleksandar"
dictEkipa2
dictEkipaString["xx"]

//	dodavanje ključa na isti način
dictEkipa2[20] = "Petar"
dictEkipa2
//	vrednosti ključa je nebitna, nema tu nikakvog redosleda


//	izbacivanje elementa
dictEkipa2.removeValue(forKey: 20)

//	izbacivanje svih elementa
dictEkipa2.removeAll()





//	Dictionary je prvi iole kompleksniji tip podatka, pa sada dodavanje sa + neće raditi
//dictEkipa2 = dictEkipa2 + [100: "Neko stoti"]
//	Zašto?!
//	Prosto:  niko to nije implementirao u Swift
//	kada jedan te isti operator radi sa različitim tipovima podataka ( i samim tim radi na različit način, to se zove "operator overloading"





//	Za ključ je razumno koristi Int, Double ili String
//	Vrednost pak može biti skoro bilo šta: Int, String, Tuple, Array, Dictionary, razni objekti...

var dictAkademija : [String: Array<String>] = [:]

dictAkademija["Osnivači"] = ["Vlada", "Ivan"]
dictAkademija["Predavači"] = ["Mlađa", "Alek"]
dictAkademija["Studenti"] = []

//	 da li su dodate vrednosti promenljive ili konstante?
dictAkademija["Studenti"]
dictAkademija["Studenti"]?.append("xxx")
dictAkademija["Studenti"]

