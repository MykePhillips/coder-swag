//
//  ProductCell.swift
//  Coder-Swag
//
//  Created by Myke Phillips on 10/09/2018.
//  Copyright © 2018 Myke Phillips. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    


    func updateViews(product: Product) {

        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
}
