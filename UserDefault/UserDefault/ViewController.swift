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
//    let inputDate = datePicker.date
//    let calendar = Calendar.current
//    let month = calendar.component(.month, from: inputDate)
//    let day = calendar.component(.day, from: inputDate)
//    var fontSize: Double = 17{
//        didSet{
//            WelcomeLabel.font = WelcomeLabel.font.withSize(CGFloat(fontSize))
//            UserDefaults.standard.set(fontSize, forKey: "fontSize")
//        }
    var inputDate = Date(){
        didSet{
            UserDefaults.standard.set(inputDate, forKey: "inputDate")
        }
    }
    static var day = Int()
    static var month = Int()
    
    @IBAction func chosenDate(_ sender: UIDatePicker) {
        inputDate = sender.date
        //print(inputDate)
        ViewController.day = sender.calendar.component(.month, from: inputDate) // the month as an int
        ViewController.month = sender.calendar.component(.day, from: inputDate) // the day as an int
    }
    
    @IBAction func saveBDay(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! HoroscopeDetailViewController
        //vc.horoscopeDate = self.month
        //vc.horoscopeDate = self.day
        
    }

}

