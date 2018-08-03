//
//  SecondViewController.swift
//  Learning XIB
//
//  Created by David Cornelius on 30/07/18.
//  Copyright © 2018 David Cornelius. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    var myCell = SecondCell()
    var myCellTwo = FourTableViewCell()
    
    var quantity = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myCell.delegate = self
        
        tableView.register(UINib(nibName: "SecondCell", bundle: nil), forCellReuseIdentifier: "globalViewForEveryoneIdentifier")
        
        tableView.register(UINib(nibName: "FourTableViewCell", bundle: nil), forCellReuseIdentifier: "anotherCell")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


extension SecondViewController: UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
}

extension SecondViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row >= 6 {
            return 150
        }
        
        return 100
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
       
        if indexPath.row >= 6 {
            myCellTwo = tableView.dequeueReusableCell(withIdentifier: "anotherCell", for: indexPath) as! FourTableViewCell
            
//            myCellTwo.delegate = self
//
//
            return myCellTwo
            

        }else{
            myCell = tableView.dequeueReusableCell(withIdentifier: "globalViewForEveryoneIdentifier", for: indexPath) as! SecondCell
            
            myCell.viewCell.layer.cornerRadius = 5.0
            
            
             myCell.delegate = self
            
            
            switch indexPath.row {
            case 0:
                
                myCell.productImage.image = #imageLiteral(resourceName: "furniture1")
                myCell.productName.text = "Furniture Rumah Minimalis"
                myCell.productDesc.text = "Untuk rumah kesayangan anda"
                myCell.productPrice.text = "Rp 10.000.000"
            case 1:
                myCell.productImage.image = #imageLiteral(resourceName: "furniture2")
                myCell.productName.text = "Furniture Rumah Modern"
                myCell.productDesc.text = "Tempat nyaman dan asri"
                myCell.productPrice.text = "Rp 14.000.000"
            case 2:
                myCell.productImage.image = #imageLiteral(resourceName: "furniture3")
                myCell.productName.text = "Furniture Rumah Contemporer"
                myCell.productDesc.text = "Untuk pasangan Anda"
                myCell.productPrice.text = "Rp 13.000.000"
            default:
                myCell.productImage.image = #imageLiteral(resourceName: "furniture4")
                myCell.productName.text = "Furniture Rumah Traditional"
                myCell.productDesc.text = "Untuk buah hati Anda"
                myCell.productPrice.text = "Rp 20.000.000"
            }
            
            
            myCell.btnIncrease.tag = indexPath.row
            myCell.btnDecrease.tag = indexPath.row
            
            //Set Quantity Per Cell
            myCell.productQuantity.text = "\(quantity)"
            
            return myCell
        }
        
       
        
       
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row \(indexPath.row)")
        
        
        
        let thirdVC = ThirdViewController()
        thirdVC.nama = "\(myCell.productName.text!)"
        self.navigationController?.pushViewController(thirdVC, animated: true)
        
    }
}


extension SecondViewController: secondCellDelegate{
    func increaseQuantity() {
        print("Increase Quantity")
        print(myCell.quantity)
        self.quantity += self.quantity
        tableView.reloadData()
        
    }
    
    func decreaseQuantity() {
        print("Decrease Quantity")
        if quantity != 0 {
            self.quantity -= self.quantity
            tableView.reloadData()
        }
    }
}


