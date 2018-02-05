//
//  KnockViewController.swift
//  iKid
//
//  Created by Andrew Tran on 2/5/18.
//  Copyright © 2018 Andrew Tran. All rights reserved.
//

import UIKit

class KnockViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    @IBOutlet weak var fifthLabel: UILabel!
    var labels: [UILabel] = []
    var currentLabel = 0
    var nextLabel = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labels.append(firstLabel)
        labels.append(secondLabel)
        labels.append(thirdLabel)
        labels.append(fourthLabel)
        labels.append(fifthLabel)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func flipJoke(_ sender: UIButton) {
        UIView.transition(from: self.labels[currentLabel], to: self.labels[nextLabel], duration: 0.5, options: .transitionFlipFromRight)
        currentLabel += 1
        nextLabel += 1
    }

}
