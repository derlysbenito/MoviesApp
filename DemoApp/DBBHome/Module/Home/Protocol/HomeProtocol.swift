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
    
}

protocol HomeInteractorProtocol: AnyObject{
    
}

protocol HomeViewProtocol: AnyObject{
    var presenter: HomePresenterProtocol? { get set }
}

