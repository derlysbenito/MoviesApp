//
//  DataSource.swift
//  DemoApp
//
//  Created by Derlys Hector Benito Baldeon on 13/05/24.
//

import Foundation
import Alamofire

typealias MoviesResultError = (DataResponse<MainResponse, AFError>) -> Void

final class DataSource{
    
    static let shared = DataSource()
    
    func getMovieUpcoming(callbackHandler: @escaping MoviesResultError){
        AF.request("https://api.themoviedb.org/3/movie/upcoming?page=1&api_key=f46b58478f489737ad5a4651a4b25079", method: .get).responseDecodable(of: MainResponse.self) { (response) in
            callbackHandler(response)
        }
    }
    
}
