//
//  ViewController.swift
//  iTasbih
//
//  Created by Mohammed Almansoori on 23/08/2020.
//  Copyright © 2020 Mansoori and Mazrouei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0
    var resetOne: Int = 0
    @IBOutlet weak var counterT: UILabel!
    @IBOutlet weak var ButtonPublish: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonPublish(_ sender: UIButton) {
        //how to make the counter increase while pressing on the button
        counter += 1
        counterT.text = String(counter)
        print(counter)
    }
    @IBAction func resetButton(_ sender: Any) {
        //how to reset the counter to 0, when you press it
        counterT.invalidateIntrinsicContentSize()
        counter = 0
        counterT.text = "0"
        
    }
    

}

