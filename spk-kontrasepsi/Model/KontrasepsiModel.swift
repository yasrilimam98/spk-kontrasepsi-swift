//
//  KontrasepsiModel.swift
//  spk-kontrasepsi
//
//  Created by Devfx on 29/07/20.
//  Copyright © 2020 Devfx. All rights reserved.
//

import Foundation
struct KontrasepsiModel : Identifiable {
    
    let id: Int
    let namaAlat: String
    let fotoAlat: String
    let jenisAlat: String
    let kelasAlat: String
    
    init(id: Int, namaalat: String, fotoalat: String, jenisalat: String, kelasalat: String) {
        
        self.id = id
        self.namaAlat = namaalat
        self.fotoAlat = fotoalat
        self.jenisAlat = jenisalat
        self.kelasAlat = kelasalat
    }
    
}
