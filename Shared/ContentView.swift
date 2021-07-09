//
//  ContentView.swift
//  Shared
//
//  Created by Carlos on 6/07/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var pokemonVM = PokemonViewModel()
    
    @State var searchText : String = ""
    
    var body: some View {
        NavigationView {
            
            PokemonList(pokemons: pokemonVM.pokemons)
                .navigationTitle("Pokemons")
            
                
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
