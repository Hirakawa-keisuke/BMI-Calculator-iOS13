//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by 平川恵輔 on 2022/10/09.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?


    @IBOutlet weak var adviceLabel: UILabel!
    
    
    @IBOutlet weak var bmiLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
    }
    

  

     @IBAction func recalculatePressed(_ sender: UIButton) {
         self.dismiss(animated: true, completion: nil)
     }
     

}
