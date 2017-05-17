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
    public enum Notification {
        
        fileprivate static var generator: UINotificationFeedbackGenerator = {
            let generator = UINotificationFeedbackGenerator()
            generator.prepare()
            
            return generator
        }()
        
        public static func function() {
            print(generator)
        }
        
        public static func successSound() {
            playSound(forResource: "success")
        }
        
        public static func warningSound() {
            playSound(forResource: "warning")
        }
        
        public static func errorSound() {
            playSound(forResource: "error")
        }
        
        
        public static func success() {
            occurred(.success)
        }
        
        public static func warning() {
            occurred(.warning)
        }
        
        public static func error() {
            occurred(.error)
        }
        
        fileprivate static func occurred(_ notificationType: UINotificationFeedbackType) {
            generator.notificationOccurred(notificationType)
            generator.prepare()
        }
        
    }
    
    @available(iOS 10.0, *)
    public enum Impact {
        
        fileprivate static var generator: UIImpactFeedbackGenerator?
        
        
        public static func lightSound() {
            playSound(forResource: "impact_light")
        }
        
        public static func mediumSound() {
            playSound(forResource: "impact_medium")
        }
        
        public static func heavySound() {
            playSound(forResource: "impact_heavy")
        }
        
        
        public static func light() {
            impactOccurred(.light)
        }
        
        public static func medium() {
            impactOccurred(.medium)
        }
        
        public static func heavy() {
            impactOccurred(.heavy)
        }
        
        fileprivate static func impactOccurred(_ style: UIImpactFeedbackStyle) {
            generator = UIImpactFeedbackGenerator(style: style)
            generator?.prepare()
            generator?.impactOccurred()
        }
        
    }
    
    @available(iOS 10.0, *)
    public enum Selection {
        
        fileprivate static var generator: UISelectionFeedbackGenerator = {
            let generator = UISelectionFeedbackGenerator()
            generator.prepare()
            
            return generator
        }()
        
        
        public static func selectionSound() {
            playSound(forResource: "selection")
        }
        
        
        public static func selection() {
            generator.selectionChanged()
            generator.prepare()
        }
        
    }
    
    @available(iOS 9.0, *)
    open class func peek() {
        AudioServicesPlaySystemSound(1519)
    }
    
    @available(iOS 9.0, *)
    open class func pop() {
        AudioServicesPlaySystemSound(1520)
    }
    
    @available(iOS 9.0, *)
    open class func error() {
        AudioServicesPlaySystemSound(1521)
    }
    
    open class func vibration() {
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }
    
}

