//
//  Type.swift
//  PageControlSwiftUI
//
//  Created by Giresh Dora on 07/06/20.
//  Copyright © 2020 Giresh. All rights reserved.
//

import SwiftUI


struct Type : Identifiable {
    
    var id : Int
    var name : String
    var cName : String
    var price : String
    var image : String
}

var items = [

    Type(id: 0, name: "Soba Noodles", cName: "Chinese", price: "$25",image: "soba"),
    
    Type(id: 1, name: "Rice Stick Noodles", cName: "Italian", price: "$18",image: "rice"),
    
    Type(id: 2, name: "Hokkien Noodles", cName: "Chinese", price: "$55",image: "hokkien"),
    
    Type(id: 3, name: "Mung Bean Noodles", cName: "Chinese", price: "$29",image: "bean"),
    
    Type(id: 4, name: "Udon Noodles", cName: "Chinese", price: "$15",image: "udon")
]
