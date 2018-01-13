//
//  ProductsVC.swift
//  CoderSwag
//
//  Created by Lance Robbins on 1/10/18.
//  Copyright © 2018 Appcation. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
    @IBOutlet weak var productsCollection: UICollectionView!


    override func viewDidLoad() {
        super.viewDidLoad()

        productsCollection.dataSource = self
        productsCollection.delegate = self

    }
    
    private(set) public var products = [Product]()
    
    func initProducts(category: Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        // updates nav bar title
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            
            let myProduct = products[indexPath.row]
            cell.updateViews(product: myProduct)
            return cell
        }
        return ProductCell()
    }
    

    

}
