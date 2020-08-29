//
//  nextPageVC.swift
//  iTasbih
//
//  Created by Mohammed Almansoori on 24/08/2020.
//  Copyright © 2020 Mansoori and Mazrouei. All rights reserved.
//

import UIKit
import SwiftUI
import AudioToolbox
class nextPageVC: UIViewController {
    let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
    var counter = 33
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var counterlbl: UILabel!
    @IBOutlet weak var leftNumber: UILabel!
    @IBOutlet weak var buttonPress: UIButton!
    @IBOutlet weak var lbls: UILabel!
    @IBOutlet weak var resetPress: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let feedbackSupportLevel = UIDevice.current.value(forKey: "_feedbackSupportLevel") as? Int
                    //make the phone virbration
        _ = UIDevice.current.value(forKey: "_feedbackSupportLevel") as? Int
                    if #available(iOS 10.0, *), let feedbackSupportLevel = feedbackSupportLevel, feedbackSupportLevel > 1 {
                        do { // 1
                        let generator = UIImpactFeedbackGenerator(style: .medium)
                        generator.impactOccurred()
                        }

                        do { // or 2
                        let generator = UINotificationFeedbackGenerator()
                        generator.notificationOccurred(.success)
                        }
                    }
                    else {
                       AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
                   }
    }
    
    func VStack() {
           EmptyView()
       }
    @IBAction func countButton(_ sender: Any) {
        counter -= 1
        counterlbl.text = String(counter)
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
        //this code says when the counterlbl.text = to 0 and lbl.text is = to "استغفر الله" change it to "الحمدالله" and to 33
        if counterlbl.text == "0" && lbl.text == "استغفر الله" {
            counter = 33
            lbl.text = "الحمدالله"
            counterlbl.text = "33"
            leftNumber.text = "4 left"
            }
        //this code says when the counterlbl.text = to 0 and lbl.text is = to "الحمدالله" change it to "الله اكبر" and to 33
        if counterlbl.text == "0" && lbl.text == "الحمدالله" {
            counter = 33
            lbl.text = "الله اكبر"
            counterlbl.text = "33"
            leftNumber.text = "3 left"
        }
        //this code says when the counterlbl.text = to 0 and lbl.text is = to "الله اكبر" change it to "سبحان الله" and to 33
        if counterlbl.text == "0" && lbl.text == "الله اكبر" {
            counter = 33
            lbl.text = "سبحان الله"
            counterlbl.text = "33"
            leftNumber.text = "2 left"
        }
        //this code says when the counterlbl.text = to 0 and lbl.text is = to "سبحان الله" change it to  "لا إله إلا الله محمد رسول الله" and to 33
      if counterlbl.text == "0" && lbl.text == "سبحان الله" {
          counter = 100
          lbl.text = "لا إله إلا الله محمد رسول الله"
          counterlbl.text = "100"
        leftNumber.text = "1 left"
      }
        //this code says when the counterlbl.text = to 0 and lbl.text is = to "سبحان الله" change it to  "لا إله إلا الله محمد رسول الله" and to 33
           if counterlbl.text == "0" && lbl.text == "لا إله إلا الله محمد رسول الله" {
            leftNumber.text = "0 left"
            //This code will hide some buttons and show the picture and "مبروك / Congratulation"
            buttonPress.isHidden = true
            resetPress.isHidden = true
            lbls.isHidden = true
            lbl.isHidden = true
            imageView.image = UIImage(named: "tick.png")
            counterlbl.text = "مبروك / Congratulation"
            
           }
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        //how to reset the counter to 0, when you press it
               counterlbl.invalidateIntrinsicContentSize()
               counter = 33
               counterlbl.text = "33"
        //to create an if for 100 "لا إله إلا الله محمد رسول الله"  
        lbl.text = "استغفر الله"
    }
    
    
}
