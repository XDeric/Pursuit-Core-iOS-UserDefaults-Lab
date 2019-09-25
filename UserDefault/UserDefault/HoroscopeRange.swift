//
//  HoroscopeRange.swift
//  UserDefault
//
//  Created by EricM on 9/24/19.
//  Copyright © 2019 EricM. All rights reserved.
//

import Foundation
import UIKit

struct yourHoroscope {
    static func getCelestialSpirit(month: Int, day: Int)-> String{
        if (month == 3 && day >= 21) || (month == 4 && day <= 20){
            return "aries"
        }
        else if (month == 4 && day >= 20) || (month == 5 && day <= 21){
            return "taurus"
        }
        else if (month == 5 && day >= 21) || (month == 6 && day <= 23){
            return "gemini"
        }
        else if (month == 6 && day >= 21) || (month == 7 && day <= 23){
            return "cancer"
        }
        else if (month == 7 && day >= 23) || (month == 8 && day <= 23){
            return "leo"
        }
        else if (month == 8 && day >= 23) || (month == 9 && day <= 23){
            return "virgo"
        }
        else if (month == 9 && day >= 23) || (month == 10 && day <= 23){
            return "libra"
        }
        else if (month == 10 && day >= 23) || (month == 11 && day <= 22){
            return "scorpio"
        }
        else if (month == 11 && day >= 22) || (month == 12 && day <= 22){
            return "sagittarius"
        }
        else if (month == 12 && day >= 22) || (month == 1 && day <= 20){
            return "capricorn"
        }
        else if (month == 1 && day >= 20) || (month == 2 && day <= 19){
            return "aquarius"
        }
        else if (month == 2 && day >= 19) || (month == 3 && day <= 21){
            return "pisces"
        }
        else { return "aries"}
    }
}
