//
//  LoginRouter.swift
//  DemoApp
//
//  Created by Derlys Hector Benito Baldeon on 13/05/24.
//

import Foundation
import UIKit

class LoginRouter{
    
    public var coordinator: LoginCoordinator?
    
    required init(coordinator: LoginCoordinator?) {
        self.coordinator = coordinator
    }
    
}

extension LoginRouter: LoginRouterProtocol{
    
    var mainStoryBoard: UIStoryboard{
        return UIStoryboard(name: "Login", bundle: Bundle.main)
    }
    
    func createLoginModule() -> UIViewController {
        guard let vc = mainStoryBoard.instantiateViewController(withIdentifier: "LoginVC")
                as? LoginViewController else { return UIViewController() }
        
        let presenter = LoginPresenter()
        
        presenter.router = self
        presenter.view = vc
        
        vc.presenter = presenter
        return vc
    }
    
    func navigateToHomeModule() {
        coordinator?.navigateHomeCoordidator()
    }
    
    
}
