# Feedback
> **iPhone 震动反馈封装**

```swift
    @IBAction func playNotificationSuccessSound(_ sender: UIButton) {
        HapticFeedback.Notification.successSound()
        HapticFeedback.Notification.success()
    }
    
    @IBAction func playNotificationWarningSound(_ sender: UIButton) {
        HapticFeedback.Notification.warningSound()
        HapticFeedback.Notification.warning()
    }
    
    @IBAction func playNotificationErrorSound(_ sender: UIButton) {
        HapticFeedback.Notification.errorSound()
        HapticFeedback.Notification.error()
    }
    
    
    @IBAction func playImpactLightSound(_ sender: UIButton) {
        HapticFeedback.Impact.lightSound()
        HapticFeedback.Impact.light()
    }
    
    @IBAction func playImpactMediumSound(_ sender: UIButton) {
        HapticFeedback.Impact.mediumSound()
        HapticFeedback.Impact.medium()
    }
    
    @IBAction func playImpactHeavySound(_ sender: UIButton) {
        HapticFeedback.Impact.heavySound()
        HapticFeedback.Impact.heavy()
    }
    
    
    @IBAction func playSelectionSound(_ sender: UIButton) {
        HapticFeedback.Selection.selectionSound()
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
```






