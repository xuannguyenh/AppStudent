//
//  JsonCellCollection.swift
//  StudentApp
//
//  Created by Apple on 8/2/21.
//

import Foundation

struct AppStudent: Codable {
    var SlideShow:[SlideShow]
}


struct SlideShow: Codable {
    var Id : String
    var TitleHeader: String
    var news :[New]
    var DescriptionHeader: String
}

struct New: Codable {
    var Id: String
    var Title: String
    var Price: String
    var SellPrice: String
    var Heart: String
    var Cover: String
    //var Detail: [Detail]
}
