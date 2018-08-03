//
//  ViewController.swift
//  Learning XIB
//
//  Created by David Cornelius on 30/07/18.
//  Copyright © 2018 David Cornelius. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonGo(_ sender: Any) {
        
        //1. Initiate
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
    
}

