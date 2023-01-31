//
//  PokemonView.swift
//  Pokemon-WidgetKit
//
//  Created by Mert Urhan on 31.01.2023.
//

import SwiftUI

struct PokemonView: View {
    
    let pokemon : Pokemon
    
    var body: some View {
        
        HStack{
            SpecialView(image: Image(pokemon.picName))
                .frame(width: 100, height: 100, alignment: .center)
                .padding()
            Spacer()
            VStack{
                Text(pokemon.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.yellow)
                
                Text(pokemon.type)
                    .fontWeight(.bold)
            }
            Spacer()
        }.frame(width: UIScreen.main.bounds.width, alignment: .center)
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView(pokemon: pikachu)
    }
}
