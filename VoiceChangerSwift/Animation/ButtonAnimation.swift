//
//  ButtonAnimation.swift
//  VoiceChanger
//
//  Created by VoiceChanger on 1/12/19.
//  Copyright © 2019 VoiceChanger. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
    func pulsate() {
        
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.6
        pulse.fromValue = 0.95
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = 1000000
        pulse.initialVelocity = 0.5
        pulse.damping = 1.0
        
        layer.add(pulse, forKey: nil)
    }
}
