//: Playground - noun: a place where people can play

import Foundation

var str = "Hello, playground"

enum RideType {
	case family
	case kids
	case thrill
	case scary
	case relaxing
	case water
}
//	Also model an instance of the object, one ride
struct Ride {
	let name: String
	let types: Set<RideType>
	let waitTime: Double
}
//	Finally model all the rides currently offered in the park:
let parkRides = [
	Ride(name: "Raging Rapids", types: [.family, .thrill, .water], waitTime: 45.0),
	Ride(name: "Crazy Funhouse", types: [.family], waitTime: 10.0),
	Ride(name: "Spinning Tea Cups", types: [.kids], waitTime: 15.0),
	Ride(name: "Spooky Hollow", types: [.scary], waitTime: 30.0),
	Ride(name: "Thunder Coaster", types: [.family, .thrill], waitTime: 60.0),
	Ride(name: "Grand Carousel", types: [.family, .kids], waitTime: 15.0),
	Ride(name: "Bumper Boats", types: [.family, .water], waitTime: 25.0),
	Ride(name: "Mountain Railroad", types: [.family, .relaxing], waitTime: 0.0)
]




//	Q: fetch all the Rides suitable for kids?

var kidRides = [Ride]()
for ride in parkRides {
	if ride.types.contains(.kids) {
		kidRides.append(ride)
	}
}
kidRides.count
kidRides





//	.map == Transform input data of any type to any other type (or its Optional)


// map way: [Ride] -> [Ride?]
let mapKidRides = parkRides.map { (r) -> Ride? in
	return r.types.contains(.kids) ? r : nil
}
mapKidRides.count
mapKidRides

//	map: [Ride] -> [String]
let allCaps = parkRides.map { r -> String in
	return r.name.uppercased()
}
let allCaps2 = parkRides.map({ $0.name.uppercased() })
allCaps
allCaps2



//	.flatMap == Transform input data of any type to Array or Optional of any other type


//	flatMap way:
let flatMapKidRides = parkRides.flatMap { (r) -> Ride? in
	return r.types.contains(.kids) ? r : nil
}
flatMapKidRides.count
flatMapKidRides

let flat = mapKidRides.flatMap({ $0 })
flat.count



let allCapsKidRides = parkRides.flatMap { (r) -> String? in
	return r.types.contains(.kids) ? r.name.uppercased() : nil
}
allCapsKidRides


//	flatMap je koristan kada treba "spljoštiti" nizove
let manyRides = [
	[
		Ride(name: "Raging Rapids", types: [.family, .thrill, .water], waitTime: 45.0),
		Ride(name: "Crazy Funhouse", types: [.family], waitTime: 10.0),
	],
	[
		Ride(name: "Spinning Tea Cups", types: [.kids], waitTime: 15.0),
		Ride(name: "Spooky Hollow", types: [.scary], waitTime: 30.0),
		Ride(name: "Thunder Coaster", types: [.family, .thrill], waitTime: 60.0),
		Ride(name: "Grand Carousel", types: [.family, .kids], waitTime: 15.0),
	],
	[
		Ride(name: "Bumper Boats", types: [.family, .water], waitTime: 25.0),
		Ride(name: "Mountain Railroad", types: [.family, .relaxing], waitTime: 0.0)
	]
]
manyRides.count
manyRides[0].count
manyRides[1].count
manyRides[2].count


//	[[Ride]] -> [Ride]
let allRides = manyRides.flatMap({ $0 })
allRides.count

//	chaining flatMaps for fun & profit
let kidsInnerRides = manyRides.flatMap({ $0 }).flatMap { (r) -> String? in
	return r.types.contains(.kids) ? r.name.uppercased() : nil
}
kidsInnerRides
kidsInnerRides.count




//	.filter


let filteredKidRides = parkRides.filter { (r) -> Bool in
	return r.types.contains(.kids)
}
filteredKidRides
filteredKidRides.count






//	.reduce == Transform array of any data to any singular value


var waitTime = 0.0
for ride in parkRides {
	waitTime += ride.waitTime
}
waitTime

let totalWaitTime = parkRides.reduce(0.0) { (currentResult, r) -> Double in
	return currentResult + r.waitTime
}

let kidsWaitTime: Double = filteredKidRides.reduce(0.0, { $0 + $1.waitTime } )
kidsWaitTime


let kidsOnlyRides: [Ride] = parkRides.reduce([]) { ($1.types.contains(.kids)) ? $0 + [$1] : $0 }
kidsOnlyRides
kidsOnlyRides.count





