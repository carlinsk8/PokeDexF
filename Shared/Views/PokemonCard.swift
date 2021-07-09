//
//  PokemonCard.swift
//  PokeDexF (iOS)
//
//  Created by Carlos on 6/07/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct PokemonCard: View {
    let poke : Pokemon
    var body: some View {
        ZStack(alignment: .bottom) {
            NavigationLink(
                destination: PokeDetail(poke:poke)){
                EmptyView()
            }
            WebImage(url: poke.variations[0].urlImage)
                .resizable()
                .placeholder {
                        Rectangle().foregroundColor(.gray)
                }
                .indicator(.activity)
                .transition(.fade(duration: 0.5))
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .shadow(radius: 10)
            
            PokemonBgText(name: poke.name)
                .background(Color.gray.opacity(0.8))
                .cornerRadius(10)
                .foregroundColor(.white)
                .offset(x: 0, y: -30)
            

            
        }
    }
}

struct PokemonCard_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCard(poke:Pokemon(num: 1, name: "Pikachu", variations: [], link: "") )
    }
}
