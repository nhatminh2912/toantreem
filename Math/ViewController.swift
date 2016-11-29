//
//  ViewController.swift
//  Math
//
//  Created by Nhật Minh on 11/25/16.
//  Copyright © 2016 Nhật Minh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setRandom()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(thoigian), userInfo: nil, repeats: true)
    }

    var counter = 30
    
    var timer = Timer()
    
    @IBOutlet weak var lbl_p1: UILabel!
    
    @IBOutlet weak var signLbl: UILabel!
    
    @IBOutlet weak var lbl_p2: UILabel!
    
    @IBOutlet weak var btn_b1: UIButton!
    
    @IBOutlet weak var btn_b2: UIButton!
    
    @IBOutlet weak var btn_b3: UIButton!
    
    @IBOutlet weak var lbl_timer: UILabel!
    
    @IBAction func traloi_btn(_ sender: UIButton) {
        
        setRandom()
    }
    
    func thoigian()
    {
        counter -= 1
        if counter == 0
        {
            timer.invalidate()
            btn_b1.isEnabled = false
            btn_b2.isEnabled = false
            btn_b3.isEnabled = false
            print("you lost!")
            
        }
        
        lbl_timer.text = "\(counter)"
    }
    
    
    
    func setRandom() {
        let random1 = Int(arc4random_uniform(4)) + 1
        let random2 = Int(arc4random_uniform(4)) + 1
        lbl_p1.text = String(random1)
        lbl_p2.text = String(random2)
        setResult(randomA: random1, randomB: random2)
    }
    
    func setResult(randomA: Int, randomB: Int)
    {   let randompt = Int(arc4random_uniform(4))
        
        let randomvt = Int(arc4random_uniform(3))
        if randompt == 0 {
            
            signLbl.text = "+"
        }
        else if randompt == 1 {
            
            signLbl.text = "-"
        }
        else if randompt == 2 {
            
            signLbl.text = "x"
        }
        else {
            
            signLbl.text = ":"
        }
        if randomvt == 0 {
            if randompt == 0 {
                btn_b1.setTitle(String(sum(p1: randomA, p2: randomB)) , for: .normal)
                btn_b2.setTitle(String(sum(p1: randomA, p2: randomB) + Int(arc4random_uniform(4) + 1)) , for: .normal)
                btn_b3.setTitle(String(sum(p1: randomA, p2: randomB) - Int(arc4random_uniform(4) + 1)) , for: .normal)
            }
            else if  randompt == 1 {
                btn_b1.setTitle(String(sub(p1: randomA, p2: randomB) - Int(arc4random_uniform(4) + 1)) , for: .normal)
                btn_b2.setTitle(String(sub(p1: randomA, p2: randomB)) , for: .normal)
                btn_b3.setTitle(String(sub(p1: randomA, p2: randomB) + Int(arc4random_uniform(4) + 1)) , for: .normal)
            }
            else if  randompt == 2 {
                btn_b1.setTitle(String(multi(p1: randomA, p2: randomB) + Int(arc4random_uniform(4) + 1)) , for: .normal)
                btn_b2.setTitle(String(multi(p1: randomA, p2: randomB) - Int(arc4random_uniform(4) + 1)) , for: .normal)
                btn_b3.setTitle(String(multi(p1: randomA, p2: randomB)) , for: .normal)
            }
            else if  randompt == 3 {
                btn_b1.setTitle(String(format: "%.1f", div(p1: randomA, p2: randomB)) , for: .normal)
                btn_b2.setTitle(String(format: "%.1f", div(p1: randomA, p2: randomB) - Float(arc4random_uniform(4) + 1)) , for: .normal)
                btn_b3.setTitle(String(format: "%.1f", div(p1: randomA, p2: randomB) + Float(arc4random_uniform(4) + 1)) , for: .normal)
            }
        }
        else if randomvt == 1 {
            
            if randompt == 0 {
                btn_b1.setTitle(String(sum(p1: randomA, p2: randomB) - Int(arc4random_uniform(4) + 2)) , for: .normal)
                btn_b2.setTitle(String(sum(p1: randomA, p2: randomB) + Int(arc4random_uniform(4) + 2)) , for: .normal)
                btn_b3.setTitle(String(sum(p1: randomA, p2: randomB)) , for: .normal)
            }
            else if  randompt == 1 {
                btn_b1.setTitle(String(sub(p1: randomA, p2: randomB)) , for: .normal)
                btn_b2.setTitle(String(sub(p1: randomA, p2: randomB) + Int(arc4random_uniform(4) + 2)) , for: .normal)
                btn_b3.setTitle(String(sub(p1: randomA, p2: randomB) - Int(arc4random_uniform(4) + 2)) , for: .normal)
            }
            else if  randompt == 2 {
                btn_b1.setTitle(String(multi(p1: randomA, p2: randomB) - Int(arc4random_uniform(4) + 2)) , for: .normal)
                btn_b2.setTitle(String(multi(p1: randomA, p2: randomB)) , for: .normal)
                btn_b3.setTitle(String(multi(p1: randomA, p2: randomB) + Int(arc4random_uniform(4) + 2)) , for: .normal)
            }
            else if  randompt == 3 {
                btn_b1.setTitle(String(format: "%.1f", div(p1: randomA, p2: randomB) + Float(arc4random_uniform(4) + 2)) , for: .normal)
                btn_b2.setTitle(String(format: "%.1f", div(p1: randomA, p2: randomB)) , for: .normal)
                btn_b3.setTitle(String(format: "%.1f", div(p1: randomA, p2: randomB) - Float(arc4random_uniform(4) + 2)) , for: .normal)
            }
        }
        else if randomvt == 2 {
            if randompt == 0 {
                btn_b1.setTitle(String(sum(p1: randomA, p2: randomB) + Int(arc4random_uniform(4) + 3)) , for: .normal)
                btn_b2.setTitle(String(sum(p1: randomA, p2: randomB)) , for: .normal)
                btn_b3.setTitle(String(sum(p1: randomA, p2: randomB) - Int(arc4random_uniform(4) + 3)) , for: .normal)
            }
            else if randompt == 1 {
                btn_b1.setTitle(String(sub(p1: randomA, p2: randomB) - Int(arc4random_uniform(4) + 3) ) , for: .normal)
                btn_b2.setTitle(String(sub(p1: randomA, p2: randomB) + Int(arc4random_uniform(4) + 3)) , for: .normal)
                btn_b3.setTitle(String(sub(p1: randomA, p2: randomB)) , for: .normal)
            }
            else if  randompt == 2 {
                btn_b1.setTitle(String(multi(p1: randomA, p2: randomB)) , for: .normal)
                btn_b2.setTitle(String(multi(p1: randomA, p2: randomB) + Int(arc4random_uniform(4) + 3)) , for: .normal)
                btn_b3.setTitle(String(multi(p1: randomA, p2: randomB) - Int(arc4random_uniform(4) + 3)) , for: .normal)
            }
            else if  randompt == 3 {
                btn_b1.setTitle(String(format: "%.1f", div(p1: randomA, p2: randomB) + Float(arc4random_uniform(4) + 3)) , for: .normal)
                btn_b2.setTitle(String(format: "%.1f", div(p1: randomA, p2: randomB) - Float(arc4random_uniform(4) + 3)) , for: .normal)
                btn_b3.setTitle(String(format: "%.1f", div(p1: randomA, p2: randomB)) , for: .normal)
            }
        }
        
        if randompt == 0 {
            
            signLbl.text = "+"
        }
        else if randompt == 1 {
            
            signLbl.text = "-"
        }
        else if randompt == 2 {
            
            signLbl.text = "x"
        }
        else {
            
            signLbl.text = ":"
        }
    }
    
    func sum(p1: Int, p2: Int) -> Int
    {
        return p1+p2;
    }
    
    func sub(p1: Int, p2: Int) -> Int
    {
        return p1-p2;
    }
    func multi(p1: Int, p2: Int) -> Int{
        return p1*p2
    }
    func div(p1: Int, p2: Int) -> Float{
        return Float(p1)/Float(p2)
    }
    



}

