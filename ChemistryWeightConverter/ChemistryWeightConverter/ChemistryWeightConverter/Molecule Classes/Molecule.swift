//
//  Molecule.swift
//  ChemistryWeightConverter
//
//  Created by Gregory Maldonado on 2/13/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import Foundation

public class Molecule {
    
    private var atoms: [Atom] = []
    
    var element: String = ""
    var moles: String = ""
    var atomCount: String = ""
    
    
    init(molecule: String) {
        dissectMolecule(molecule: molecule)
        print("f")
    }
    
    
    private func dissectMolecule(molecule: String) {
        
        
        
        var i = 0
        
        while i < molecule.count {
            
            let index = molecule.index(molecule.startIndex, offsetBy: i)
            let character = CharacterDetection(character: molecule[index])
            
            var characterBefore: CharacterDetection?
            var characterAfter: CharacterDetection?
            
            //Checks to see if there is a character before
            if (i != 0) {
                let indexBefore = molecule.index(molecule.startIndex, offsetBy: i - 1)
                characterBefore = CharacterDetection(character: molecule[indexBefore])
            }
            //Checks to see if there is a character after
            if (i != molecule.count - 1) {
                let indexAfter = molecule.index(molecule.startIndex, offsetBy: i + 1)
                characterAfter = CharacterDetection(character: molecule[indexAfter])
            }
            
            
            
            //This if statement checks to see if the index is in the beginning of the string
            if i == 0 {
                
                //If statement checks to see if the character is an uppercase - If so then the uppercase letter gets concatenated to the element variable
                if character.isUpperCase() {
                    element = character.get()
                    moles = "1"
                }
                
                //If statement checks to see if the character is a digit
                else if character.isDigit() {
                    
                    //If statement checks to see if the character after is also a digit
                    if characterAfter!.isDigit() {
                        //If so...The two characters get concatenated together and becomes the moles of the molecule
                        moles = character.get() + characterAfter!.get()
                        //increases the index because the index after was checked
                        i += 1
                    }
                    //If the number after isnt a digit, then just the character at index i becomes the moles
                    else {
                        moles = character.get()
                    }
                }
            }
            
            //If statement checks to see if the character is an uppercase letter - thats the start of a new element
            if character.isUpperCase() && i != 0 {
                //This if statement checks to see if the character before was not a digit - If the character before was a letter then an atom is created with that atomic symbol and the variable element is changed to the new capital letter
                if !characterBefore!.isDigit() { atoms.append(Atom(atomicNumber: findAtomicNumber(atomicSymbol: element))) }
                //The character is set to the variable that holds the atomic symbol
                element = character.get()
            }
            
            //If statement checks to see if the character is a lowercase - concatentated to an uppercase letter in the element variable
            else if character.isLowerCase() { element = element + character.get() }
            
            //If statement checks to see if the character is a digit - this number tells how many atoms of the same type are in the molecule
            else if character.isDigit() && i != 0 {
                
                //Sets the character to the count of atoms
                atomCount = character.get()
                
//                //Creates an atom with the String in element
//                atoms.append(Atom(atomicNumber: findAtomicNumber(atomicSymbol: element)))
                
                //Checks to see if there is an index after
                if (i + 1) < molecule.count {
                    //If an index exist, then it checks tos see if that character is an digit
                    if characterAfter!.isDigit() {
                        //If the character at the index and after are both digits then they get concatenated together
                        atomCount = atomCount + characterAfter!.get()
                        //increases the index because the character after is a digit and was checked
                        i += 1
                    }
                    
                }
                
                var j = 0
                //Creates the number of atoms that is held in the integer value of atom count - creates j amount of the element that is held in the element String
                
                while j < Int(atomCount)! {
                    //A new atom is created with the atomic symbol that is held in the element string
                    atoms.append(Atom(atomicNumber: findAtomicNumber(atomicSymbol: element)))
                    //moves onto the next index
                    j += 1
                }
            }
            
            if (i == (molecule.count - 1)) && !character.isDigit() {
                atoms.append(Atom(atomicNumber: findAtomicNumber(atomicSymbol: element)))
            }
            
        //Moves onto the next index
        i += 1
            
        }
        
    }
    
