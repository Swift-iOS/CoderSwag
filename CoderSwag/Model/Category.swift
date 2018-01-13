//
//  Category.swift
//  CoderSwag
//
//  Created by Lance Robbins on 1/2/18.
//  Copyright © 2018 Appcation. All rights reserved.
//

import Foundation

struct Category {
    // can't set them from VCs, can retrieve and use them, but that's it
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
