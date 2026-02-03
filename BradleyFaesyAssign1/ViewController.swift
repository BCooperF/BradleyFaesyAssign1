//
//  ViewController.swift
//  BradleyFaesyAssign1
//
//  Created by Faesy, Bradley C. on 2/3/26.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var inputTextField: UITextField!
	@IBOutlet weak var selectUnit: UIButton!
	
	var conversionType = ""
	
	@IBAction func unitButton(_ sender: Any) {
		let alert = UIAlertController(title: "Select Conversion", message: nil, preferredStyle: .alert)
		
		let cToF = UIAlertAction(title: "Celsius to Fahrenheit", style: .default) { _ in
			self.conversionType = "CtoF"
			self.selectUnit.setTitle("C → F", for: .normal)
		}
		alert.addAction(cToF)
		
		let fToC = UIAlertAction(title: "Fahrenheit to Celsius", style: .default) { _ in
			self.conversionType = "FtoC"
			self.selectUnit.setTitle("F → C", for: .normal)
		}
		alert.addAction(fToC)
		
		let kmToMi = UIAlertAction(title: "Kilometers to Miles", style: .default) { _ in
			self.conversionType = "KmToMi"
			self.selectUnit.setTitle("km → mi", for: .normal)
		}
		alert.addAction(kmToMi)
		
		let miToKm = UIAlertAction(title: "Miles to Kilometers", style: .default) { _ in
			self.conversionType = "MiToKm"
			self.selectUnit.setTitle("mi → km", for: .normal)
		}
		alert.addAction(miToKm)
		
		present(alert, animated: true)
	}
	
	@IBOutlet weak var resultLabel: UILabel!
	
	@IBAction func convertButton(_ sender: Any) {
		let input = Double(inputTextField.text!)!
		
		
		if conversionType == "CtoF" {
			var result = input * 9 / 5 + 32
			result = round(result * 100) / 100
			resultLabel.text = "\(result)"
		} else if conversionType == "FtoC" {
			var result = (input - 32) * 5 / 9
			result = round(result * 100) / 100
			resultLabel.text = "\(result)"
		} else if conversionType == "KmToMi" {
			var result = input * 0.621371
			result = round(result * 100) / 100
			resultLabel.text = "\(result)"
		} else if conversionType == "MiToKm" {
			var result = input / 0.621371
			result = round(result * 100) / 100
			resultLabel.text = "\(result)"
		} else {
			resultLabel.text = "Select a conversion"
		}
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
}
