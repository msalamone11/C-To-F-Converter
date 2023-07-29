//
//  ViewController.swift
//  C To F Converter
//
//  Created by Mark Salamone on 7/22/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numConvLabel: UILabel!
    @IBOutlet weak var convResLabel: UILabel!
    @IBOutlet weak var tempInputTextField: UITextField!
    
    var numConvCounter = 0
    
    @IBAction func convertButtonTapped(_ sender: UIButton) {
        
        if let input = tempInputTextField.text {
            
            if input == "" {
                
                return
                
            } else {
                
                if let n = Double(input){
                    
                    let answer = calcAnswer(num: n).rounded()
                    
                    convResLabel.text = String(answer) + " F"
                    updateCounter()
                }

            }
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func calcAnswer (num: Double) -> Double {
        return num * (9/5) + 32
    }
    
    func updateCounter () {
        numConvCounter += 1
        var endLabel = " conversions"
        if numConvCounter == 1 {
            endLabel = " conversion"
        }
        numConvLabel.text = String(numConvCounter) + endLabel
    }
}

