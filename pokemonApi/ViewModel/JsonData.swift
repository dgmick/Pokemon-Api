//
//  JsonData.swift
//  pokemonApi
//
//  Created by Mickael Lutin on 09/05/2022.
//

import SwiftUI

class JsonData: ObservableObject {
    @Published var pokemon = [Pokemons]()
    
    init() {
        getPokemons()
    }
    
    func getPokemons() {
        guard let url = URL(string: "https://pokedex-bb36f.firebaseio.com/pokemon.json") else { return }
 
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data?.parseData(removeString: "null,"), error == nil else { return }
            
            guard let pokemon = try? JSONDecoder().decode([Pokemons].self, from: data) else { return }
            
            DispatchQueue.main.async {
                self.pokemon = pokemon
            }
            
        }.resume()
    }
}

extension Data {
    func parseData(removeString string: String) -> Data? {
        let dataAsString = String(data: self, encoding: .utf8)
        let parsedDataString = dataAsString?.replacingOccurrences(of: string, with: "")
        guard let data = parsedDataString?.data(using: .utf8) else { return nil}
        
        return data
    }
}
