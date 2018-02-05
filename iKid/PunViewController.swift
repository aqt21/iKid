//
//  SecondViewController.swift
//  iKid
//
//  Created by Andrew Tran on 2/4/18.
//  Copyright © 2018 Andrew Tran. All rights reserved.
//

import UIKit

class PunViewController: UIViewController {

    @IBOutlet weak var Question: UIImageView!
    @IBOutlet weak var Answer: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func flipJoke(_ sender: UIButton) {
        UIView.transition(from: Question, to: Answer, duration: 0.5, options: .transitionFlipFromRight)
        sender.isHidden = true
    }


}

