

import Foundation
import CoreLocation

class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate{
    var locationManager = CLLocationManager()
    @Published var authorisationStatus: CLAuthorizationStatus?
    var latitude:Double{
        locationManager.location?.coordinate.latitude ?? 24.713552
    }
    var longitude:Double{
        locationManager.location?.coordinate.longitude ?? 46.675297
    }
    override init() {
        super.init()
        locationManager.delegate = self
    }
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        switch manager.authorizationStatus{
        case .authorizedWhenInUse:
            authorisationStatus = .authorizedWhenInUse
            locationManager.requestLocation()
            break
        case .restricted:
            authorisationStatus = .restricted
            break
        case .denied:
            authorisationStatus = .denied
            break
        case .notDetermined:
            authorisationStatus = .notDetermined
            manager.requestWhenInUseAuthorization()
            break
        default:
            break
            
        }
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations location: [CLLocation]) {
        
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("\(error.localizedDescription)")
    }
}
