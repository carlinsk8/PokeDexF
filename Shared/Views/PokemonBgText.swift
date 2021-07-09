//
//  PokemonBgText.swift
//  PokeDexF (iOS)
//
//  Created by Carlos on 7/07/21.
//

import SwiftUI

struct PokemonBgText: View {
    let name : String
    var body: some View {
        Text(name)
            .font(.system(size: 20))
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .padding()
    }
}

struct PokemonBgText_Previews: PreviewProvider {
    static var previews: some View {
        PokemonBgText(name: "Pikchu")
    }
}
