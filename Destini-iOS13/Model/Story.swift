//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
// Edited by Opeoluwa Williams

import Foundation

struct Story{
    let title: String
    
    let choice1: String
    
    let choice2: String
    
    let choice1Destination: Int
    
    let choice2Destination: Int
    
    init(t: String, c1: String, c1D: Int, c2: String, c2D: Int){
        title = t
        choice1 = c1
        choice1Destination = c1D
        choice2 = c2
        choice2Destination = c2D
    }
}
