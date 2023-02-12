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
        
            
         //   Text("weather of the day")
          //      .font(Font.custom("pro"))
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
