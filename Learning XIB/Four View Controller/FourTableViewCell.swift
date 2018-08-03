//
//  FourTableViewCell.swift
//  Learning XIB
//
//  Created by David Cornelius on 30/07/18.
//  Copyright © 2018 David Cornelius. All rights reserved.
//

import UIKit

protocol anotherCellDelegate: class{
    func increaseQuantity()
    func decreaseQuantity()
}



class FourTableViewCell: UITableViewCell {

    @IBOutlet weak var judul: UILabel!
    @IBOutlet weak var desc: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
