//
//  HeaderView.swift
//  spk-kontrasepsi
//
//  Created by Devfx on 28/07/20.
//  Copyright © 2020 Devfx. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    
//    Animation
    
    @State private var showHeadline: Bool = false
    
    var slideInAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    var body: some View {
      
        ZStack{
        Text("Kontrasepsi")
            Image("1")
            .resizable()
            .aspectRatio(contentMode: .fill)
            
            HStack(alignment: .top, spacing: 0){
                Rectangle()
                    .fill(Color("ColorBlue"))
                    .frame(width:4)
            
                VStack(alignment: .leading, spacing: 8){
                Text("Kontrasepsi")
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .shadow(radius: 2)
                Text("Alat kontrasepsi Suntik dan KONTAP")
                    .font(.footnote)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(Color.white)
                    .shadow(radius: 3)
                }
                    
                    .padding(.vertical,0)
                    .padding(.horizontal,20)
                    .frame(width: 281, height: 105)
                    .background(Color("Colorblackligth"))
                }
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -61, y: showHeadline ? 75 : 220)
        .animation(slideInAnimation)
            .onAppear(perform: {
                self.showHeadline.toggle()
                })
            }
            .frame(width: 480, height: 320, alignment: .center)
        }
    }


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
            .environment(\.colorScheme, .dark)
    }
}
