//
//  ViewController.swift
//  iTasbih
//
//  Created by Mohammed Almansoori on 23/08/2020.
//  Copyright © 2020 Mansoori and Mazrouei. All rights reserved.
//

import UIKit
import AudioToolbox
class ViewController: UIViewController {
    //save the number of the data 1)
    var counter = UserDefaults.standard.integer(forKey: "counter")
    var resetOne: Int = 0
    @IBOutlet weak var counterT: UILabel!
    @IBOutlet weak var ButtonPublish: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //This code will make the counterT = label is the same as the number that is saved
        counterT.text = "\(counter)"
        //make the phone virbration
        let feedbackSupportLevel = UIDevice.current.value(forKey: "_feedbackSupportLevel") as? Int
                    if #available(iOS 10.0, *), let feedbackSupportLevel = feedbackSupportLevel, feedbackSupportLevel > 1 {
                        do { // 1
                            let generator = UIImpactFeedbackGenerator(style: .medium)
                            generator.impactOccurred()
                        }

                        do { // or 2
                            let generator = UINotificationFeedbackGenerator()
                            generator.notificationOccurred(.success)
                        }
                    } else {
                        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
                    }
    }
    @IBAction func buttonPublish(_ sender: UIButton) {
        //how to make the counter increase while pressing on the button
        counter += 1
        //save the number of the data 2)
        UserDefaults.standard.set(counter, forKey: "counter")
        counterT.text = String(counter)
      //make the phone virbration
               let feedbackSupportLevel = UIDevice.current.value(forKey: "_feedbackSupportLevel") as? Int
                           if #available(iOS 10.0, *), let feedbackSupportLevel = feedbackSupportLevel, feedbackSupportLevel > 1 {
                               do { // 1
                                   let generator = UIImpactFeedbackGenerator(style: .medium)
                                   generator.impactOccurred()
                               }

                               do { // or 2
                                   let generator = UINotificationFeedbackGenerator()
                                   generator.notificationOccurred(.success)
                               }
                           } else {
                               AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
                           }
        print(counter)
    }
    
    @IBAction func resetButton(_ sender: Any) {
        //how to reset the counter to 0, when you press it
        counterT.invalidateIntrinsicContentSize()
        counter = 0
        counterT.text = "0"
        
        
    }
    

}

