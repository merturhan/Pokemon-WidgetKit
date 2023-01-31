//
//  WidgetPokemon.swift
//  WidgetPokemon
//
//  Created by Mert Urhan on 31.01.2023.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    
    @AppStorage("pokemon", store: UserDefaults(suiteName: "group.merturhan.Pokemon-WidgetKit"))
    var pokemonData : Data = Data()
    
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent(), pokemon: Pokemon(picName: "pikachu", name: "Pikachu", type: "Mouse Pokemon"))
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        
        if let pokemon = try? JSONDecoder().decode(Pokemon.self, from: pokemonData){
            
            let entry = SimpleEntry(date: Date(), configuration: configuration , pokemon: pokemon)
            completion(entry)
        }
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        
        if let pokemon = try? JSONDecoder().decode(Pokemon.self, from: pokemonData){
            
            let entry = SimpleEntry(date: Date(), configuration: configuration , pokemon: pokemon)
            let timeline = Timeline(entries: [entry], policy: .never)
            completion(timeline)
        }
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
    let pokemon : Pokemon
}

struct WidgetPokemonEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        
        SpecialView(image: Image(entry.pokemon.picName))
    }
}

struct WidgetPokemon: Widget {
    let kind: String = "WidgetPokemon"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            WidgetPokemonEntryView(entry: entry)
        }
        .configurationDisplayName("Widget options")
        .description("This is an example widget view.")
    }
}

