//
//  ViewController.swift
//  UserDefault
//
//  Created by EricM on 9/24/19.
//  Copyright © 2019 EricM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    var inputDate = Date(){
        didSet{
            UserDefaults.standard.set(inputDate, forKey: "inputDate")
        }
    }
    var horo: Horoscope?
    static var day = Int()
    static var month = Int()
    
    @IBAction func chosenDate(_ sender: UIDatePicker) {
        inputDate = sender.date
        //print(inputDate)
        ViewController.day = sender.calendar.component(.month, from: inputDate) // the month as an int
        ViewController.month = sender.calendar.component(.day, from: inputDate) // the day as an int
    }
    
    @IBAction func savedDay(_ sender: UIButton) {
        loadData()
        
    }
    
    private func loadData() {
        let spirit = yourHoroscope.getCelestialSpirit(month: ViewController.month, day: ViewController.day)
        HoroscopeAPIManager.shared.getHoroscope(celestialSpirit: spirit) { (result) in
            DispatchQueue.main.async {
                switch result {
                case .success(let horoscopes):
                    self.horo = horoscopes
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "horoscopeSegue" {
        var vc = segue.destination as! HoroscopeDetailViewController
        vc.horoscopeDate = horo
        }
    }

}

