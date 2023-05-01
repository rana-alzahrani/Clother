
import SwiftUI

struct ContentView: View {
    @ObservedObject var weatherKitManager = WeatherKitManager()
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        if locationManager.authorisationStatus == .authorizedWhenInUse {
            ZStack{
                Color("Color1")
                    .ignoresSafeArea()
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .frame(width: 350, height: 580)
                    .foregroundColor(.white)
                    .padding(.top,250)
                VStack (spacing: 85){
                    VStack (spacing: 10){
                        Text("Weather of the Day")
                            .font(.headline)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 35)
                        HStack{
                            Label(weatherKitManager.temp, systemImage: weatherKitManager.symbol)
                        }
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame(width: 350, height: 117)
                        .background(Color(red: 0.568, green: 0.742, blue: 0.833))
                        .cornerRadius(10)
                    }
                    VStack (spacing: 40){
                        ZStack {
                            VStack (spacing: 10){
                                Text("Pick a Color")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading, 35)
                                RoundedRectangle(cornerRadius: 20, style: .continuous)
                                    .frame(width: 315, height: 60)
                                    .foregroundColor(Color(red: 0.836, green: 0.787, blue: 0.665))
                            }
                            HStack(spacing: 14){
                                Circle()
                                    .frame(width: 48.6, height: 48.6)
                                Circle()
                                    .frame(width: 48.6, height: 48.6)
                                Circle()
                                    .frame(width: 48.6, height: 48.6)
                                Circle()
                                    .frame(width: 48.6, height: 48.6)
                            }
                            .padding(.top, 30)
                        }
                        VStack (spacing: 20){
                            Text("Clothes of the Day")
                                .font(.headline)
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.leading, 35)
                            ZStack {
                                RoundedRectangle(cornerRadius: 8, style: .continuous)
                                    .frame(width: 315, height: 303)
                                    .foregroundColor(Color(red: 0.733, green: 0.733, blue: 0.733))
                                ZStack {
                                    Rectangle()
                                        .frame(width: 90, height: 40)
                                        .foregroundColor(Color(red: 0.773, green: 0.506, blue: 0.312))
                                        .padding(.trailing, 225)
                                    ZStack{
                                        Text("Fabric")
                                            .font(.subheadline)
                                            .fontWeight(.bold)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .padding(.leading, 70)
                                            .foregroundColor(.white)
                                        Image(systemName: "pencil.circle.fill")
                                            .padding(.trailing,280)
                                            .foregroundColor(.white)
                                    }
                                }.padding(.top,150)
                            }
                        }
                    }
                }
            }
            .task {
                await weatherKitManager.getWeather(latitude: locationManager.latitude, longitude: locationManager.longitude)
            }
        } else {
            ProgressView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
