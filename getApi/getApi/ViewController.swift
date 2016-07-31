//
//  ViewController.swift
//  getApi
//
//  Created by thanawat on 7/19/2559 BE.
//  Copyright © 2559 thanawat. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var JYP: UILabel!
    @IBOutlet weak var CHF: UILabel!
    @IBOutlet weak var CAD: UILabel!
    @IBOutlet weak var BRL: UILabel!
    @IBOutlet weak var BNG: UILabel!
    @IBOutlet weak var AUD: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        queryApi()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func queryApi () {
        Alamofire.request(.GET, "http://api.fixer.io/latest?base=USD")
            .responseJSON {  response in
                switch response.result {
                case .Success(let value):
                    self.AUD.text = String(value["rates"]!!["AUD"]!!)
                    self.BNG.text = String(value["rates"]!!["BGN"]!!)
                    self.BRL.text = String(value["rates"]!!["BRL"]!!)
                    self.CAD.text = String(value["rates"]!!["CAD"]!!)
                    self.BRL.text = String(value["rates"]!!["BRL"]!!)
                    self.CHF.text = String(value["rates"]!!["CHF"]!!)
                    self.JYP.text = String(value["rates"]!!["JPY"]!!)
//                   print (value["rates"]!!["USD"]!!)
                    // completionHandler(value as? NSDictionary, nil)
                case .Failure(let error):
                    print(error)
                    // completionHandler(nil, error)
                }
        }
    }
    
    @IBAction func didPressOnButton(sender: AnyObject) {
        self.performSegueWithIdentifier("PushView", sender: self)
    }
    
}

