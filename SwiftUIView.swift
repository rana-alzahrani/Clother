//
//  SwiftUIView.swift
//  project3
//
//  Created by Rana on 11/07/1444 AH.
//

import SwiftUI
import CoreLocation
import WeatherKit

struct SwiftUIView: View {
    
    static let location =
    CLLocation(
        latitude: .init(floatLiteral: 24.704734),
        longitude: .init(floatLiteral: 46.685586))
    
    var body: some View {
        Text("Rana001")
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
