//
//  SoundRecorderViewState.swift
//  VoiceChanger
//
//  Created by VoiceChanger on 1/10/19.
//  Copyright © 2019 VoiceChanger. All rights reserved.
//

import Foundation
import UIKit.UIImage

enum RecordingState { case idle, recording }

struct SoundRecorderViewState {
    let buttonIcon: UIImage?
    let description: String
}
