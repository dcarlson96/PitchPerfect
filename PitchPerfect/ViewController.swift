//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Dylan Carlson on 4/23/20.
//  Copyright © 2020 Dylan Carlson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordingButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad called")
        stopRecordingButton.isEnabled = false
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear called")
    }
    
    @IBAction func recordAudio(_ sender: Any) {
        print("record button was pressed")
        recordingLabel.text = "Recording in Progress"
        stopRecordingButton.isEnabled = true
        recordingButton.isEnabled = false
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        print("stop recording")
        recordingLabel.text = "Tap to Record"
        stopRecordingButton.isEnabled = false
        recordingButton.isEnabled = true
    }
}

