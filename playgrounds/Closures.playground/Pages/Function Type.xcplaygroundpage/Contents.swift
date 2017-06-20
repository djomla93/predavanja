//: [Previous](@previous)

import Foundation



//	ok, sada još luđa stvar:
//	FUNCTION TYPE

//	funkcije su tipovi podatka kao i svaki drugi!
//	deklariše se kao: (ARGS_TYPES) -> RETURN_TYPE
//	pa stoga mogu biti
//	* dodeljene promenljivama				🤔
//	* parametar u pozivu neke funkcije		😮
//	* vraćene kao rezultat druge funkcije	😨
//	:)										😱

//	primer, lepa mala funkcija:
var num = 10
func increment(_ n: Int ) -> Int {
	return n+1;
}
increment(num)
num


increment
//	sada ovu funkciju možete dodeliti proizvoljnoj drugoj promenljivoj
var ink = increment
var ink2: (_:Int) -> Int = increment
ink(num)

//	ovo ne znači da sada imamo dve funkcije, već i dalje samo jednu
//	funkcije su *referentni* tipovi podataka (kao i `class`) i stoga dodeljivanje gore kopira referencu na vrednost funkcijskog tipa





//	kako onda da napravimo funkciju koja ima proizvoljni korak?

func increment2(_ n: Int, by step: Int ) -> Int {
	return n + step;
}
num
increment2(num, by: 4)



//	 e sad, da li je moguće napraviti generator inkrementera sa proizvoljnim korakom, da nemamo ovaj by: argument?

//	ok, znači treba nam funkcija koja će "vratiti" drugu funkciju čiji je potpis
//	- ima jedan parametar (argument) tipa Int
//	- vraća rezultat tipa Int

//	format takve funkcije je:

//typealias Incrementer = (_:Int) -> Int
//func makeIncrementer(withStep step: Int ) -> Incrementer {
func makeIncrementer(withStep step: Int ) -> (_:Int) -> Int {

	func incrementer(num: Int) -> Int {
		return num + step
	}

	return incrementer
}


var incrementByOne = makeIncrementer(withStep: 1)
incrementByOne(num)

var incrementByTen = makeIncrementer(withStep: 10)
incrementByTen(num)

incrementByTen(num)


//	ali kako ovo radi?!
//	na koju foru prosleđeni step=1 ili step=10 u makeIncrementer ostane u životu nakon što se "izađe" iz te iste funkcije?


//: [Next](@next)
