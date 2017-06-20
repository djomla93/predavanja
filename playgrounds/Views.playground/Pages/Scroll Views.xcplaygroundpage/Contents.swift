//: [Previous](@previous)

import UIKit


//	imitate UIScreen
var sframe = CGRect(x: 0, y: 00, width: 375, height: 667)
var screen = UIView(frame: sframe)
screen.backgroundColor = UIColor.black.withAlphaComponent(0.2)



//	imitate UIViewController.view
var frame = CGRect(x: 10, y: 10, width: 300, height: 480)
var view = UIScrollView(frame: frame)
//view.contentSize = CGSize(width: 480, height: 640)
view.backgroundColor = UIColor.white
screen.addSubview(view)



//	bunch of subviews...

let blue: UIView = {
	var vframe = frame
	vframe.origin = CGPoint(x: 20, y: 20)
	vframe.size = CGSize(width: 160, height: 80)
	let v = UIView(frame: vframe)
	v.backgroundColor = UIColor.blue
	return v
}()
view.addSubview(blue)

let green: UIView = {
	var vframe = frame
	vframe.origin = CGPoint(x: 200, y: 20)
	vframe.size = CGSize(width: 160, height: 160)
	let v = UIView(frame: vframe)
	v.backgroundColor = UIColor.green
	return v
}()
view.addSubview(green)

let red: UIView = {
	var vframe = frame
	vframe.origin = CGPoint(x: 20, y: 280)
	vframe.size = CGSize(width: 400, height: 360)
	let v = UIView(frame: vframe)
	v.backgroundColor = UIColor.red
	return v
}()
view.addSubview(red)


















//	okieee... let's play
view.bounds







view.clipsToBounds
view.clipsToBounds = false







//	secret of UIScrollView scrolling is...
view.contentSize
view.contentSize = CGSize(width: 320, height: 520)










//	saberemo frameove svih subviewova
var fullFrame = CGRect.zero.union(blue.frame).union(green.frame).union(red.frame)
//	i onda taj size staviš kao contentSize
view.contentSize = fullFrame.size
//view.contentSize

//view.contentOffset = CGPoint(x: 0, y: 60)




















//	yellow grid // **very** resource intensive
func makeGrid(forScreen screen: UIView, step: Int = 20) {
	for i in 1...40 {
		let hf = CGRect(x: 0, y: i*step, width: Int(screen.bounds.size.width), height: 1)
		let hline = UIView(frame: hf)
		hline.backgroundColor = UIColor.yellow.withAlphaComponent(0.4)
		screen.addSubview(hline)

		let vf = CGRect(x: i*step, y: 0, width: 1, height: Int(screen.bounds.size.height))
		let vline = UIView(frame: vf)
		vline.backgroundColor = UIColor.yellow.withAlphaComponent(0.4)
		screen.addSubview(vline)
	}
}

//	fake cover
extension UIView {
	func mask(withRect rect: CGRect, inverse: Bool = false) {
		let path = UIBezierPath(rect: rect)
		let maskLayer = CAShapeLayer()

		if inverse {
			path.append(UIBezierPath(rect: self.bounds))
			maskLayer.fillRule = kCAFillRuleEvenOdd
		}

		maskLayer.path = path.cgPath
		self.layer.mask = maskLayer
	}
}

let fog: UIView = {
	var vframe = sframe
	let v = UIView(frame: vframe)
	v.backgroundColor = UIColor.gray.withAlphaComponent(0.6)

	v.mask(withRect: frame, inverse: true)

	return v
}()


//makeGrid(forScreen: screen)
//screen.addSubview(fog)


import PlaygroundSupport
PlaygroundPage.current.liveView = screen
PlaygroundPage.current.needsIndefiniteExecution = true


//: [Next](@next)
