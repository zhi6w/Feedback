//
//  ViewController.swift
//  TestFeedback
//
//  Created by zhi zhou on 2017/4/25.
//  Copyright © 2017年 zhi zhou. All rights reserved.
//

import UIKit
import HapticFeedbackKit

class ViewController: UIViewController {

    
    @IBAction func playNotificationSuccessSound(_ sender: UIButton) {
        HapticFeedback.notification.successSound()
        HapticFeedback.notification.success()
    }
    
    @IBAction func playNotificationWarningSound(_ sender: UIButton) {
        HapticFeedback.notification.warningSound()
        HapticFeedback.notification.warning()
    }
    
    @IBAction func playNotificationErrorSound(_ sender: UIButton) {
        HapticFeedback.notification.errorSound()
        HapticFeedback.notification.error()
    }
    
    
    @IBAction func playImpactLightSound(_ sender: UIButton) {
        HapticFeedback.impact.lightSound()
        HapticFeedback.impact.light()
    }
    
    @IBAction func playImpactMediumSound(_ sender: UIButton) {
        HapticFeedback.impact.mediumSound()
        HapticFeedback.impact.medium()
    }
    
    @IBAction func playImpactHeavySound(_ sender: UIButton) {
        HapticFeedback.impact.heavySound()
        HapticFeedback.impact.heavy()
    }
    
    
    @IBAction func playSelectionSound(_ sender: UIButton) {
        HapticFeedback.selection.selectionSound()
        HapticFeedback.selection.selection()
    }
    
    
    @IBAction func peek(_ sender: UIButton) {
         TapticEngine.feedback.peek()
    }
    
    @IBAction func pop(_ sender: UIButton) {
        TapticEngine.feedback.pop()
    }
    
    @IBAction func error(_ sender: UIButton) {
        TapticEngine.feedback.error()
    }
    
    // 普通震动
    @IBAction func vibration(_ sender: UIButton) {
        Vibration.feedback.vibration()
    }
    
}

