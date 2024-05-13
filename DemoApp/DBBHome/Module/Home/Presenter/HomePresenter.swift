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
    
    private var moviesList = [ResultsResponse]()
}

extension HomePresenter: HomePresenterProtocol{
    
    //MARK: - Life Cycle
    
    func viewDidLoad(){
        doGetMovies()
    }
    
    //MARK: - Navigation
    
    func goToDetailModule(movie: ResultsResponse?) {
        router?.navigateToDetailModule(movie: movie)
    }
    
    //MARK: - Data
    
    func doGetMovies() {
        interactor?.getMovies(onCompletion: { [weak self] response in
            switch response.result{
            case .success(let dataInfo):
                if let data = dataInfo.results{
                    print(data)
                    self?.moviesList = data
                    self?.dogetMoviesSuccess()
                }
            case .failure(let error):
                print(error.localizedDescription)
                self?.doGetMoviesError()
            }
        })
    }
    
    func dogetMoviesSuccess() {
        view?.reloadCollectionView()
    }
    
    func doGetMoviesError() {
        
    }
    
    //MARK: - UICollectionView
    
    func numberOfRows() -> Int {
        return moviesList.count 
    }
    
    func movieItem(section: Int, index: Int) -> ResultsResponse {
        return moviesList[index]
    }
    
}
