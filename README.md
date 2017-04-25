# Feedback
> **iPhone 震动反馈封装**

```swift
    /* iPhone 7、7 Plus 机型独有的震动反馈模式 */
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
    /* ------------------------------------------------------------ */
    
    // 3D Touch Peek
    @IBAction func peek(_ sender: UIButton) {
         TapticEngine.feedback.peek()
    }
    
    // 3D Touch Pop
    @IBAction func pop(_ sender: UIButton) {
        TapticEngine.feedback.pop()
    }
    
    // 连续三次短震
    @IBAction func error(_ sender: UIButton) {
        TapticEngine.feedback.error()
    }
    
    // 普通震动
    @IBAction func vibration(_ sender: UIButton) {
        Vibration.feedback.vibration()
    }
```






