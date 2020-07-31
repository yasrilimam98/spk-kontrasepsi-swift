//
//  FactModel.swift
//  spk-kontrasepsi
//
//  Created by Devfx on 30/07/20.
//  Copyright © 2020 Devfx. All rights reserved.
//

import SwiftUI

struct Fact: Identifiable{
    var id = UUID()
    var image: String
    var content:String
  
}

let factdata: [Fact] = [
Fact(
    image: "safira1",
    content: "Kontrasepsi adalah alat untuk menunda kehamilan"),
Fact(
image: "safira",
content: "Dengan melakukan kontrasepsi dapat mecegah populasi yang meningkat"),
Fact(
    image: "safira1",
    content: "Kontrasepsi adalah alat untuk menunda kehamilan"),
Fact(
image: "safira",
content: "Dengan melakukan kontrasepsi dapat mecegah populasi yang meningkat"),

]
