//
//  SoundPlayerViewState.swift
//  VoiceChanger
//
//  Created by VoiceChanger on 1/12/19.
//  Copyright © 2019 VoiceChanger. All rights reserved.
//

import Foundation

enum PlayingState { case idle, playing }

struct SoundPlayerViewState {
    let playButtonsEnabled: Bool
    let stopButtonEnabled: Bool
}
