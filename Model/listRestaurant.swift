/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 1
 Author: Pham Thanh Dat
 ID: 3678437
 Created  date: 29/07/2022
 Last modified: 07/08/2022
 Acknowledgement: Acknowledge the resources that you use here.
 */

import Foundation
import SwiftUI
import CoreLocation

struct listRestaurant: Identifiable, Codable{
    var id: Int
    var name: String
    var email: String
    var phone: String
    var description: String
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}

struct Coordinates: Codable {
    var latitude: Double
    var longitude: Double
}

