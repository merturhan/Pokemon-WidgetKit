//
//  Pokemon.swift
//  Pokemon-WidgetKit
//
//  Created by Mert Urhan on 31.01.2023.
//

import Foundation

struct Pokemon : Identifiable, Codable {
    
    let picName : String
    let name : String
    let type : String
    
    var id : String{
        picName
    }
}

let pikachu = Pokemon(picName: "pikachu", name: "Pikachu", type: "Mouse Pokemon")
let charmander = Pokemon(picName: "charmander", name: "Charmander", type: "Lizard Pokemon")
let clefairy = Pokemon(picName: "clefairy", name: "Clefairy", type: "Fairy Pokemon")

let pokemonArray = [pikachu, charmander, clefairy]
