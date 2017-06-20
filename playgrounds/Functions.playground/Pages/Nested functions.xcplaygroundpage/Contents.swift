//: [Previous](@previous)

import Foundation



//	OK, sada jedan advanced concept:
//	Funkcije mogu biti ugneždene!


var delayMins = 3.0
//	ovo je globalna funkcija, radi u celom programu
func mightStartWithDelayOf(Minutes delay: Double ) {

	//	interna funkcija koja važi samo unutar ove u kojoj je deklarisansa
	func isItPossibleToStart() -> Bool {
		return true
	}

	//
	let mustStartNow = isItPossibleToStart()

	if mustStartNow {
		//		delay = 0.0
		print("Goooooo!")
	} else {
		print("Start in T-\(delay) minuts and counting...")
	}

	//	pera
}

//	ova je u globalnom opsegu, stoga ju je moguće pozvati
mightStartWithDelayOf(Minutes: delayMins)


//	ovo ne radi, jer ova funkcija ne postoji u aktuelnom opsegu važenja
//isItPossibleToStart()

//	zašto je ovo tako? odgovor je naš drugar Scope of Validity



//	SCOPE
//	opseg važenja tj. scope je krucijalni koncept
//	uvek važi odozgo-na-dole

//	scope se kreira samim tim što napišete, za bilo šta (if, func, for, while itd)
_ = {
	//	novi child scope
}

//	child scope vidi sve iz parent scopea
//	parent scope ne vidi ništa iz child scopea

var x = 10
var y = 20

_ = {
	//	novi child scope
	print(x)
	var z = 100
}
//print(z)



if x == 10 {
	var z = 100
	y = 15
} else {
	var z = 200
	y = 25
}
y
//z






//	Funkcije kao argumenti drugih funkcija


func processManyNumbers(_ arr: [Int]) -> [Int] {
	var arrOut = [Int]()
	for num in arr {
		arrOut.append( num+1 )
	}
	return arrOut
}

var start = [1,2,3,4,5]
processManyNumbers(start)








func increment(_ num: Int) -> Int {
	return num + 1
}

func processManyNumbers2(_ arr: [Int]) -> [Int] {
	var arrOut = [Int]()
	for var num in arr {
		arrOut.append( increment(num) )
	}
	return arrOut
}
processManyNumbers2(start)







func processManyNumbers3(_ arr: [Int],
                         using processor: (Int) -> Int ) -> [Int] {
	var arrOut = [Int]()
	for var num in arr {
		arrOut.append( processor(num) )
	}
	return arrOut
}
processManyNumbers3(start, using: increment)


func processManyNumbers4(_ arr: [Int],
                         process: (Int) -> Int ) -> [Int] {
	var arrOut = [Int]()
	for var num in arr {
		arrOut.append( process(num) )
	}
	return arrOut
}
processManyNumbers4(start, process: increment)

func incrementBy10(_ num: Int) -> Int {
	return num + 10
}
processManyNumbers4(start, process: incrementBy10)


//: [Next](@next)
