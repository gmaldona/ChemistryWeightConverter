//
//  CharacterDetection.swift
//  Weight Converter
//
//  Created by Gregory Maldonado on 2/13/20.
//  Copyright © 2020 Gregory Maldonado. All rights reserved.
//

import Foundation

//The CharacterDetection class takes a character in as an inital value and can check to see if the character is a uppercase, lowercase or digit
public class CharacterDetection {
    
    private var character: Character
    
    private let uppercaseLetters: [Character] = [
        "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q",
        "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
    ]
    
    private let lowercaseLetters: [Character] = [
        "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q",
        "r", "s", "t", "u", "v", "w", "x", "y", "z"
    ]
    
    private let digits: [Character] = [
        "1", "2", "3", "4", "5", "6", "7", "8", "9", "0"
    ]
    
    
    init(character: Character) {
        
        self.character = character
        
    }
    
    //Function that checks to see if the character is an uppercase letter
    public func isUpperCase() -> Bool {
        return self.uppercaseLetters.contains(character)
    }
    
    //Function that checks to see if the character is a lowercase letter
    public func isLowerCase() -> Bool {
        return self.lowercaseLetters.contains(character)
    }
    
    //Function that checks to see if the character is a digit
    public func isDigit() -> Bool {
        return self.digits.contains(character)
    }
    
    public func get() -> String {
        return String(character)
    }
}
