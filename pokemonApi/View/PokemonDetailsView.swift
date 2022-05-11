//
//  PokemonDetailsView.swift
//  pokemonApi
//
//  Created by Mickael Lutin on 10/05/2022.
//

import SwiftUI
import Kingfisher

struct PokemonDetailsView: View {
    let pokemon: Pokemons

    var body: some View {
        VStack {
            Spacer()
            Text(pokemon.name.capitalized)
                .font(.largeTitle)
                .bold()
            KFImage(URL(string: pokemon.imageUrl))
                .resizable()
                .frame(width: 170, height: 170)
                .shadow(color: Color.gray, radius: 6, x: 10, y: 10)
            Text(pokemon.type.uppercased())
                .font(.title2)
                .foregroundColor(Color.black)
                .padding(10)
                .background(Color(pokemon.pokemonTypeColor))
                .cornerRadius(15)
            HStack(spacing: 25) {
                DetailsPokemonView(value: pokemon.weight, color: .blue, text: "Weight")
                DetailsPokemonView(value: pokemon.height, color: .red, text: "Height")
                DetailsPokemonView(value: pokemon.attack, color: .yellow, text: "Attack")
                DetailsPokemonView(value: pokemon.defense, color: .green, text: "Defense")
            }
            Divider()
            Text(pokemon.description)
                .padding(20)
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct PokemonDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailsView(pokemon: POKEMON_INIT_DATAS[0])
    }
}
