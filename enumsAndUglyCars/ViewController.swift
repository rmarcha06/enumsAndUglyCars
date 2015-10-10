//
//  ViewController.swift
//  enumsAndUglyCars
//
//  Created by Ramiro Martinez Chavez on 10/10/15.
//  Copyright © 2015 Ramiro Martinez Chavez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var theLabel: UILabel!
    
    
    enum Cars: Int {
        case BMW = 0
        case HONDA = 1
        case TESLA = 2
        case SUBARU = 3
        
    }
    
    var carOfChoices: Cars!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        carOfChoices = Cars.TESLA
        print(carOfChoices)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onBtnTapped(sender: UIButton!) {
        
        if sender.tag == Cars.BMW.rawValue {
            theLabel.text = "BMW is awesome!"
        } else if sender.tag == Cars.HONDA.rawValue {
                theLabel.text = "Somebody get that ugly car!"
        } else if sender.tag == Cars.TESLA.rawValue {
            theLabel.text = "The new kid on the block"
        } else {
            theLabel.text = "Somebody shoot me now!"
        }
        }
    
}

