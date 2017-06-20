//: [Previous](@previous)

import UIKit


//	Closure is **reference** type
//	Reference types - especially the escaping sort - can create reference cycles


//	ovde dole nema nikakve oznake kod tipa closurea, tako da je ovo non-escaping closure

func oneDownloadPhoto(FromPath path: URL,
                      callback: (_: UIImage) -> Void )
{
	//	askdfhskhfkdhf
	let img = UIImage()
	callback(img)
}



//	@escaping markira ova closure tako da potencijalno može nastaviti da živi i nakon što twoDownloadPhoto() završi sa svojim poslom

func twoDownloadPhoto(FromPath path: URL,
                      callback: @escaping (_: UIImage) -> Void )
{

}

//	see: https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID56



//	Reference Cycle problems

class ViewController : UIViewController {

	var imageView: UIImageView!

	override func viewDidLoad() {
		super.viewDidLoad()

		if let url = URL(string: "https://www.apple.com/") {
			downloadPhoto(FromPath: url, callback: { (img) in
				//	stop spinner
				self.imageView.image = img
			})
			//startSpinner

			//	adding capture list at the start of closure allows compiler to resolve reference cycles
			//	capture list: [unowned self]
			downloadPhoto(FromPath: url, callback: {
				[unowned self] (img) in
				self.imageView.image = img
			})
		}
	}


	func downloadPhoto(FromPath path: URL,
	                   callback: @escaping (_: UIImage) -> Void )
	{
		//	can potentially call another function and tranfer this same closure further

		//	In any case - here goes some async code that downloads the image

		URLSession.shared.dataTask(with: path) { (_, _, _) in
			//	then create an instance of the image
			let img = UIImage()
			//	then calls the supplied closure to give that image back to the calling scope (the viewDidLoad method)
			callback(img)
		}

	}
	
}


//: [Next](@next)
