//
//  ViewController.swift
//  MTAHackRight
//
//  Created by Abinaya Dinesh on 7/16/20.
//  Copyright © 2020 Abinaya Dinesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var StationFrom: UITextField!
    
    @IBOutlet weak var StationTo: UITextField!
    
    @IBOutlet weak var DepartureTime: UITextField!

    @IBAction func doneButton(_ sender: UIButton) {
        allUpcomingTrains.isHidden = false
        train1.isHidden = false
        trainRight.isHidden = false
        train3.isHidden = false
        train4.isHidden = false
        allImage.isHidden = true

    }
    @IBOutlet weak var train1: UIImageView!
    @IBOutlet weak var trainRight: UIImageView!
    @IBOutlet weak var train3: UIImageView!
    @IBOutlet weak var train4: UIImageView!
    @IBOutlet weak var allImage: UIImageView!
    @IBOutlet weak var allUpcomingTrains: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            StationFrom.delegate = self
            StationTo.delegate = self
            DepartureTime.delegate = self
        
            train1.isHidden = true
            trainRight.isHidden = true
            train3.isHidden = true
            train4.isHidden = true
            allUpcomingTrains.isHidden = true


    }


}

extension ViewController : UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
