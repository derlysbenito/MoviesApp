//
//  HomeRouter.swift
//  DemoApp
//
//  Created by Derlys Hector Benito Baldeon on 13/05/24.
//

import Foundation
import UIKit

class HomeRouter{
    
    public var coordinator: HomeCoordinator?
    
    required init(coordinator: HomeCoordinator?) {
        self.coordinator = coordinator
    }
    
}

extension HomeRouter: HomeRouterProtocol{
    
    var mainStoryBoard: UIStoryboard{
        return UIStoryboard(name: "Home", bundle: Bundle.main)
    }
    
    func createHomeModule() -> UIViewController {
        guard let vc = mainStoryBoard.instantiateViewController(withIdentifier: "HomeVC")
                as? HomeViewController else { return UIViewController() }
        
        let presenter = HomePresenter()
        
        presenter.router = self
        presenter.view = vc
        
        vc.presenter = presenter
        return vc
    }
    
    
}