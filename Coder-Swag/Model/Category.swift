//
//  Category.swift
//  Coder-Swag
//
//  Created by Myke Phillips on 09/09/2018.
//  Copyright © 2018 Myke Phillips. All rights reserved.
//

import Foundation

struct Category {


    private(set) public var title: String
    private(set) public var imageName: String

    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }


}
