//: Playground - noun: a place where people can play

import Foundation

//	Demonstracija razlike između `if let` i `guard let` načina pisanja koda


//	uzmemo recimo čitav set uslova
var condition1 = true
var condition2 = false
var condition3 = true
var condition4 = false
var condition5 = true
var condition6 = false

var text = "sfsfsdgfsd"

//	i imamo funkciju koja treba da nešto uradi samo ako su svi ti uslovi zadovoljeni
func conditionalText(text: String) -> String? {

	if condition1 {
		if condition2 {
			if condition3 {
				if condition4 {
					if condition5 {
						if condition6 {
							return text+text
						}
					} else {
						//	ako nije zadovoljen uslov condition5
					}
				}
			} else {
				//	ako nije zadovoljen uslov condition3
			}
		}
	} else {
		//	ako nije zadovoljen uslov condition1
	}

	return nil
}
conditionalText(text: text)

//	Problemi sa kodom gore su pre svega nečitljivost, pogotovo kada su ovi uslovi kompleksniji od ovog prostog koda
//	Takođe, ako ima i `else` grana, onda je ta grana fizički udaljena od `if` grane i dodatno komplikuje razumevanje


//	e sad, jedan način da se poboljša ovaj kod jeste da se testiraju baš negativne grane

func conditionalText2(text: String) -> String? {

	if !condition1 {
		return nil
	}

	if !condition2 {
		return nil
	}

	//	itd.

	return text+text
}


//	U Swiftu, `guard` prestavlja baš tu `if NOT condition` varijantu:

func conditionalTextGuard(text: String) -> String? {

	guard condition1 else {
		return nil
	}

	guard condition2 else {
		return nil
	}

	guard condition3 else {
		return nil
	}

	guard condition4 else {
		return nil
	}

	guard condition5 else {
		return nil
	}

	guard condition6 else {
		return nil
	}

	return text+text
}



//	Međutim, `guard` zaista zasija kada se iskoristi u kombinaciji sa optional bindingom:

var optional1: Int?
var optional2: String?
var optional3: [String]?

func conditionalTextGuard2(text: String) -> String? {

	//	proveravamo uslove i automatski radio optional unwrap
	guard let op1 = optional1 else {
		return nil
	}

	guard let op2 = optional2 else {
		return nil
	}

	guard let op3 = optional3 else {
		return nil
	}

	//	sada su ovde dostupne sve ove op1, op2 i op3 vrednosti

	return "\(text) \(op1) \(op2) \(op3)"
}

//	ovo gore, nije moguće uraditi sa if let, barem ne ovako elegantno

