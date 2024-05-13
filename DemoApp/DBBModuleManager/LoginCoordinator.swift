//
//  LoginCoordinator.swift
//  DemoApp
//
//  Created by Derlys Hector Benito Baldeon on 13/05/24.
//

import Foundation

class LoginCoordinator: LoginCoordinatorProtocol{
    
    var presenter: MainPresenterProtocol?
    
    required init(presenter: MainPresenterProtocol?) {
        self.presenter = presenter
    }
    
    func start() {
        
    }
    
    func presentLoginModule() {
        let vc = LoginRouter(coordinator: self).createLoginModule()
        presenter?.setViewControllers(viewControllers: [vc], animated: false)
    }
    
    func navigateHomeCoordidator() {
        let coordinator = HomeCoordinator(presenter: self.presenter)
        coordinator.presentHomeModule()
    }
    
}
