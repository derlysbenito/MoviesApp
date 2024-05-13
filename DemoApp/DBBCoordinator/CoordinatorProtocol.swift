//
//  CoordinatorProtocol.swift
//  DemoApp
//
//  Created by Derlys Hector Benito Baldeon on 13/05/24.
//

import Foundation

public protocol CoordinatorProtocol{
    var presenter : MainPresenterProtocol? { get set }
    func start()
    
}
