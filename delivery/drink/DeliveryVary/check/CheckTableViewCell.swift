//
//  CheckTableViewCell.swift
//  delivery
//
//  Created by User on 26.06.2020.
//  Copyright © 2020 sad. All rights reserved.
//

import UIKit

class CheckTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
