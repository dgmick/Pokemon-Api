//
//  DetailsPokemonView.swift
//  pokemonApi
//
//  Created by Mickael Lutin on 10/05/2022.
//

import SwiftUI

struct DetailsPokemonView: View {
    let value: Int
    let color: UIColor
    let text: String

    var body: some View {
        VStack {
            Text("\(value)")
                .padding()
                .background(Color(color))
                .frame(height: 50)
                .cornerRadius(50)
                .foregroundColor(Color.black)
            Text(text)
        }
    }
}

struct DetailsPokemonView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsPokemonView(value: 12, color: .red, text: "Weight")
    }
}
