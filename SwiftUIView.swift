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
    @State var weather:Weather?
    
    func getWeather() async {
        do {
            weather = try await Task
            {
                try await WeatherService.shared.weather(for:Self.location)
            }.value
            
        } catch {
            fatalError("\(error)")
        }
    }
    
    var body: some View {
        if let weather = weather{
            VStack {
                Text("TemperatureToday").font(.largeTitle).padding()
                Text(weather.currentWeather.condition.description).font(.title)
                Image(systemName: weather.currentWeather.symbolName).font(.title)
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
