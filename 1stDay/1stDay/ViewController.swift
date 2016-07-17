//
//  ViewController.swift
//  1stDay
//
//  Created by thanawat on 7/17/2559 BE.
//  Copyright © 2559 thanawat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number: UILabel!
    var addNum = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapBtn(sender: UIButton) {
        addNum = addNum+1
        number.text = String(addNum)
    }

    @IBAction func resetBtn(sender: UIButton) {
        addNum = 0
        number.text = String(addNum)
    }
}

