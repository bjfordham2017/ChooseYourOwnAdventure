//
//  character.swift
//  Wk4Day1
//
//  Created by Brent Fordham on 4/18/17.
//  Copyright © 2017 Brent Fordham. All rights reserved.
//

import Foundation

class CharacterType : CustomStringConvertible {
    var firstName: String
    var lastName: String
    var specialSkill: Talent = .none
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    var description: String {
        return fullName
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    
}

enum Talent {
    case martialArts
    case magic
    case persuasion
    case none
    
}

class Fighter: CharacterType {
    override init(firstName: String, lastName: String) {
        super.init(firstName: firstName, lastName: lastName)
        self.specialSkill = .martialArts
    }
}

class Magician: CharacterType {
    override init(firstName: String, lastName: String) {
        super.init(firstName: firstName, lastName: lastName)
        self.specialSkill = .magic
    }

}

class SmoothTalker: CharacterType {
    override init(firstName: String, lastName: String) {
        super.init(firstName: firstName, lastName: lastName)
        self.specialSkill = .magic
    }
}

func classChoice() -> CharacterType {
    let prompt = getChoiceFromUser(prompt: "Are you a student of the art of combat, of persuasion, or of magic?", choices: ["Combat", "Persuasion", "Magic"])
    switch prompt {
        case "Combat":
            return Fighter(firstName: firstName, lastName: lastName)
        case "Persuasion":
            return SmoothTalker(firstName: firstName, lastName: lastName)
        case "Magic":
            return Magician(firstName: firstName, lastName: lastName)
        default:
            return CharacterType(firstName: firstName, lastName: lastName)
        }
}
