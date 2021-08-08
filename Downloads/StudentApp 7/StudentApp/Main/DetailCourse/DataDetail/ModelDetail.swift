//
//  ModelDetail.swift
//  StudentApp
//
//  Created by Apple on 8/7/21.
//

import Foundation

struct Detail: Codable {
    var Id: String
    var Title: String
    var Price: String
    var SellPrice: String
//    var Heart: Int // Heart is string not Int
    var Heart: String
    var Cover: String
//    var DetailTitle: String // this variable is not exist
    var DescriptionTitle: String
    var Time: String
    var Play: Int
    var RateStar: Int
//    var CreatTime: Int // CreatTime is string, not Int
    var CreatTime: String
    var ContentCourse: String
    var ThumNail: String
    var Name: String
    var Star: Int
    var ThumPlay: Int
    var People: Int
    var ContenDetail: String
}
