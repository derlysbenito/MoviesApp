//
//  HomeCollectionViewCell.swift
//  DemoApp
//
//  Created by Derlys Hector Benito Baldeon on 13/05/24.
//

import Foundation
import UIKit
import SDWebImage

class HomeCollectionViewCell: UICollectionViewCell{
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    public func fillCell(item: ResultsResponse){
        movieTitleLabel.text = item.title
        guard let imageURL = item.imageMovie else { return }
        movieImageView.sd_setImage(with: URL(string: "https://image.tmdb.org/t/p/w500\(imageURL)"))
        
    }
    
}
