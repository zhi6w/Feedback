//
//  HapticFeedback.swift
//  HapticFeedbackKit
//
//  Created by zhi zhou on 2017/4/25.
//  Copyright © 2017年 zhi zhou. All rights reserved.
//

import UIKit
import AVFoundation

/// 触觉反馈 （适用于 iPhone 7、7 Plus 及其以上机型）
public struct HapticFeedback {
    
    @available(iOS 10.0, *)
    public enum Notification {
        
        private static var generator: UINotificationFeedbackGenerator = {
            let generator = UINotificationFeedbackGenerator()
            generator.prepare()
            
            return generator
        }()
        
        
        public static func success() {
            occurred(.success)
        }
        
        public static func warning() {
            occurred(.warning)
        }
        
        public static func error() {
            occurred(.error)
        }
        
        private static func occurred(_ notificationType: UINotificationFeedbackGenerator.FeedbackType) {
            generator.notificationOccurred(notificationType)
            generator.prepare()
        }
    }
    
    @available(iOS 10.0, *)
    public enum Impact {
        
        private static var generator: UIImpactFeedbackGenerator?
        
        
        public static func light() {
            impactOccurred(.light)
        }
        
        public static func medium() {
            impactOccurred(.medium)
        }
        
        public static func heavy() {
            impactOccurred(.heavy)
        }
        
        private static func impactOccurred(_ style: UIImpactFeedbackGenerator.FeedbackStyle) {
            generator = UIImpactFeedbackGenerator(style: style)
            generator?.prepare()
            generator?.impactOccurred()
        }
    }
    
    @available(iOS 10.0, *)
    public enum Selection {
        
        private static var generator: UISelectionFeedbackGenerator = {
            let generator = UISelectionFeedbackGenerator()
            generator.prepare()
            
            return generator
        }()

        
        public static func selection() {
            generator.selectionChanged()
            generator.prepare()
        }
    }
    
    @available(iOS 9.0, *)
    public static func peek() {
        AudioServicesPlaySystemSound(1519)
    }
    
    @available(iOS 9.0, *)
    public static func pop() {
        AudioServicesPlaySystemSound(1520)
    }
    
    @available(iOS 9.0, *)
    public static func error() {
        AudioServicesPlaySystemSound(1521)
    }
    
    public static func vibration() {
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
    }
    
}

