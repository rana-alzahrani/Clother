//
//  SwiftUIView.swift
//  project3
//
//  Created by rahaf on 24/07/1444 AH.
//

import SwiftUI

struct SwiftUIVie: View {
    var body: some View {
        ZStack {
        Image("Im")
                .resizable()
                .ignoresSafeArea()
         
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.gray)
                        .frame(width:300,height:100)
                        .opacity(0.6)
            VStack{
                Text("Your location")
                    .padding(.trailing,150)
                    .font(.title3)
                    .foregroundColor(.white)
                
                Text("Riyadh")
                padding(.trailing,150)
            }
            
        }
            
       
    }
}
    

struct SwiftUIVie_Previews: PreviewProvider {
    static var previews: some View {
        
        SwiftUIVie()
    }
}
