//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

typealias AudioChannel = Int

//	left = 0, rifght = 1
var audioChannel: AudioChannel = 10

audioChannel = 1

func routeAudio(channel: AudioChannel) {}

routeAudio(channel: audioChannel)


var leviKanal = (channel: audioChannel, volume: 0.3)
leviKanal.0
leviKanal.1

var desniKanal = (channel: 1, volume: 1.0)

leviKanal.channel == desniKanal.channel

typealias ChannelLevel = (channel: AudioChannel, volume: Double)

var srednjiKanal: ChannelLevel = (channel: 2, volume: 1.0)


srednjiKanal.channel





//: [Next](@next)
