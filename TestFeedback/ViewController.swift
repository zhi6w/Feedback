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
        HapticFeedback.Notification.success()
    }
    
    @IBAction func playNotificationWarningSound(_ sender: UIButton) {
        HapticFeedback.Notification.warning()
    }
    
    @IBAction func playNotificationErrorSound(_ sender: UIButton) {
        HapticFeedback.Notification.error()
    }
    
    
    @IBAction func playImpactLightSound(_ sender: UIButton) {
        HapticFeedback.Impact.light()
    }
    
    @IBAction func playImpactMediumSound(_ sender: UIButton) {
        HapticFeedback.Impact.medium()
    }
    
    @IBAction func playImpactHeavySound(_ sender: UIButton) {
        HapticFeedback.Impact.heavy()
    }
    
    
    @IBAction func playSelectionSound(_ sender: UIButton) {
        HapticFeedback.Selection.selection()
    }
    
    
    @IBAction func peek(_ sender: UIButton) {
        HapticFeedback.peek()
    }
    
    @IBAction func pop(_ sender: UIButton) {
        HapticFeedback.pop()
    }
    
    @IBAction func error(_ sender: UIButton) {
        HapticFeedback.error()
    }
    
    // 普通震动
    @IBAction func vibration(_ sender: UIButton) {
        HapticFeedback.vibration()
    }
    
}

