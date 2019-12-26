//
//  ViewController.swift
//  oneHandCalculator
//
//  Created by Gun Park on 12/4/19.
//  Copyright © 2019 Gun Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numOnScreen:Double = 0;
    var tempNumber:Double = 0;
    var performMath = false;
    var opertion = 0;
    
    @IBOutlet weak var Label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        
        if performMath == true{
            Label.text = String(sender.tag - 1)
            numOnScreen = Double(Label.text!)!
            performMath = false
        }else{
            Label.text = Label.text! + String(sender.tag - 1)
            numOnScreen = Double(Label.text!)!
        }
      
        
    }
    
    @IBAction func button(_ sender: UIButton) {
        
        if Label.text != "" && sender.tag != 11 && sender.tag != 17
        {
            tempNumber = Double(Label.text!)!
            
            if sender.tag == 13{
                // divide
                Label.text = "/";

                
            }else if sender.tag == 14{
                //multi
                Label.text = "x";

                
            }else if sender.tag == 15{
                //minus
                Label.text = "-";

            }else if sender.tag == 16{
                //plus
                Label.text = "+";

            }
            
            opertion = sender.tag
            performMath = true;
        }
        
        else if sender.tag == 17{
            if opertion == 13{
                Label.text = String(tempNumber / numOnScreen)
            }else if opertion == 14{
                Label.text = String(tempNumber * numOnScreen)
            }else if opertion == 15{
                Label.text = String(tempNumber - numOnScreen)
            }else if opertion == 16{
                Label.text = String(tempNumber + numOnScreen)
            }
        }
    
        
        else if sender.tag == 11{
        
                Label.text = "";
                numOnScreen = 0;
                tempNumber = 0;
                opertion = 0;
        }
        
    }
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

