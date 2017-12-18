//
//  ViewController.swift
//  videoplayer
//
//  Created by Guido Corazza on 12/11/17.
//  Copyright © 2017 Guido Corazza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let videoPlayerFrame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.width * 9 / 16)
        let videoPlayerView = VideoPlayerView(frame: videoPlayerFrame)
        self.view.addSubview(videoPlayerView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
