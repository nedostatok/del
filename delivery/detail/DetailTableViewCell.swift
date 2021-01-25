//
//  DetailTableViewCell.swift
//  delivery
//
//  Created by User on 23.06.2020.
//  Copyright © 2020 sad. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var foodName: UILabel!
    @IBOutlet private weak var foodPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(rest: Menu){
        foodName.text = rest.foodName
        foodPrice.text = String(rest.foodPrice)
    }
}
