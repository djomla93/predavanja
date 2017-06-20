//: Playground - noun: a place where people can play

import UIKit


//	imitate UIScreen
var sframe = CGRect(x: 0, y: 0, width: 375, height: 667)
var screen = UIView(frame: sframe)
screen.backgroundColor = UIColor.lightGray


















//	imitate UIViewController.view
var frame = CGRect(x: 10, y: 10, width: 300, height: 480)
var view = UIView(frame: frame)
view.backgroundColor = .white
//view.layer.borderWidth = 1.0	//	layer?! (Core Animation)
//view.layer.borderColor = UIColor.red.cgColor
//view.layer.cornerRadius = 4.0
screen.addSubview(view)
















//	bunch of subviews...

let blue: UIView = {
	var vframe = CGRect.zero
	vframe.origin = CGPoint(x: 20, y: 20)
	vframe.size = CGSize(width: 160, height: 80)
	let v = UIView(frame: vframe)
	v.backgroundColor = .blue
	return v
}()
view.addSubview(blue)

let green: UIView = {
	var vframe = CGRect.zero
	vframe.origin = CGPoint(x: 200, y: 20)
	vframe.size = CGSize(width: 160, height: 160)
	let v = UIView(frame: vframe)
	v.backgroundColor = .green
	return v
}()
view.addSubview(green)

let red: UIView = {
	var vframe = CGRect.zero
	vframe.origin = CGPoint(x: 20, y: 280)
	vframe.size = CGSize(width: 400, height: 360)
	let v = UIView(frame: vframe)
	v.backgroundColor = .red
	return v
}()
view.addSubview(red)

view.subviews












//	okieee... let's play

view.clipsToBounds
//view.clipsToBounds = true

blue.frame
blue.bounds
green.frame
green.bounds


view.frame
//view.frame.origin.y = 100


view.bounds
//view.bounds.origin.x = 100
//view.bounds.origin.y = 60
//view.bounds

//view.bounds.size.height = 220


//view.bounds.origin.x = -100
//view.bounds.origin.y = -60





















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

//makeGrid(forScreen: screen)








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

//screen.addSubview(fog)


























import PlaygroundSupport
//PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = screen
