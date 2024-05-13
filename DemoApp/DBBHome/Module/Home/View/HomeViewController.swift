//
//  HomeViewController.swift
//  DemoApp
//
//  Created by Derlys Hector Benito Baldeon on 13/05/24.
//

import Foundation
import UIKit

class HomeViewController: UIViewController{
    
    var presenter: HomePresenterProtocol?

    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        
        presenter?.viewDidLoad()

        setupCollectionView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    //MARK: - SetupCollectionView
    
    private func setupCollectionView(){
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false

    }
    
    //MARK: - Navigation Bar
    
    private func setupNavigationBar(){
        self.title = "Películas"
    }
    
}

//MARK: - HomeViewProtocol

extension HomeViewController: HomeViewProtocol{
    func reloadCollectionView() {
        collectionView.reloadData()
    }
    
    
}
