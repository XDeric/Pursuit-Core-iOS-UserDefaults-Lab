//
//  HoroscopeDetailViewController.swift
//  UserDefault
//
//  Created by EricM on 9/24/19.
//  Copyright © 2019 EricM. All rights reserved.
//

import UIKit

class HoroscopeDetailViewController: UIViewController {
    var horoscope: Horoscope!
    //var horoscopeDate: ViewController!
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var sign: UILabel!
    @IBOutlet weak var keywords: UILabel!
    @IBOutlet weak var fortune: UITextView!
    
    private func loadData() {
        HoroscopeAPIManager.shared.getHoroscope(celestialSpirit: yourHoroscope.getCelestialSpirit(month: ViewController.month, day: ViewController.day)) { (result) in
            DispatchQueue.main.async {
                switch result {
                case .success(let horoscopes):
                    self.horoscope = horoscopes
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //if let rating = tv.rating?.average { cell.ratingLabel.text = "Rating: \(rating)" } else { cell.ratingLabel.text = test }
        image.image = UIImage(named: yourHoroscope.getCelestialSpirit(month: ViewController.month, day: ViewController.day))
        loadData()
        //if let horoSign = horoscope.sunsign{ sign.text = horoSign} else {sign.text = "No Sign"}
        //sign.text = horoscope.sunsign
        //if let words = horoscope.keywords{ keywords.text = words} else {keywords.text = "No keyWords"}
        //keywords.text = horoscope.keywords
        //if let prediction = horoscope.horoscope{ fortune.text = prediction} else {fortune.text = "No Fortune"}
        //fortune.text = horoscope.horoscope

        // Do any additional setup after loading the view.
    }
    
}
