iOS Akademija
# Resursi

Knjige, linkovi, video prezentacije itd. Sve na jednom mestu ovde.


## Tools

* [Xcode 8](http://help.apple.com/xcode/mac/8.0/) help
* Na istoj strani, “Lay out user interfaces” se bavi IB-om
* [HTTPS Status Codes](https://httpstatuses.com)
* [OS Status](https://osstatus.com) - lookup raznih iOS grešaka
* [GitHub](https://github.com)
* [API Reference changes](https://developer.apple.com/reference?changes=latest_major)
* [NSPredicate cheatsheet](https://realm.io/news/nspredicate-cheatsheet/)

### Apps

* [Paw](https://paw.cloud) - API client
* [Charles](https://www.charlesproxy.com) - network proxy
* [Kaleidoscope](http://www.kaleidoscopeapp.com) - merge and compare
* [Fork](https://git-fork.com) - simple git client
* [JSON Lint](http://jsonlint.com) - testiranje i formatiranje JSON-a
* [Dash](https://kapeli.com/dash) - pretraživač dokumentacije
* [Reveal](https://revealapp.com) - runtime view debugging


## Swift

**Swift 3 Programming Language** je udžbenik, dostupan u više verzija:

* [web stranica](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/)
* [iBooks knjiga](https://itunes.apple.com/us/book/the-swift-programming-language/id881256329)
* [ePub](https://swift.org/documentation/TheSwiftProgrammingLanguage(Swift3).epub)


* Swift [API Design Guidelines](https://swift.org/documentation/api-design-guidelines/)
* API Design Guidelines: [Highlights](http://cleanswifter.com/swift-api-design-guidelines/)

### Korisni blog postovi

Dosta [veći izbor blog postova](https://pinboard.in/search/u:aleck?query=swift+learn) imate na Pinboardu gde arhiviram šta god nađem zanimljivo.

Ovde ću staviti samo neke od tih.

* String [reference guide](http://www.learnswiftonline.com/reference-guides/string-reference-guide-for-swift/)
* [Strings in Swift](http://oleb.net/blog/2014/07/swift-strings/) - Ole Begemann temeljno istražuje Unicode podršku u Swiftu
* Mastering Swift: [essential details about strings](https://rainsoft.io/mastering-swift-essential-details-about-strings/) 


* [Swift Enumerations and Equatable](http://www.jessesquires.com/swift-enumerations-and-equatable/)
* [Advanced & Practical enum usage](http://appventure.me/2015/10/17/advanced-practical-enum-examples/) in Swift
* [Raw value initializers](http://appventure.me/2016/04/23/associated-types-enum-raw-value-initializers/) for enums with associated types
* [Option Sets](https://oleb.net/blog/2016/09/swift-option-sets/) and how they differ from `enum`


* Type Aliases: [Use Early and Often](http://artsy.github.io/blog/2016/06/24/typealias-for-great-good/)
* Tuples in Swift, [Advanced Usage and Best Practices](http://appventure.me/2015/07/19/tuples-swift-advanced-usage-best-practices/)


* [Pattern Matching](http://appventure.me/2015/08/20/swift-pattern-matching-in-detail/) in details


* [Unwrapping Optional Values in Swift 3.0](https://medium.com/@mimicatcodes/unwrapping-optional-values-in-swift-3-0-guard-let-vs-if-let-40a0b05f9e69) — `guard let` vs `if let`

## iOS App dev

(1) [App Development with Swift](https://itunes.apple.com/us/book/app-development-with-swift/id1118575552?mt=11) na iBooks Store
* Ova knjiga je tek izašla i deo je Appleove [Everyone Can Code](https://www.apple.com/education/everyone-can-code/) inicijative

(2) [Start Developing iOS apps](https://developer.apple.com/library/content/referencelibrary/GettingStarted/DevelopiOSAppsSwift/)
* Ovo postoji od ranije, treba proveriti da li je ažurirano za Swift 3

(3) [Hacking with Swift](https://www.hackingwithswift.com)
* Fantastičan set nekoliko desetina besplatnih tutorijala
* Autor ima i čitav niz drugih korisnih knjiga i materijala

### UIKit

* [Understanding UIScrollView](https://oleb.net/blog/2014/04/understanding-uiscrollview/) Ole Begemanna


### Storyboards & Segues

Opšta priča je deo [View Controller Programming Guide](https://developer.apple.com/library/ios/featuredarticles/ViewControllerPGforiPhoneOS/index.html) for iOS, posebno deo: [Using Segues](https://developer.apple.com/library/ios/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html)

* `UIStoryboard` [referenca](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIStoryboard_Class/index.html)
* `UIStoryboardSeque` [referenca](https://developer.apple.com/library/ios/documentation/UIKit/Reference/UIStoryboardSegue_Class/index.html)
* TN2298 - [Using Unwind Segues](https://developer.apple.com/library/ios/technotes/tn2298/)

Šuma interesantnih blog postova:

* Storyboards Tutorial in iOS 9 - [part 1](https://www.raywenderlich.com/113388) i [part 2](https://www.raywenderlich.com/113394/storyboards-tutorial-in-ios-9-part-2) by Caroline Begbie on Ray Wenderlich site
* [What's new in Storyboards in iOS 9](https://www.raywenderlich.com/115697/ios-9-storyboards-tutorial-whats-new-in-storyboards) by Caroline Begbie on Ray Wenderlich site

* [Unwind Segues in iOS Storyboards](https://spin.atomicobject.com/2014/10/25/ios-unwind-segues/) by Mike Woelmer - pogledajte i sve ostale linkove postove na dnu, odlični su

* [Easier Multiple Storyboards in iOS with Custom Segues](https://spin.atomicobject.com/2014/03/06/multiple-ios-storyboards/) by Ken Fox
* [Custom iOS Modal Dismiss Segue](https://medium.com/@hallas/custom-ios-modal-dismiss-segue-7e21c2bcf690#.xdr7e3seh) by Christoffer Hallas (Objective-c, ali kratak post)
* [UIStoryboard: Safer with Enums, Protocol Extensions and Generics](https://medium.com/swift-programming/uistoryboard-safer-with-enums-protocol-extensions-and-generics-7aad3883b44d#.7indyhnds) by Andyy Hope



## Playgrounds

* [Playground Secrets and Power Tips](https://itunes.apple.com/us/book/playground-secrets-power-tips/id982838034?mt=11) knjiga, Erica Sadun
* Serija interaktivnih [playgrounda za UIKit](https://github.com/ralfebert/uikit-playground/)



## Auto Layout

* [Auto Layout Guide](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/index.html) u Apple dokumentaciji

* Mathew Sanders' [Adaptive Layouts for iPhone 6](http://mathewsanders.com/designing-adaptive-layouts-for-iphone-6-plus) 
* Think & Build: [Learn To Love AutoLayout](http://www.thinkandbuild.it/learn-to-love-auto-layout/)
* Auto Layout: [Man Hates What He Does Not Know.](http://tech.wimdu.com/blog/2015/01/27/ios-dealing-with-autolayout/)

* Shinobi iOS 8 day-by-day: [Layout Margins](https://www.shinobicontrols.com/blog/ios8-day-by-day-day-32-layout-margins)
* Little bites of Cocoa lesson #69: [Compression Resistance & Content Hugging](https://littlebitesofcocoa.com/69-compression-resistance-content-hugging)
* [Percentage Centering](http://simblestudios.com/blog/development/easier-percentage-width-in-autolayout.html) with Storyboards
* What is [Intrinsic Content Size](https://cocoacasts.com/what-is-intrinsic-content-size/)

### Size Classes, Traits

* A [Size Class Reference Guide](http://useyourloaf.com/blog/size-classes/), Keith Harrison
* [The Adaptive Model](https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/TheAdaptiveModel.html) from View Controller Programming Guide for iOS
* [UITraitCollection](https://developer.apple.com/reference/uikit/uitraitcollection) 

## Design

* [iOS Human Interface Guidelines](https://developer.apple.com/ios/human-interface-guidelines/), Apple

* [iOS Design Guidelines](http://ivomynttinen.com/blog/ios-design-guidelines), Ivo Mynttinen

* [Design Details](http://www.brianlovin.com/design-details), Brian Lovin analizira dizajn popularnih aplikacija

* [Designing the Empty States](http://tympanus.net/codrops/2013/01/09/designing-for-the-empty-states/), Craig Dennis o često ignorisanim prikazima u aplikacijama

## Design Patterns, Concepts

* [Fundamentals of Callbacks](https://www.andrewcbancroft.com/2016/02/15/fundamentals-of-callbacks-for-swift-developers/) for Swift Developers

* [What is Delegation](https://www.andrewcbancroft.com/2015/03/26/what-is-delegation-a-swift-developers-guide/)
* [How Delegation works](http://www.andrewcbancroft.com/2015/04/08/how-delegation-works-a-swift-developer-guide/)
* [Wrapping Data Source calls in Computed Properties](http://iamsim.me/delegate-calls-wrapped-in-computed-properties/)



## Core Data

* [API Reference](https://developer.apple.com/reference/coredata)

* [Core Data and Swift](http://code.tutsplus.com/series/core-data-and-swift--cms-907) - 12 članaka u seriji, pisano u vreme Swifta 2.2. Još uvek korisno da se pogleda.

Isti autor, Bart Jacobs, sada ima svoj sajt **CocoaCasts** na kome prodaje kurseve na razne teme. Takođe ima i kratke i odlično napisane [blog postove vezane za Core Data](https://cocoacasts.com/category/core-data/), kao reklamu za sam kurs.

* What is [Core Data](https://cocoacasts.com/what-is-core-data/)
* [How to learn Core Data](https://cocoacasts.com/how-to-learn-core-data/)
* What is [Core Data Stack](https://cocoacasts.com/what-is-the-core-data-stack/)
* What are [Entities and Attributes](https://cocoacasts.com/what-are-core-data-entities-and-attributes/)
* [1 to many and many to many](https://cocoacasts.com/one-to-many-and-many-to-many-core-data-relationships/) relationships
* [Relationships and Delete rules](https://cocoacasts.com/core-data-relationships-and-delete-rules/)
* [Populate table view with NSFRC](https://cocoacasts.com/populate-a-table-view-with-nsfetchedresultscontroller-and-swift-3/)
* [Respond to data changes](https://cocoacasts.com/respond-to-updates-using-the-nsfetchedresultscontrollerdelegate-protocol/) with NSFRC delegate

itd. *Fenomenalno koristan sajt*.

* Interesantna knjiga: [Core Data by Tutorials](https://www.raywenderlich.com/store/core-data-by-tutorials), 2nd Edition

