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
            Image("pikachu").resizable()
                .frame(width: 100, height: 100, alignment: .center)
            
            Image("charmander").resizable()
                .frame(width: 100, height: 100, alignment: .center)
            
            Image("clefairy").resizable()
                .frame(width: 100, height: 100, alignment: .center)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
