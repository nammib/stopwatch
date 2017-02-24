//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Namrita Baru on 2/23/17.
//  Copyright © 2017 Namrita Baru. All rights reserved.
//

import Foundation
class Stopwatch {
    var time: String
    var startDate : Date? = nil;
    var running = false;
    var elapsedTime = 0.0;
    var minutes = 0.0;
    var seconds = 0.0;
    var milli = 0.0;
    init() {
        time = "0";
    }
    
    func start() {
        running = true;
        startDate = Date()
    }
    func stop() {
        running = false;
        
        elapsedTime = 0;
    }
    func isRunning() -> Bool {
        return running;
    }
    func getElapsedTime()-> String? {
        elapsedTime = startDate?.timeIntervalSinceNow ?? 0
        minutes = -elapsedTime/100;
        seconds = -elapsedTime.truncatingRemainder(dividingBy: 60);
        milli = -(elapsedTime*100).truncatingRemainder(dividingBy: 100)
        let time = String(format: "%02d:%02d.%d", Int(minutes), Int(seconds), Int(milli))
        return time;
    
    }

}
