//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Bola Gadalla on 19/11/19.
//  Copyright © 2019 Bola Gadalla. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController
{
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    
    var resultBIM: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        resultLabel.text = resultBIM
        tipLabel.text = advice
        view.backgroundColor = color
    }
    
    @IBAction func RecalculateBMI(_ sender: UIButton)
    {
        self.dismiss(animated: true, completion: nil)
    }
}
