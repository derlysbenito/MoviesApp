//
//  HomeCollectionViewCell.swift
//  DemoApp
//
//  Created by Derlys Hector Benito Baldeon on 13/05/24.
//

import Foundation
import UIKit
import SDWebImage

protocol HomeCollectionViewCellActionDelegate: AnyObject{
    func didSelectCell(model: ResultsResponse?)
}

class HomeCollectionViewCell: UICollectionViewCell{
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    weak var delegate : HomeCollectionViewCellActionDelegate?
    
    var movieModel: ResultsResponse?
    
    //MARK: - Data
    
    public func fillCell(item: ResultsResponse){
        movieModel = item
        
        guard let imageURL = movieModel?.imageMovie else { return }
        movieImageView.sd_setImage(with: URL(string: "https://image.tmdb.org/t/p/w500\(imageURL)"))
        movieTitleLabel.text = movieModel?.title
        
    }
    
    //MARK: - IBAction
    
    @IBAction func selectCell(_ sender: Any) {
        delegate?.didSelectCell(model: movieModel)
    }
    
}
