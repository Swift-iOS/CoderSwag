//
//  CategoryCell.swift
//  CoderSwag
//
//  Created by Lance Robbins on 1/2/18.
//  Copyright © 2018 Appcation. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
