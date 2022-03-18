//
//  WeatherModel.swift
//  Clima
//
//  Created by Michael Abrams on 8/23/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionID : Int
    let cityName: String
    let tempature: Double
    
    var tempatureString : String {
        return String(round(tempature * 10)/10)
    }
    var conditionName : String {
        if conditionID <= 232 {
            return "cloud.bolt.rain"

        }
        if conditionID <= 321 {
            return "cloud.drizzle"
        }
        if conditionID <= 531 {
            return "cloud.rain"
        }
        if conditionID <= 622 {
            return "cloud.snow"
        }
        if conditionID <= 781 {
            return "cloud.fog"
        }
        if conditionID == 800 {
            return "sun.max.fill"
        }
        else {
            return "cloud"
        }
    }
    

}
