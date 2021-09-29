//
//  SoundRecorderRouter.swift
//  VoiceChanger
//
//  Created by VoiceChanger on 1/14/19.
//  Copyright © 2019 VoiceChanger. All rights reserved.
//

import UIKit

protocol SoundRecorderInternalRouting {
    func goToSoundPlayerView(audioFileUrl: URL)
}

final class SoundRecorderRouter {
    
    private weak var display: UIViewController?
    
    init(display: UIViewController) {
        self.display = display
    }
}

extension SoundRecorderRouter: SoundRecorderInternalRouting {
    
    func goToSoundPlayerView(audioFileUrl: URL)
    {
        let bundle = Bundle(for: type(of:self))
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        guard let soundPlayerViewController = storyboard.instantiateViewController(withIdentifier: "SoundPlayer") as? SoundPlayerViewController
        else { return }
        let soundPlayer = SoundPlayer(recordedAudioUrl: audioFileUrl, display: soundPlayerViewController)
        soundPlayerViewController.soundPlayer = soundPlayer
        display?.navigationController?.pushViewController(soundPlayerViewController, animated: true)
    }
}
