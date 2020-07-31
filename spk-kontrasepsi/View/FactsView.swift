//
//  FactsView.swift
//  spk-kontrasepsi
//
//  Created by Devfx on 30/07/20.
//  Copyright © 2020 Devfx. All rights reserved.
//

import SwiftUI

struct FactsView: View {
    
    var fact : Fact
    var body: some View{
        ZStack{
            Text(fact.content)
            
            .padding(.leading, 55)
            .padding(.trailing, 10)
            .padding(.vertical, 3)
            .frame(width: 300, height: 135, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlue"), Color("Pink")]),startPoint: .leading, endPoint: .trailing))
            .cornerRadius(12)
            .lineLimit(6)
            .multilineTextAlignment(.leading)
            .font(.footnote)
            .foregroundColor(Color.white)
        
            Image(fact.image)
            .resizable()
            .frame(width: 66, height: 66, alignment: .center)
            .clipShape(Circle())
            .background(
            Circle()
                .fill(Color.white)
                .frame(width: 74, height: 74, alignment: .center)
            )
                .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorBlue"), Color("Pink")]),startPoint: .trailing, endPoint: .leading))
                     .frame(width: 82, height: 82, alignment: .center)
                    )
                .background(
                Circle()
                    .fill(Color("putih"))
                    .frame(width: 90, height: 90, alignment: .center)
                    )
                    
            
                
            .offset(x:-150)
      
        }
    }
}

struct FactsView_Previews: PreviewProvider {
    static var previews: some View {
        FactsView(fact: factdata[0])
    }
}
