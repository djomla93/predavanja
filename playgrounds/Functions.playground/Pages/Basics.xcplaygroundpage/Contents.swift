//: Playground - noun: a place where people can play

import Foundation





//	FUNCTIONS

//	Funkcija - u Swiftu se definiše sa "func" je samostalno parče koda koje ima
//	- svoje ime
//	- opcionu vrednost određenog tipa koju vraća kao rezultat izvršavanja koda unutar funkcije
//	- 0 ili više ulaznih parametara




//	Definicija

func pozdrav(ime: String) -> String {
	return "Ciao " + ime
}

func duzinaImena(ime: String) -> Int {
	return ime.characters.count;
}


//	Funkcije nemaju svrhu niti se izvršavaju same od sebe
//	Moraju biti _pozvane_ da bi se kod unutar njih izvršio


//	ako se podsetimo naše vesele ekipe...
var nizImena: [String] = ["Alek", "Boško", "Ivan", "Vlada"]

//	onda ispis svakog imena u nizu možemo uraditi pomoću funkcije koju smo definisali
for element in nizImena {
	print( pozdrav(ime: element) )
}



//	Parametri su opcioni, tj. funkcija ni ne mora da ima parametre
func daLiJeStart() -> Bool {
	return true
}
daLiJeStart()



//	funkcija ne mora ni da vraća ikakvu vrednost

func markStart() -> Void {
	print("START")
}
markStart()
//	kako u Swiftu sve mora da ima tip, tako ovaj primer gore ipak vraća nešto
//	vraća vrednost specijalnog tipa koji se zove Void
//	Void je prazan tuple, tj. ()





//	vraćanje više vrednosti iz funkcije
func startPoint() -> (x: Double, y: Double) {
	return (50.0, 100.0)
}
print(startPoint())

//	rezultat funkcije je tuple sa imenovanim segmentima:
var tacka = startPoint()
tacka.x
tacka.y

//	naravno, radi i dalje ovako:
tacka.0
tacka.1


//	ako imamo funkciju koja menja vrednost promenljive tacka:
func updateStartPoint() {
	tacka.x = 100.0
	tacka
}

tacka
//	to se desi tek nakon poziva
updateStartPoint()
//	ovdi:
tacka



//	SAVET: izbegavajte maksimalno ovakve funkcije, koje menjaju globalne promenljive
//	bolji način je da napišete ovako:
func update(startPoint point: (x: Double, y: Double) ) -> (x: Double, y: Double) {
	var newPoint = point;
	newPoint.x = 200.0
	return newPoint
}

tacka = update(startPoint: tacka)

//	oops, ovde gore imamo par momenata
//	1. šta je ovo (startPoint point...)
//	2. Potpis funkcije postaje vrlo nečitljiv

//	prvo rešimo nečitljivost:
typealias Point = (x: Double, y: Double)
func update(startingPoint p: Point ) -> Point {
	var newPoint = p;
	newPoint.x = 200.0
	return newPoint
}


update(startingPoint: tacka)


//	a sad malo zezanja sa imenima parametara
//	parametri mogu imati eksterno i interno ime
//	eksterno se koristi pri pozivu funkcije (spolja)
//	interno se koristi unutar funkcije

//	func IMEFUNKCIJE( EKSTERNO_IME_PARAM INTERNO_IME_PARAM : TIP_PARAM, ...)

//	to		= EKSTERNO ime prvog parametra
//	person	= INTERNO ime prvog parametra
func sayHello(to person: String, and anotherPerson: String) -> String {
	if (person == "Mika") {
		return "Yo!"
	}
	return "Hello \(person) and \(anotherPerson)!"
}

sayHello(to: "Mika", and: "Pera")

print( sayHello(to: "Bill", and: "Ted") )


//	napomena: ako navedete samo jedno ime parametra, onda je ono i interno i eksterno


//	imate mogućnost i da kompletno izbacite ime parametra pri pozivu
//	za to je potrebno da se eksterno ime zameni sa _ 
func greetPerson(_ person: String) {
	print("Hi \(person)")
}
greetPerson("John")
//	ovo jeste moguće ali prema Swift 3 naming Guidelines treba izbegavati i ova funkcija bi trebalo da bude
func greet(person: String) {
	print("Hi \(person)")
}
greet(person: "John")


func greet(animal: String) {

}


//	funkcija naravno može da vraća i Optional
func trener(tim: String ) -> String? {
	if (tim.characters.count == 0) {
		return nil
	}

	return "Ime Prezime"
}

//	 kako se sada ovakva funkcija koristi? pa moramo da koristimo optional binding
var imeTima = "Milan"
if let trener = trener(tim: imeTima) {
	print(trener)
} else {
	print("Tim \(imeTima) trenutno nema trenera.")
}




//	funkcije mogu imati i predefinisane vrednosti
//	to znači ako ih ne prosledite pri pozivu funkcije, vrednost argumenta unutar funkcije će biti ta default vrednost
func start2(withDelayInMinutes delay: Int? = nil) {
//	if delay == nil {
//		print("Goooooo!")
//	} else {
//		print("Start in T-\(delay!) minuts and counting...")
//	}
	if let delay = delay {
		print("Start in T-\(delay) minuts and counting...")
	} else {
		print("Goooooo!")
	}
}
start2(withDelayInMinutes: 0)



func start(withDelayInMinutes delay: Int = 0 ) {
	if delay == 0 {
		print("Goooooo!")
	} else {
		print("Start in T-\(delay) minuts and counting...")
	}
}

start()
var delay = 5
start(withDelayInMinutes: delay)



//	Parametri (argumenti) unutar funkcije su uvek, uvek, uvek konstante!
//	Pa ih samim tim nije moguće menjati u samoj funkciji



//	...sem ako eksplicitno ne kažete da može 😜
var delay = 3.0
func shouldStart(withDelayInMinutes delay: inout Double ) {
	//	inout ispred tipa parametra znači da će se promena vrednosti prosleđene promenljive odraziti i u pozivajućeg opsegu (scope-u)
	//	ta promena će biti aktivna *na izlazu iz funkcije*, ne u momentu kada se desi!

	let mustStartNow = true
	if mustStartNow {
		delay = 0.0
		print("Goooooo!")
	} else {
		print("Start in T-\(delay) minuts and counting...")
	}
}

delay
shouldStart(withDelayInMinutes: &delay)		//	obratite pažnju na "&" ispred same promenljive!
delay


