//
//  ApiService.swift
//  PokeDexF (iOS)
//
//  Created by Carlos on 6/07/21.
//

import Foundation

let baseUrl: String = "https://raw.githubusercontent.com/robert-z/simple-pokemon-json-api"

class AppiService {
    
    func fetchPokemons(completion: @escaping ([Pokemon]) -> ()){
        
        let url: URL = URL(string:"\(baseUrl)/master/data/pokemon.json")!
        
        URLSession.shared.dataTask(with: url){data, _, _ in
            guard let data = data else { return }
            
            DispatchQueue.main.async {
                let pokemon = try! JSONDecoder().decode([Pokemon].self, from: data)
                
                completion(pokemon)
            }
        }.resume()
    }
}