    //Function that adds all of the atomic weights in the molecule
    public func getMolecularWeight() -> Double {
        
        //Variable to add all the atoms weights together
        var molecularWeight: Double = 0.0
        
        //index variable
        var i = 0
        //Loops through the atom array list
        while i < atoms.count {
            //Adds all the atomic weights together
            molecularWeight = molecularWeight + atoms[i].getAtomicWeight()
            //next
            i += 1
        }
        //returns the molecular weight of the molecule 
        return molecularWeight
    }
    
    //Function that takes an atomic symbol and finds the corresponding atomic number
    private func findAtomicNumber(atomicSymbol: String) -> Int {
        
        if atomicSymbol == "H" { return 1 }
        else if atomicSymbol == "He" { return 2 }
            
        else if atomicSymbol == "Li" { return 3 }
        else if atomicSymbol == "Be" { return 4 }
        else if atomicSymbol == "B" { return 5 }
        else if atomicSymbol == "C" { return 6 }
        else if atomicSymbol == "N" { return 7 }
        else if atomicSymbol == "O" { return 8 }
        else if atomicSymbol == "F" { return 9 }
        else if atomicSymbol == "Ne" { return 10 }
        
        else if atomicSymbol == "Na" { return 11 }
        else if atomicSymbol == "Mg" { return 12 }
        else if atomicSymbol == "Al" { return 13 }
        else if atomicSymbol == "Si" { return 14 }
        else if atomicSymbol == "P" { return 15 }
        else if atomicSymbol == "S" { return 16 }
        else if atomicSymbol == "Cl" { return 17 }
        else if atomicSymbol == "Ar" { return 18 }
        
        else if atomicSymbol == "K" { return 19 }
        else if atomicSymbol == "Ca" { return 20 }
        else if atomicSymbol == "Sc" { return 21 }
        else if atomicSymbol == "Ti" { return 22 }
        else if atomicSymbol == "V" { return 23 }
        else if atomicSymbol == "Cr" { return 24 }
        else if atomicSymbol == "Mn" { return 25 }
        else if atomicSymbol == "Fe" { return 26 }
        else if atomicSymbol == "Co" { return 27 }
        else if atomicSymbol == "Ni" { return 28 }
        else if atomicSymbol == "Cu" { return 29 }
        else if atomicSymbol == "Zn" { return 30 }
        else if atomicSymbol == "Ga" { return 31 }
        else if atomicSymbol == "Ge" { return 32 }
        else if atomicSymbol == "As" { return 33 }
        else if atomicSymbol == "Se" { return 34 }
        else if atomicSymbol == "Br" { return 35 }
        else if atomicSymbol == "Kr" { return 36 }
        
        else if atomicSymbol == "Rb" { return 37 }
        else if atomicSymbol == "Sr" { return 38 }
        else if atomicSymbol == "Y" { return 39 }
        else if atomicSymbol == "Zr" { return 40 }
        else if atomicSymbol == "Nb" { return 41 }
        else if atomicSymbol == "Mo" { return 42 }
        else if atomicSymbol == "Tc" { return 43 }
        else if atomicSymbol == "Ru" { return 44 }
        else if atomicSymbol == "Rh" { return 45 }
        else if atomicSymbol == "Pd" { return 46 }
        else if atomicSymbol == "Ag" { return 47 }
        else if atomicSymbol == "Cd" { return 48 }
        else if atomicSymbol == "In" { return 49 }
        else if atomicSymbol == "Sn" { return 50 }
        else if atomicSymbol == "Sb" { return 51 }
        else if atomicSymbol == "Te" { return 52 }
        else if atomicSymbol == "I" { return 53 }
        else if atomicSymbol == "Xe" { return 54 }
        
        else if atomicSymbol == "Cs" { return 55 }
        else if atomicSymbol == "Ba" { return 56 }
        else if atomicSymbol == "Hf" { return 72 }
        else if atomicSymbol == "Ta" { return 73 }
        else if atomicSymbol == "W" { return 74 }
        else if atomicSymbol == "Re" { return 75 }
        else if atomicSymbol == "Os" { return 76 }
        else if atomicSymbol == "Ir" { return 77 }
        else if atomicSymbol == "Pt" { return 78 }
        else if atomicSymbol == "Au" { return 79 }
        else if atomicSymbol == "Hg" { return 80 }
        else if atomicSymbol == "Tl" { return 81 }
        else if atomicSymbol == "Pb" { return 82 }
        else if atomicSymbol == "Bi" { return 83 }

        return 0
    }
    
}
