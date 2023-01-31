//
//  WidgetPokemonBundle.swift
//  WidgetPokemon
//
//  Created by Mert Urhan on 31.01.2023.
//

import WidgetKit
import SwiftUI

@main
struct WidgetPokemonBundle: WidgetBundle {
    var body: some Widget {
        WidgetPokemon()
        WidgetPokemonLiveActivity()
    }
}
