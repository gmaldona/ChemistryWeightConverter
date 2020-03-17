//
//  ViewController.swift
//  ChemistryWeightConverter
//
//  Created by Gregory Maldonado on 2/13/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    @IBOutlet weak var formulaText: UITextField!
    @IBOutlet weak var weightInput: UITextField!
    
    @IBOutlet weak var weightTitle: UILabel!
    @IBOutlet weak var weightText: UILabel!
    @IBOutlet weak var molarTitle: UILabel!
    @IBOutlet weak var molarText: UILabel!
    
    
    //When the button is pressed, the function is called. This function calls another function to calculate the conversion
    @IBAction func calculateButton(_ sender: Any) {
        
        //Creates a molecule with the input string
        let molecule = Molecule(molecule: formulaText.text!)
        
        //Shows labels on the screen
        weightTitle.isHidden = false
        weightText.isHidden = false
        molarTitle.isHidden = false
        molarText.isHidden = false
        
        //Conversions
        weightText.text = calculateWeight(molecule: molecule)
        molarText.text = String(molecule.getMolecularWeight())
    }
    
    //Function that calculates the conversion between moles and grams
    func calculateWeight(molecule: Molecule) -> String {
        
        //The text input that contains the amount of substance
        let amountStr = weightInput.text!
        
        //Sets the last letter of the unit
        //If the unit ends with g, then the units are grams
        //The theunits endss with l, then the units are moles
        let index = amountStr.index(amountStr.startIndex, offsetBy: amountStr.count - 1)
        let type = amountStr[index]
        
        //String that holds the numerical amount
        var numberStr = ""
        
        //For loop that loops through the characters of the input amount
        for i in 0...amountStr.count {
            //Variables that holds the index character
            let j = amountStr.index(amountStr.startIndex, offsetBy: i)
            let character = amountStr[j]
            let characterDetector = CharacterDetection(character: character)
            //Check to see if the character is a digit
            if characterDetector.isDigit() {
                numberStr = numberStr + String(character)
            }
            //If not then the for loop gets broken
            else { break }
        }
        
        //Variable that holds the amount 
        let amount: Double = Double(numberStr)!
        
        //Checks to see if the unit ends with g
        if type == "g" {
            //Change title to moles
            weightTitle.text = "Moles (mol):"
            //Returns the amount of moles of substance
            return String(amount / molecule.getMolecularWeight())
        }
        //Checks to see if the unit ends with l
        else if type == "l" {
            //Change title to grams
            weightTitle.text = "Grams (g):"
            //Returns the amount of grams of substance
            return String(amount * molecule.getMolecularWeight())
        }
        //Anything else
        return "Wrong units..."
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    
    
}

