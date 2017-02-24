//
//  ViewController.swift
//  Stopwatch
//
//  Created by Namrita Baru on 2/22/17.
//  Copyright © 2017 Namrita Baru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let stopwatch = Stopwatch();
    var t = Timer();
    @IBAction func start(_ sender: Any) {
        stopwatch.start()
        t = Timer.scheduledTimer(timeInterval: 0.1, target: self,
                             selector: #selector(self.updateStopWatchLabel),
                             userInfo: nil,
                             repeats: true)
    }
    
    @IBAction func stop(_ sender: UIButton) {
        stopwatch.stop()
        t.invalidate()
    }
    
    @IBOutlet weak var disp: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func updateStopWatchLabel(timer: Timer) {
        disp.text = stopwatch.getElapsedTime();
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    }

