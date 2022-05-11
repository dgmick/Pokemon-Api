//
//  Pokemons.swift
//  pokemonApi
//
//  Created by Mickael Lutin on 09/05/2022.
//

import Foundation
import UIKit

struct Pokemons: Codable {
    var id: Int
    var name: String
    var imageUrl: String
    var type: String
    var description: String
    var weight: Int
    var height: Int
    var attack: Int
    var defense: Int
    
    var pokemonTypeColor: UIColor {
        switch type {
        case "fire": return .systemRed
        case "normal": return .systemGray
        case "water": return .blue
        case "grass": return .systemGreen
        case "electric": return .systemYellow
        case "ice": return .systemBlue
        case "fighting": return .systemBrown
        case "poison": return .systemOrange
        case "ground": return .systemMint
        case "flying": return .systemGray2
        case "psychic": return .systemPurple
        case "bug": return .secondaryLabel
        case "rock": return .systemCyan
        case "gosht": return .systemIndigo
        case "dragon": return .systemFill
        case "steel": return .systemTeal
        case "fairy": return .systemPink
        default: return .white
        }
    }
}

struct Evolution: Decodable {
    var id: Int
    var name: String
}

let EVOLUTION_INIT_DATA: [Evolution] = [
    .init(
        id: 2,
        name: "venusaur"
    )
]

let POKEMON_INIT_DATAS: [Pokemons] = [
    .init(
        id: 1,
        name: "pikachu",
        imageUrl: "https://firebasestorage.googleapis.com/v0/b/pokedex-bb36f.appspot.com/o/pokemon_images%2F2CF15848-AAF9-49C0-90E4-28DC78F60A78?alt=media&token=15ecd49b-89ff-46d6-be0f-1812c948e334",
        type: "fire",
        description: "Squirtle’s shell is not merely used for protection. The shell’s rounded shape and the grooves on its surface help minimize resistance in water, enabling this Pokémon to swim at high speeds.",
        weight: 23,
        height: 34,
        attack: 100,
        defense: 50
    )
]
