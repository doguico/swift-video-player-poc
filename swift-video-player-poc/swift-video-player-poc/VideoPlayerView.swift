//
//  VideoPlayerView.swift
//  videoplayer
//
//  Created by Guido Corazza on 12/14/17.
//  Copyright © 2017 Guido Corazza. All rights reserved.
//

import UIKit
import AVFoundation

class VideoPlayerView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .black
        
        //let videoUrl = "http://www.wowza.com/_h264/BigBuckBunny_115k.mov"
        //let videoUrl = "http://g1.ipcamlive.com/player/player.php?alias=5a32c61021ad5"
        //let videoUrl = "http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4"
        let videoUrl = "http://ipcamlive.com/5a32c61021ad5"
        
        if let url = URL(string: videoUrl) {
            let player = AVPlayer(url: url)
            let playerLayer = AVPlayerLayer(player: player)
            self.layer.addSublayer(playerLayer)
            playerLayer.frame = self.frame
            
            player.play()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

