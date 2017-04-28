//
//  HapticFeedback.swift
//  HapticFeedbackKit
//
//  Created by zhi zhou on 2017/4/25.
//  Copyright © 2017年 zhi zhou. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox


fileprivate var audioPlayer: AVAudioPlayer?

/// 震动反馈示例音乐
fileprivate func playSound(forResource: String) {
    let bundle = Bundle(identifier: "com.zhi.HapticFeedbackKit")
    let path = bundle?.path(forResource: "FeedbackSounds", ofType: "bundle")
    let fileBundle = Bundle(path: path!)
    
    let url = fileBundle?.url(forResource: forResource, withExtension: "mp4")
    
    audioPlayer = try? AVAudioPlayer(contentsOf: url!)
    audioPlayer?.play()
}

/// 触觉反馈 （适用于 iPhone 7、7 Plus 及其以上机型）
open class HapticFeedback {
    
    @available(iOS 10.0, *)
    open static let notification = Notification()
    
    @available(iOS 10.0, *)
    open static let impact = Impact()
    
    @available(iOS 10.0, *)
    open static let selection = Selection()
    
    @available(iOS 9.0, *)
    open static let forceTouch = ForceTouch()
    
    open static let vibration = Vibration()
    
    
    @available(iOS 10.0, *)
    open class Notification {
        
        let generator: UINotificationFeedbackGenerator = {
            let generator = UINotificationFeedbackGenerator()
            generator.prepare()
            
            return generator
        }()
        
        
        open func successSound() {
            playSound(forResource: "success")
        }
        
        open func warningSound() {
            playSound(forResource: "warning")
        }
        
        open func errorSound() {
            playSound(forResource: "error")
        }

        
        open func success() {
            occurred(.success)
        }
        
        open func warning() {
            occurred(.warning)
        }
        
        open func error() {
            occurred(.error)
        }
        
        fileprivate func occurred(_ notificationType: UINotificationFeedbackType) {
            generator.notificationOccurred(notificationType)
            generator.prepare()
        }
        
    }
    
    
    @available(iOS 10.0, *)
    open class Impact {
        
        var generator: UIImpactFeedbackGenerator?
        
        
        open func lightSound() {
            playSound(forResource: "impact_light")
        }
        
        open func mediumSound() {
            playSound(forResource: "impact_medium")
        }
        
        open func heavySound() {
            playSound(forResource: "impact_heavy")
        }

        
        open func light() {
            impactOccurred(.light)
        }
        
        open func medium() {
            impactOccurred(.medium)
        }
        
        open func heavy() {
            impactOccurred(.heavy)
        }
        
        fileprivate func impactOccurred(_ style: UIImpactFeedbackStyle) {
            generator = UIImpactFeedbackGenerator(style: style)
            generator?.prepare()
            generator?.impactOccurred()
        }
        
    }
    
    
    @available(iOS 10.0, *)
    open class Selection {
        
        let generator: UISelectionFeedbackGenerator = {
            let generator = UISelectionFeedbackGenerator()
            generator.prepare()
            
            return generator
        }()
        
        
        open func selectionSound() {
            playSound(forResource: "selection")
        }
        
        
        open func selection() {
            generator.selectionChanged()
            generator.prepare()
        }
        
    }
    
}


/// Force Touch 震动反馈（适用于 iPhone 6s、6s Plus 及其以上机型）
@available(iOS 9.0, *)
open class ForceTouch {
    
    open func peek() {
        AudioServicesPlaySystemSound(1519)
    }
    
    open func pop() {
        AudioServicesPlaySystemSound(1520)
    }
    
    open func error() {
        AudioServicesPlaySystemSound(1521)
    }
    
}


/// 普通震动反馈
open class Vibration {
    
    open func vibration() {
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }
    
}

