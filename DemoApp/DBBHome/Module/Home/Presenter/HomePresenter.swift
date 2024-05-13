//
//  HomePresenter.swift
//  DemoApp
//
//  Created by Derlys Hector Benito Baldeon on 13/05/24.
//

import Foundation

class HomePresenter{
    
    var router: HomeRouterProtocol?
    var interactor: HomeInteractorProtocol?
    weak var view: HomeViewProtocol?
}

extension HomePresenter: HomePresenterProtocol{
    
}
