//
//  Dataheader.swift
//  StudentApp
//
//  Created by Apple on 7/27/21.
//

import Foundation

class  DataHeader {
    static var  share =  DataHeader()
    
    var header:[Header]
    init() {
        let program = Header(id: "1", lableName: "Chương Trình", description: "Nâng cao kỹ năng cá nhân")
        let suggest = Header(id: "2", lableName: "Gợi ý", description: "cho bạn")
        let digital = Header(id: "3", lableName: "Digital Marketing 101", description: "Tất cả những gì bạn cần biết để trở thành degital marketing chuyên nghiệp")
        let populat = Header(id: "4", lableName: "Phổ biến nhất", description: "Xu hướng học tập cảu thời đại")
        let teacher = Header(id: "5", lableName: "Giảng viên tiêu biêủ", description: "Đội ngũ giảng viên hàng đầu Việt Nam")
        
        header = [program, suggest, digital, populat, teacher]
    
    }
}
