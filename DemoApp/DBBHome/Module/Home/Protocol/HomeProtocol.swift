//
//  HomeProtocol.swift
//  DemoApp
//
//  Created by Derlys Hector Benito Baldeon on 13/05/24.
//

import Foundation
import UIKit

protocol HomeRouterProtocol: AnyObject{
    func createHomeModule() -> UIViewController
}

protocol HomePresenterProtocol: AnyObject{
    var router : HomeRouterProtocol? { get set }
    var interactor : HomeInteractorProtocol? { get set }
    var view : HomeViewProtocol? { get set }
    
    func viewDidLoad()
    
    func doGetMovies()
    func dogetMoviesSuccess()
    func doGetMoviesError()
    
    func numberOfRows() -> Int
    func movieItem(section: Int, index: Int) -> ResultsResponse
    
}

protocol HomeInteractorProtocol: AnyObject{
    func getMovies(onCompletion: @escaping MoviesResultError)
}

protocol HomeViewProtocol: AnyObject{
    var presenter: HomePresenterProtocol? { get set }
    
    func reloadCollectionView()
}

