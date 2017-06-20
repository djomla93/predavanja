//: [Previous](@previous)

import Foundation

class Vehicle {
	var numberOfWheels: Int

	init(numberOfWheels: Int) {
		self.numberOfWheels = numberOfWheels
	}
}

class Bicycle: Vehicle {
	init() {
//		self.numberOfWheels = 2
		super.init(numberOfWheels: 2)
	}
}

class Auto: Vehicle {
	init() {
//		self.numberOfWheels = 4
		super.init(numberOfWheels: 4)
	}
}

var bike = Bicycle()
var auto = Auto()


var auto2 = auto
auto2.numberOfWheels = 2


//: [Next](@next)
