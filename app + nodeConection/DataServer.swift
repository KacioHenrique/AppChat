//
//  DataServer.swift
//  app + nodeConection
//
//  Created by kacio henrique couto batista on 20/02/19.
//  Copyright © 2019 kacio henrique couto batista. All rights reserved.
//

import Foundation

struct Messagem:Codable{
    let text:String
    let author:String
    let color:String
//    init(text:String,author:String,color:String){
//        self.text = text
//        self.author = author
//        self.color = color
//    }
}
struct TryObjectJson:Codable{
    var type:String
    var data:[Messagem]
}
struct TryObjectJsonRota2:Codable{
    var type:String
    var data:Messagem
}
