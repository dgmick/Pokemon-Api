//
//  ContentView.swift
//  pokemonApi
//
//  Created by Mickael Lutin on 08/05/2022.
//

import SwiftUI

struct ContentView: View {
    private let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    
    @ObservedObject var viewModel = JsonData()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 25) {
                    ForEach(viewModel.pokemon, id: \.id) { pokemon in
                        PokemonCardView(pokemon: pokemon)
                    }

                }
            }.navigationTitle("Pokemon")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
