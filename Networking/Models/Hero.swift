//
//  Hero.swift
//  Networking
//
//  Created by Dmitry Polyakov on 28.01.2023.
//

struct Result: Decodable {
    let result: Data
}

struct Data: Decodable {
    let data: HeroList
}

struct HeroList: Decodable {
    let heroes: [Hero]
}

struct Hero: Decodable {
    let id: Int
    let name: String
    let name_english_loc: String
    let primary_attr: Int
    let complexity: Int
}
