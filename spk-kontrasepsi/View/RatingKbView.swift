//
//  RatingKbView.swift
//  spk-kontrasepsi
//
//  Created by Devfx on 31/07/20.
//  Copyright © 2020 Devfx. All rights reserved.
//

import SwiftUI

struct RatingKbView: View {
    
    var kontrasepsi : KontrasepsiModel
    var body: some View {
//Rate Alat
        HStack(alignment: .center, spacing: 5){
            ForEach(1...(kontrasepsi.rating),id: \.self){ _ in
                Image(systemName: "star.fill")
          .font(.body)
          .foregroundColor(Color.blue)
  }
  
}
    }
}

struct RatingKbView_Previews: PreviewProvider {
    static var previews: some View {
        RatingKbView(kontrasepsi: kontrasepsiData[0])
    }
}
