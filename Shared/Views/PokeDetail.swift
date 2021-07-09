//
//  PokeDetail.swift
//  PokeDexF (iOS)
//
//  Created by Carlos on 8/07/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct PokeDetail: View {
    let poke : Pokemon
    var body: some View {
        let pokeVr = poke.variations[0]
        VStack(spacing:20){
            WebImage(url:pokeVr.urlImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(pokeVr.name)
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .shadow(radius: 20)
            
            Text(pokeVr.description)
                .font(.caption)
                .multilineTextAlignment(.center)
                .padding()
            
            HStack{
                ForEach(pokeVr.types, id: \.self){ type in
                    Text(type)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                }
            }
            
            Link("Visit this pokemon", destination: URL(string: poke.link)!)
        }
    }
}

struct PokeDetail_Previews: PreviewProvider {
    static var previews: some View {
        PokeDetail(poke: Pokemon(num: 1, name: "Pikachu", variations: [], link: ""))
    }
}
