//
//  HoroscopeDetailViewController.swift
//  UserDefault
//
//  Created by EricM on 9/24/19.
//  Copyright © 2019 EricM. All rights reserved.
//

import UIKit

class HoroscopeDetailViewController: UIViewController {
    var horoscopeDate: Horoscope?

    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var sign: UILabel!
    @IBOutlet weak var keywords: UILabel!
    @IBOutlet weak var fortune: UITextView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //if let rating = tv.rating?.average { cell.ratingLabel.text = "Rating: \(rating)" } else { cell.ratingLabel.text = test }
        image.image = UIImage(named: yourHoroscope.getCelestialSpirit(month: ViewController.month, day: ViewController.day))
        //if let horoSign = horoscope.sunsign{ sign.text = horoSign} else {sign.text = "No Sign"}
        sign.text = horoscopeDate?.sunsign
        //if let words = horoscope.meta.keywords{ keywords.text = words} else {keywords.text = "No keyWords"}
        keywords.text = horoscopeDate?.meta.keywords
        //if let prediction = horoscope.horoscope{ fortune.text = prediction} else {fortune.text = "No Fortune"}
        fortune.text = horoscopeDate?.horoscope

        // Do any additional setup after loading the view.
    }
    
}
