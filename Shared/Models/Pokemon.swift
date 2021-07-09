//
//  Pokemon.swift
//  PokeDexF (iOS)
//
//  Created by Carlos on 6/07/21.
//

import Foundation

struct Pokemon: Codable, Identifiable {
    var id : UUID{
        get{
            UUID()
        }
    }
    let num: Int
    let name: String
    let variations: [PokemonVariation]
    let link: String
}

struct PokemonVariation: Codable {
    let name: String
    let description: String
    let image: String
    let types: [String]
    var urlImage: URL {
        get{
            URL(string: "\(baseUrl)/master/public/\(image)")!
        }
    }
}


