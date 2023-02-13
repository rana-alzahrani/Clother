//
//  SwiftUIView.swift
//  project3
//
//  Created by Rana on 11/07/1444 AH.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack{
          Color("background")
                .edgesIgnoringSafeArea(.all)
            
       
            VStack(alignment: .leading){
                Color("Color2")
                    .frame(width: 390 , height: 75 , alignment: .top)
          
                Text("weather of the day")
                
                    .font(Font.custom("SF Pro", size:20))
                    .multilineTextAlignment(.leading)
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 350 , height: 140)
                    .padding(20)
                
                Text("weather of the day")
                .font(Font.custom("SF Pro", size:20))}
            Spacer()
         
           
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
