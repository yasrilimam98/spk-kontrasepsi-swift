//
//  DashboadView.swift
//  spk-kontrasepsi
//
//  Created by Devfx on 30/07/20.
//  Copyright © 2020 Devfx. All rights reserved.
//

import SwiftUI

struct DashboardView: View {
var body: some View {
    HStack(){
    VStack{
//        Kolom kiri
        Divider()
        HStack(){
           
            Image("ig")
                .resizable()
                .modifier(IconSize())
                Spacer()
                Text("PIL KB")
            }
        
        Divider()
        HStack(){
           
            Image("ig")
                
                .resizable()
                .modifier(IconSize())
                Spacer()
                Text("KONTAP")
            }
        Divider()
        HStack(){
           
            Image("ig")
                .resizable()
                .modifier(IconSize())
                Spacer()
                Text("SUNTIK")
            }
        
        
        
           
    }
       
        Image(systemName: "pause")
        
      VStack{
//Kolom kanan
       Divider()
        HStack(){
              Text("IUD")
              Spacer()
            Image("ig")
              .resizable()
              .modifier(IconSize())
            
        }
        Divider()
        HStack(){
              Text("Implant")
              Spacer()
            Image("ig")
              .resizable()
              .modifier(IconSize())
            
        }
        Divider()
        HStack(){
              Text("Kondom")
              Spacer()
            Image("ig")
              .resizable()
              .modifier(IconSize())
            
        }
        
        }
    

        
}
    
    .font(.system(.callout, design: .serif))
    .foregroundColor(Color.gray)
    .padding(.horizontal)
    .frame(maxHeight: 220)
}
}

struct IconSize: ViewModifier{
func body(content: Content) -> some View {
    content
      .frame(width: 42,height: 42, alignment: .center)
}
}

struct DashboadView_Previews: PreviewProvider {
static var previews: some View {
    DashboardView()
        .previewLayout(.fixed(width: 414, height: 280))
    
}
}

