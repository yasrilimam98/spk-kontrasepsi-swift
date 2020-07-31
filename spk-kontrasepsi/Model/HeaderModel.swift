//
//  HeaderModel.swift
//  spk-kontrasepsi
//
//  Created by Devfx on 30/07/20.
//  Copyright © 2020 Devfx. All rights reserved.
//

import SwiftUI

struct Header: Identifiable{
    var id = UUID()
    var image: String
    var headline:String
    var subline:String
}

let headerData: [Header] = [
    
Header(
    image: "IUD", headline: "IUD / AKDR", subline: "Alat kontrasepsi dalam rahim merupakan kontrasepsi non-hormonal yang dipasang dalam rahim"),
Header(
    image: "pilkb", headline: "PIL KB", subline: "Pil progestin merupakan salah satu alat kontrasepsi berbentuk pil"),
Header(
    image: "implan", headline: "Implant", subline: "Pil progestin merupakan salah satu alat kontrasepsi berbentuk pil"),
Header(
    image: "suntikkb", headline: "Injeksi / Suntik", subline: "Metode kontrasepsi injeksi yang diberikan secara intramuscular"),
Header(
    image: "kontap", headline: "Kontap", subline: "metode kontrasepsi yang dilakukan dengan cara mengikat atau memotong saluran telur (pada wanita)"),

Header(
    image: "kondom", headline: "Kondom", subline: "Alat kontrasepsi atau alat untuk mencegah kehamilan atau penularan penyakit kelamin pada saat bersanggama")
]
