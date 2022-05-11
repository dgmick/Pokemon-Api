//
//  PokemonCardView.swift
//  pokemonApi
//
//  Created by Mickael Lutin on 08/05/2022.
//

import SwiftUI
import Kingfisher

struct PokemonCardView: View {
    let pokemon: Pokemons
    
    var body: some View {
        NavigationLink(
            destination: PokemonDetailsView(pokemon: pokemon)
        ) {
            VStack {
                Text(pokemon.name.uppercased())
                    .bold()
                    .padding(.top, 5)
                    .foregroundColor(Color.black)
                KFImage(URL(string: pokemon.imageUrl))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                Text(pokemon.type.capitalized)
                    .bold()
                    .frame(width: 100, height: 50)
                    .foregroundColor(Color.black)
                    .background(Color.white)
                    .cornerRadius(15)
            }
            .padding(30)
            .background(Color(pokemon.pokemonTypeColor))
            .cornerRadius(15)
            .shadow(color: Color(pokemon.pokemonTypeColor), radius: 6, x: 0, y: 0)
        }
    }
}

struct PokemonCardView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCardView(pokemon: POKEMON_INIT_DATAS[0])
    }
}
