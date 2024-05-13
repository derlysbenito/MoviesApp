//
//  LoginProtocol.swift
//  DemoApp
//
//  Created by Derlys Hector Benito Baldeon on 13/05/24.
//

import Foundation
import UIKit

protocol LoginRouterProtocol: AnyObject{
    func createLoginModule() -> UIViewController
    
    func navigateToHomeModule()
}

protocol LoginPresenterProtocol: AnyObject{
    var router: LoginRouterProtocol? { get set }
    var interactor: LoginInteractorProtocol? { get set }
    var view: LoginViewProtocol? { get set }
    
    func goToHomeModule()
}

protocol LoginInteractorProtocol: AnyObject{
    
}

protocol LoginViewProtocol: AnyObject{
    var presenter : LoginPresenterProtocol? { get set }
}
