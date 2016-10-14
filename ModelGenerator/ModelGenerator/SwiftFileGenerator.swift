//
//  SwiftFileGenerator.swift
//  ModelGenerator
//
//  Created by Yang Ye on 10/13/16.
//  Copyright © 2016 YY. All rights reserved.
//

import Foundation

class SwiftFileGenerator {
    var className: String
    var author: String?
    var inputJSON: String?

    init(className:String, inputJSON: String) {
        self.className = className
        self.inputJSON = inputJSON
    }
}
