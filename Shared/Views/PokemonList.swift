//
//  PokemonList.swift
//  PokeDexF (iOS)
//
//  Created by Carlos on 6/07/21.
//

import SwiftUI

struct PokemonList: View {
    let pokemons:[Pokemon]
    @State var searchText : String = ""
    var body: some View {
        VStack {
            SearchBar(text: $searchText)
            List{
                ForEach(filteredPokemon){poke in
                    PokemonCard(poke:poke)
                        .listRowBackground(Color.clear)
                }
            }
        }
        
    }
    var filteredPokemon: [Pokemon]{
        get{
            if searchText.isEmpty{
                return pokemons
            }
            return pokemons.filter{
                $0.name.contains(searchText)
            }
        }
    }
}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList(pokemons: [])
    }
}
