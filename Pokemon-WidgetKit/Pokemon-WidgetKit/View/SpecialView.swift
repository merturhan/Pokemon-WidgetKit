//
//  SpecialView.swift
//  Pokemon-WidgetKit
//
//  Created by Mert Urhan on 31.01.2023.
//

import SwiftUI

struct SpecialView: View {
    
    var image : Image
    var body: some View {
        image.resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.orange, lineWidth: 8))
            .shadow(radius: 10)
        
    }
}

struct SpecialView_Previews: PreviewProvider {
    static var previews: some View {
        SpecialView(image: Image("pikachu"))
    }
}
