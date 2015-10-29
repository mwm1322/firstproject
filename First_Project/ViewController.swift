//
//  ViewController.swift
//  First_Project
//
//  Created by block7 on 9/25/15.
//  Copyright © 2015 block7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var gamePattern: Array<Int> = [0]
    var playPattern: Array<Int> = []
    var currentIndex: Int = 0
    let delay: UInt32 = 2
    let delay2: UInt32 = 2
    var timer: NSTimer?
    var checkStatus: Int = 10


    var displayNum: Int = 1
    
    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var Button5: UIButton!
    @IBOutlet weak var Button6: UIButton!
    @IBOutlet weak var Button7: UIButton!
    @IBOutlet weak var Button8: UIButton!
    @IBOutlet weak var Button9: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "checker", userInfo: nil, repeats: true)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button(sender: UIButton) {
        let buttonNum = sender.currentTitle!
        switch buttonNum {
        case "Button1": playPattern.append(1)
        case "Button2": playPattern.append(2)
        case "Button3": playPattern.append(3)
        case "Button4": playPattern.append(4)
        case "Button5": playPattern.append(5)
        case "Button6": playPattern.append(6)
        case "Button7": playPattern.append(7)
        case "Button8": playPattern.append(8)
        case "Button9": playPattern.append(9)
        default: print("Error")
        }
        
        print(playPattern)
    }
    
    @IBAction func creategamePattern() {
        gamePattern = []
        for var i = 0; i < 5; ++i {
        gamePattern.append(Int(arc4random_uniform(9))+1)
        print(gamePattern)
        }
        currentIndex = 0
        displayPattern()
    }
    

    func displayPattern() {
        for var i = 0; i < gamePattern.count; ++i {
            displayNum = i
            switch displayNum {
            case 0: display1test()
            case 1: display2test()
            case 2: display3test()
            case 3: display4test()
            case 4: display5test()
            default: print("error")
            }
        }
    }

    func display1test() {
        let delay = 0.1 * Double(NSEC_PER_SEC)
        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(delay))
        dispatch_after(time, dispatch_get_main_queue()){
            self.highlight()
        }
        let delay2 = 1 * Double(NSEC_PER_SEC)
        let time2 = dispatch_time(DISPATCH_TIME_NOW, Int64(delay2))
        dispatch_after(time2, dispatch_get_main_queue()){
            self.dehighlight()
            self.currentIndex++
        }
    }
    func display2test() {
        let delay3 = 1.5 * Double(NSEC_PER_SEC)
        let time3 = dispatch_time(DISPATCH_TIME_NOW, Int64(delay3))
        dispatch_after(time3, dispatch_get_main_queue()){
            self.highlight()
        }
        let delay4 = 2 * Double(NSEC_PER_SEC)
        let time4 = dispatch_time(DISPATCH_TIME_NOW, Int64(delay4))
        dispatch_after(time4, dispatch_get_main_queue()){
            self.dehighlight()
            self.currentIndex++
        }
    }
    func display3test() {
        let delay5 = 2.5 * Double(NSEC_PER_SEC)
        let time5 = dispatch_time(DISPATCH_TIME_NOW, Int64(delay5))
        dispatch_after(time5, dispatch_get_main_queue()){
            self.highlight()
        }
        let delay6 = 3 * Double(NSEC_PER_SEC)
        let time6 = dispatch_time(DISPATCH_TIME_NOW, Int64(delay6))
        dispatch_after(time6, dispatch_get_main_queue()){
            self.dehighlight()
            self.currentIndex++
        }
    }
    func display4test() {
        let delay7 = 3.5 * Double(NSEC_PER_SEC)
        let time7 = dispatch_time(DISPATCH_TIME_NOW, Int64(delay7))
        dispatch_after(time7, dispatch_get_main_queue()){
            self.highlight()
        }
        let delay8 = 4 * Double(NSEC_PER_SEC)
        let time8 = dispatch_time(DISPATCH_TIME_NOW, Int64(delay8))
        dispatch_after(time8, dispatch_get_main_queue()){
            self.dehighlight()
            self.currentIndex++
        }
    }
    func display5test() {
        let delay9 = 4.5 * Double(NSEC_PER_SEC)
        let time9 = dispatch_time(DISPATCH_TIME_NOW, Int64(delay9))
        dispatch_after(time9, dispatch_get_main_queue()){
            self.highlight()
        }
        let delay10 = 5 * Double(NSEC_PER_SEC)
        let time10 = dispatch_time(DISPATCH_TIME_NOW, Int64(delay10))
        dispatch_after(time10, dispatch_get_main_queue()){
            self.dehighlight()
            self.currentIndex++
        }
    }
    
    func highlight() {
        let displayButton = gamePattern[currentIndex]
        
        switch displayButton {
        case 1: Button1.backgroundColor = UIColor(red:100/255, green:100/255, blue:100/255, alpha:0.5)
        case 2: Button2.backgroundColor = UIColor(red:100/255, green:100/255, blue:100/255, alpha:0.5)
        case 3: Button3.backgroundColor = UIColor(red:100/255, green:100/255, blue:100/255, alpha:0.5)
        case 4: Button4.backgroundColor = UIColor(red:100/255, green:100/255, blue:100/255, alpha:0.5)
        case 5: Button5.backgroundColor = UIColor(red:100/255, green:100/255, blue:100/255, alpha:0.5)
        case 6: Button6.backgroundColor = UIColor(red:100/255, green:100/255, blue:100/255, alpha:0.5)
        case 7: Button7.backgroundColor = UIColor(red:100/255, green:100/255, blue:100/255, alpha:0.5)
        case 8: Button8.backgroundColor = UIColor(red:100/255, green:100/255, blue:100/255, alpha:0.5)
        case 9: Button9.backgroundColor = UIColor(red:100/255, green:100/255, blue:100/255, alpha:0.5)
        default: print("error")
        }
    }
    
    func dehighlight() {
        let displayButton = gamePattern[currentIndex]
        
        switch displayButton {
        case 1: Button1.backgroundColor = UIColor(red:255/255, green:255/255, blue:255/255, alpha:0.5)
        case 2: Button2.backgroundColor = UIColor(red:255/255, green:255/255, blue:255/255, alpha:0.5)
        case 3: Button3.backgroundColor = UIColor(red:255/255, green:255/255, blue:255/255, alpha:0.5)
        case 4: Button4.backgroundColor = UIColor(red:255/255, green:255/255, blue:255/255, alpha:0.5)
        case 5: Button5.backgroundColor = UIColor(red:255/255, green:255/255, blue:255/255, alpha:0.5)
        case 6: Button6.backgroundColor = UIColor(red:255/255, green:255/255, blue:255/255, alpha:0.5)
        case 7: Button7.backgroundColor = UIColor(red:255/255, green:255/255, blue:255/255, alpha:0.5)
        case 8: Button8.backgroundColor = UIColor(red:255/255, green:255/255, blue:255/255, alpha:0.5)
        case 9: Button9.backgroundColor = UIColor(red:255/255, green:255/255, blue:255/255, alpha:0.5)
        default: print("error")
        }
    }
    
    func checker() {
        if (playPattern.count == gamePattern.count) {
            var checkStatus: Int = 0
            for var i = 0; i < 5; ++i {
                let r = gamePattern[i]
                let p = playPattern[i]
                if (p == r) {
                checkStatus++
                }
            }
            if (checkStatus == gamePattern.count){
                displayMessage(true)
            }
            else {
                displayMessage(false)
            }
        }
    }
    
    func displayMessage(winlose: Bool) {
        if(winlose == true){
            //print("WIN")
            let wintitle = "Success!"
            let winmessage = "You copied the pattern perfectly"
            let winalert = UIAlertController(title: wintitle,message: winmessage, preferredStyle: .Alert)
            let winaction = UIAlertAction(title: "Awesome", style: .Default, handler: nil)
            winalert.addAction(winaction)
            presentViewController(winalert, animated: true, completion: nil)
            gamePattern = [0]
        }
        if(winlose == false){
            //print("LOSE")
            let losetitle = "Failure!"
            let losemessage = "You copied the pattern incorrectly"
            let losealert = UIAlertController(title: losetitle,message: losemessage, preferredStyle: .Alert)
            let loseaction = UIAlertAction(title: "Darn", style: .Default, handler: nil)
            losealert.addAction(loseaction)
            presentViewController(losealert, animated: true, completion: nil)
            gamePattern = [0]
        }
    }
    
    @IBAction func startnewround(){
        gamePattern = [0]
        playPattern = []
        for var i = 0; i < 5; ++i {
            gamePattern.append(Int(arc4random_uniform(9))+1)
            print(gamePattern)
        }
        gamePattern.removeFirst()
        print(gamePattern)
        currentIndex = 0
        displayPattern()
    }
}