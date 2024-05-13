//
//  HomeInteractor.swift
//  DemoApp
//
//  Created by Derlys Hector Benito Baldeon on 13/05/24.
//

import Foundation

class HomeInteractor{
    
    let dataSource : DataSource?
    
    required init(dataSource: DataSource) {
        self.dataSource = dataSource
    }
    
}

extension HomeInteractor: HomeInteractorProtocol{
    func getMovies(page: Int, onCompletion: @escaping MoviesResultError) {
        dataSource?.getMovieUpcoming(page: page, callbackHandler: { response in
            onCompletion(response)
        })
    }
}
