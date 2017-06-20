//: Playground - noun: a place where people can play

import Foundation


//	TYPES

var pi = 3.1415	//	Double
var ceoBroj = 20	//	Int

//	Numeric literals koji nisu decimalni se tumače u momentu izvršenja
//	ovde se 3 tumači kao Double, jer je promenljiva pi već Double. pa samim tim i promenljiva decimalniBroj takođe bude Double tipa
var decimalniBroj = pi + 3
//	ovde se 3 tumači kao Int, jer je ceoBroj već tipa Int
var veciCeoBroj = ceoBroj + 3

//	konverzija Double promenljive pi u Int
//	vrši se surovo odsecanje decimalnog dela i dodeluje se samo celi deo. Čak i ako je 3.9999, takođe će vrednost ceoPI biti == 3
var ceoPI = Int(pi)
var decBroj = Double(ceoBroj)

//	konverzija Unsigned Integer broja u Integer. Vrednost je ista, ali se menja tip
var unsCeoBroj = UInt(ceoBroj)


//var negativanPI = -pi
var negativanPI = -(pi + 0.5)
var negCeoPI = Int(negativanPI)

var decimalnaTrojka = Double(3)
decimalnaTrojka += 0.790






//	STRINGS

//	promenljiva, tipa string
var str = "Hello, playground"
//	konstanta
let modeSYSTEM = "SYSTEM"


//	definicija praznog stringa
var prz : String
var prazno = ""
var opetPrazno = String()

//	da je neka String promenljiva prazna (tj. ima nula karaktera)?
prazno.isEmpty
str.isEmpty

//	Stringovi imaju razne metode predefinisane promenljive unutar Swift Standard Library

//	da li promenljiva str sadrži string poslat kao parametar metoda ("play")
//str.containsString("play")
str.contains("play")

//	da li se "Hello" nalazi na početku str?
str.hasPrefix("Hello")

//	da li se "here" nalazi na kraju str?
str.hasSuffix("here")





//	dodavanje na string se vrši prostim sabiranjem, kao u slučaju brojeva. novo dodati string se lepi na kraj
str += "!"
//	može i ovako, sa više stringova, ili kombinacije String literals i drugih promenljivih / konstanti
str += " " + modeSYSTEM
//	ovo ne radi, jer je modeSYSTEM definisan kao konstanta (sa "let")
//modeSYSTEM += "!"

//	Q: kako ubaciti vrednost neke promenljive unutar stringa?
//	kako na mesto gde su __ staviti vrednost neke promenjive?
var kompleksniString = "Standard greeting is __ but can also be __ other ones."

//	A: String interpolation:
kompleksniString = "Standard greeting is \(str)."

//	bilo šta se može ubaciti. promenljiva bilo kog tipa. Evo primer sa Bool promenljivom:
var bx = true
kompleksniString = "Standard greeting is \(str) but can also be \(bx) other ones."
//	to radi zato što će Swift u stvari unutar \() izvršiti konverziju u String:
String(ceoBroj)
String(bx)

//	unutar \() se mogu pisati i složenije instrukcije, npr. neko računanje
var noviStr = "Ubaci stringove \(str) ali i rezultat računanja \(ceoBroj / 2) drugih varijanti."
String(ceoBroj / 2)




//#	Bitno: String (kao i Int, Double, Bool itd.) su vrednosti tipovi (value types)

//	to znači da dodeljivanje između String promenljivih kopira vrednost
var str2 = str
//	od ovog momenta, i str i str2 sadrže istu vrednosti, ali su te dve vrednosti nezavisne
//	promena jedne promenljive ne menja sadržaj one originalne
str2 += " Nice to find you"
str


//	Stringovi u Swiftu su svi bazirani na Unicode skalarnim vrednostima. Unicode skalari se mapiraju na 21-bitne binarne brojeve (kada se gledaju kao 0 i 1)
str = "sćčšp слдкфхј 😄ℌ𝔑 кхд"


//	String je u suštini uređen niz pojedinačni karaktera.
//	Character je tip podatka i može sadržati tačno jednu Unicode formu znaka

//	Prvi znak u stringu:
var slovo = str.characters.first
//	Broj znakova u stringu:
var brojKaraktera = str.characters.count
//	da li se karakter ! nalazi unutar str:
var sadrziUzvicnik = str.characters.contains("!")


//	dužina, broj karaktera u stringu
str.characters.count
str2.characters.count
//	u Swiftu nema len, count, length i sličnih stvari iz drugih jezika




