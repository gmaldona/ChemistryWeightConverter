//
//  Atom.swift
//  Weight Converter
//
//  Created by Gregory Maldonado on 2/13/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import Foundation

public class Atom {
   
    private var atomicNumber: Int
    private var atomicWeight: Double = 0.0
    private var atomicSymbol: String = ""
    
    init(atomicNumber: Int) {
        
        self.atomicNumber = atomicNumber
        getProperties()
    }
    
    public func getAtomicWeight() -> Double {
        return self.atomicWeight
    }
    
    //Atomic numbers from 1-56 and 72-83
    private func getProperties() {
        
        if atomicNumber == 1 {
            atomicWeight = 1.008
            atomicSymbol = "H"
        }
        else if atomicNumber == 2 {
            atomicWeight = 4.003
            atomicSymbol = "He"
        }
            
            
            
        else if atomicNumber == 3 {
            atomicWeight = 6.941
            atomicSymbol = "Li"
        }
        else if atomicNumber == 4 {
            atomicWeight = 9.012
            atomicSymbol = "Be"
        }
        else if atomicNumber == 5 {
            atomicWeight = 10.81
            atomicSymbol = "B"
        }
        else if atomicNumber == 6 {
            atomicWeight = 12.01
            atomicSymbol = "C"
        }
        else if atomicNumber == 7 {
            atomicWeight = 14.01
            atomicSymbol = "N"
        }
        else if atomicNumber == 8 {
            atomicWeight = 15.994
            atomicSymbol = "O"
        }
        else if atomicNumber == 9 {
            atomicWeight = 19.00
            atomicSymbol = "F"
        }
        else if atomicNumber == 10 {
            atomicWeight = 20.18
            atomicSymbol = "Ne"
        }
            
            
            
        else if atomicNumber == 11 {
            atomicWeight = 22.99
            atomicSymbol = "Na"
        }
        else if atomicNumber == 12 {
            atomicWeight = 24.31
            atomicSymbol = "Mg"
        }
        else if atomicNumber == 13 {
            atomicWeight = 26.98
            atomicSymbol = "Al"
        }
        else if atomicNumber == 14 {
            atomicWeight = 28.09
            atomicSymbol = "Si"
        }
        else if atomicNumber == 15 {
            atomicWeight = 30.97
            atomicSymbol = "P"
        }
        else if atomicNumber == 16 {
            atomicWeight = 32.06
            atomicSymbol = "S"
        }
        else if atomicNumber == 17 {
            atomicWeight = 35.45
            atomicSymbol = "Cl"
        }
        else if atomicNumber == 18 {
            atomicWeight = 39.95
            atomicSymbol = "Ar"
        }
            
            
            
        else if atomicNumber == 19 {
            atomicWeight = 39.10
            atomicSymbol = "K"
        }
        else if atomicNumber == 20 {
            atomicWeight = 40.08
            atomicSymbol = "Ca"
        }
        else if atomicNumber == 21 {
            atomicWeight = 44.96
            atomicSymbol = "Sc"
        }
        else if atomicNumber == 22 {
            atomicWeight = 47.87
            atomicSymbol = "Ti"
        }
        else if atomicNumber == 23 {
            atomicWeight = 50.94
            atomicSymbol = "V"
        }
        else if atomicNumber == 24 {
            atomicWeight = 52.00
            atomicSymbol = "Cr"
        }
        else if atomicNumber == 25 {
            atomicWeight = 54.94
            atomicSymbol = "Mn"
        }
        else if atomicNumber == 26 {
            atomicWeight = 55.85
            atomicSymbol = "Fe"
        }
        else if atomicNumber == 27 {
            atomicWeight = 58.93
            atomicSymbol = "Co"
        }
        else if atomicNumber == 28 {
            atomicWeight = 58.69
            atomicSymbol = "Ni"
        }
        else if atomicNumber == 29 {
            atomicWeight = 63.55
            atomicSymbol = "Cu"
        }
        else if atomicNumber == 30 {
            atomicWeight = 65.38
            atomicSymbol = "Zn"
        }
        else if atomicNumber == 31 {
            atomicWeight = 69.72
            atomicSymbol = "Ga"
        }
        else if atomicNumber == 32 {
            atomicWeight = 72.63
            atomicSymbol = "Ge"
        }
        else if atomicNumber == 33 {
            atomicWeight = 74.92
            atomicSymbol = "As"
        }
        else if atomicNumber == 34 {
            atomicWeight = 78.97
            atomicSymbol = "Se"
        }
        else if atomicNumber == 35 {
            atomicWeight = 79.90
            atomicSymbol = "Br"
        }
        else if atomicNumber == 36 {
            atomicWeight = 83.80
            atomicSymbol = "Kr"
        }
        
        
        
        else if atomicNumber == 37 {
            atomicWeight = 85.47
            atomicSymbol = "Rb"
        }
        else if atomicNumber == 38 {
            atomicWeight = 87.62
            atomicSymbol = "Sr"
        }
        else if atomicNumber == 39 {
            atomicWeight = 88.91
            atomicSymbol = "Y"
        }
        else if atomicNumber == 40 {
            atomicWeight = 91.22
            atomicSymbol = "Zr"
        }
        else if atomicNumber == 41 {
            atomicWeight = 92.91
            atomicSymbol = "Nb"
        }
        else if atomicNumber == 42 {
            atomicWeight = 95.95
            atomicSymbol = "Mo"
        }
        else if atomicNumber == 43 {
            atomicWeight = 98
            atomicSymbol = "Tc"
        }
        else if atomicNumber == 44 {
            atomicWeight = 101.07
            atomicSymbol = "Ru"
        }
        else if atomicNumber == 45 {
            atomicWeight = 102.91
            atomicSymbol = "Rh"
        }
        else if atomicNumber == 46 {
            atomicWeight = 106.42
            atomicSymbol = "Pd"
        }
        else if atomicNumber == 47 {
            atomicWeight = 107.87
            atomicSymbol = "Ag"
        }
        else if atomicNumber == 48 {
            atomicWeight = 65.38
            atomicSymbol = "Zn"
        }
        else if atomicNumber == 49 {
            atomicWeight = 114.82
            atomicSymbol = "In"
        }
        else if atomicNumber == 50 {
            atomicWeight = 118.71
            atomicSymbol = "Sn"
        }
        else if atomicNumber == 51 {
            atomicWeight = 121.76
            atomicSymbol = "Sb"
        }
        else if atomicNumber == 52 {
            atomicWeight = 127.60
            atomicSymbol = "Te"
        }
        else if atomicNumber == 53 {
            atomicWeight = 126.90
            atomicSymbol = "I"
        }
        else if atomicNumber == 54 {
            atomicWeight = 131.29
            atomicSymbol = "Xe"
        }
        
        
        
        else if atomicNumber == 55 {
            atomicWeight = 132.91
            atomicSymbol = "Cs"
        }
        else if atomicNumber == 56 {
            atomicWeight = 137.33
            atomicSymbol = "Ba"
        }
        else if atomicNumber == 72 {
            atomicWeight = 178.49
            atomicSymbol = "Hf"
        }
        else if atomicNumber == 73 {
            atomicWeight = 180.95
            atomicSymbol = "Ta"
        }
        else if atomicNumber == 74 {
            atomicWeight = 183.84
            atomicSymbol = "W"
        }
        else if atomicNumber == 75 {
            atomicWeight = 186.21
            atomicSymbol = "Re"
        }
        else if atomicNumber == 76 {
            atomicWeight = 190.23
            atomicSymbol = "Os"
        }
        else if atomicNumber == 77 {
            atomicWeight = 192.22
            atomicSymbol = "Ir"
        }
        else if atomicNumber == 78 {
            atomicWeight = 195.08
            atomicSymbol = "Pt"
        }
        else if atomicNumber == 79 {
            atomicWeight = 196.97
            atomicSymbol = "Au"
        }
        else if atomicNumber == 80 {
            atomicWeight = 200.59
            atomicSymbol = "Hg"
        }
        else if atomicNumber == 81 {
            atomicWeight = 204.38
            atomicSymbol = "Tl"
        }
        else if atomicNumber == 82 {
            atomicWeight = 207.2
            atomicSymbol = "Pb"
        }
        else if atomicNumber == 83 {
            atomicWeight = 208.98
            atomicSymbol = "Bi"
        }
        
    }
    
}
