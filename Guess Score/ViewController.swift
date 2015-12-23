//
//  ViewController.swift
//  Find Finger
//
//  Created by 迫 佑樹 on 2015/12/23.
//  Copyright © 2015年 迫 佑樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var input: UITextField!
    @IBOutlet var output: UILabel!
    
    var random = Int(arc4random_uniform(101))
    
    var count = 0
    
    
    @IBAction func submit(sender: AnyObject) {
        
        
        let answer = Int(input.text!)
        count += 1
        
        if answer < 0 || answer > 100   {
                output.text = "入力は0〜100にしてください"
        } else if answer < random {
            output.text = "もっと高かった♪♪"
        } else if answer > random  {
            output.text = "もっと低かった...!!"
        } else  {
            output.text = "正解!!! \(count) 回目で当たった！"
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        print(random)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

