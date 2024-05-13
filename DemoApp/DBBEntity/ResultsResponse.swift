//
//  ResultsResponse.swift
//  DemoApp
//
//  Created by Derlys Hector Benito Baldeon on 13/05/24.
//

import Foundation

struct ResultsResponse: Codable{
    let title: String?
    let imageMovie: String?
    
    enum CodingKeys: String, CodingKey {
        case title
        case imageMovie = "backdrop_path"
    }
}
