//
//  Recipe.swift
//  VeryCreative
//
//  Created by KEPLEY, MATTHEW O. on 4/10/24.
//

import Foundation
import SwiftData

@Model
final class Recipe {
    var title: String
    var isVegan: Bool
    var desc: String
    
    
    init(title: String = "",
         isVegan: Bool = false,
         desc: String = ""){
        self.title = title
        self.isVegan = isVegan
        self.desc = desc
    }
}
