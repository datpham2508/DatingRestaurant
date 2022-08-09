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
import CoreLocation

var restaurants = decodeJsonFromJsonFile(jsonFileName: "Details.json")

// How to decode a json file into a struct
func decodeJsonFromJsonFile(jsonFileName: String) -> [listRestaurant] {
    if let file = Bundle.main.url(forResource: jsonFileName, withExtension: nil){
        if let data = try? Data(contentsOf: file) {
            do {
                let decoder = JSONDecoder()
                let decoded = try decoder.decode([listRestaurant].self, from: data)
                return decoded
            } catch let error {
                fatalError("Failed to decode JSON: \(error)")
            }
        }
    } else {
        fatalError("Couldn't load \(jsonFileName) file")
    }
    return [ ] as [listRestaurant]
}
