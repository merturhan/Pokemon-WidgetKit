//
//  ContentView.swift
//  Pokemon-WidgetKit
//
//  Created by Mert Urhan on 31.01.2023.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("pokemon", store: UserDefaults(suiteName: "group.merturhan.Pokemon-WidgetKit"))
    var pokemonData : Data = Data()
    
    var body: some View {
        VStack{
            ForEach(pokemonArray) { pokemon in
                PokemonView(pokemon: pokemon).onTapGesture(perform: {
                    userDefaultsSave(pokemon: pokemon)
                })
            }
        }
    }
    
    func userDefaultsSave(pokemon : Pokemon) {
        
        if let pokemonData = try?
            JSONEncoder().encode(pokemon){
            self.pokemonData = pokemonData
            print(pokemon.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
