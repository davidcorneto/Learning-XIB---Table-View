//
//  SecondCell.swift
//  Learning XIB
//
//  Created by David Cornelius on 30/07/18.
//  Copyright © 2018 David Cornelius. All rights reserved.
//

import UIKit

protocol secondCellDelegate: class{
    func increaseQuantity()
    func decreaseQuantity()
}


class SecondCell: UITableViewCell {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productDesc: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    @IBOutlet weak var btnIncrease: UIButton!
    @IBOutlet weak var btnDecrease: UIButton!
    @IBOutlet weak var productQuantity: UILabel!
    @IBOutlet weak var viewCell: UIView!
    
    weak var delegate: secondCellDelegate?
    
    var quantity = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func increaseQuantity(_ sender: Any) {
        delegate?.increaseQuantity()
    }
    
    @IBAction func decreaseQuantity(_ sender: Any) {
        delegate?.decreaseQuantity()
    }
    
    
    
    
}
