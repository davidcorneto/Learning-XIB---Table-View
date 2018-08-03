//
//  ThirdViewController.swift
//  Learning XIB
//
//  Created by David Cornelius on 30/07/18.
//  Copyright © 2018 David Cornelius. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    
    var nama : String = ""
    var decs : String = ""
    var price : Int = 0
    var image : UIImage = #imageLiteral(resourceName: "furniture4")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(nama)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
