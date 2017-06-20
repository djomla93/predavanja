//: [Previous](@previous)

import UIKit
import PlaygroundSupport

class ScrollingViewController : UIViewController {

	var scrollView : UIScrollView!

	override func loadView() {
//		super.loadView()
//		self.view.backgroundColor = UIColor.white

		self.scrollView = UIScrollView()
		scrollView.delegate = self
		scrollView.backgroundColor = .white

		self.view = scrollView
	}

	override func viewDidLoad() {
		super.viewDidLoad()

		let frame = CGRect(x: 10, y: 10, width: 300, height: 480)

		let blue: UIView = {
			var vframe = frame
			vframe.origin = CGPoint(x: 20, y: 20)
			vframe.size = CGSize(width: 160, height: 80)
			let v = UIView(frame: vframe)
			v.backgroundColor = UIColor.blue
			return v
		}()
		self.view.addSubview(blue)

		let green: UIView = {
			var vframe = frame
			vframe.origin = CGPoint(x: 280, y: 20)
			vframe.size = CGSize(width: 160, height: 160)
			let v = UIView(frame: vframe)
			v.backgroundColor = UIColor.green
			return v
		}()
		self.view.addSubview(green)

		let red: UIView = {
			var vframe = frame
			vframe.origin = CGPoint(x: 20, y: 480)
			vframe.size = CGSize(width: 400, height: 360)
			let v = UIView(frame: vframe)
			v.backgroundColor = UIColor.red
			return v
		}()
		self.view.addSubview(red)


		//	ok, sada ono sabiranje frameova opet

		let fullFrame = CGRect.zero.union(blue.frame).union(green.frame).union(red.frame)
		self.scrollView.contentSize = fullFrame.size
	}
}


extension ScrollingViewController: UIScrollViewDelegate {
	func scrollViewDidScroll(_ scrollView: UIScrollView) {
		print(scrollView.contentOffset)
	}
}




PlaygroundPage.current.liveView = ScrollingViewController()
PlaygroundPage.current.needsIndefiniteExecution = true

//: [Next](@next)
