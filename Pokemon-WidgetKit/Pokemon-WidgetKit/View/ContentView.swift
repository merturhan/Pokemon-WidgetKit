//
//  ContentView.swift
//  Pokemon-WidgetKit
//
//  Created by Mert Urhan on 31.01.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            ForEach(pokemonArray) { pokemon in
                PokemonView(pokemon: pokemon)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
