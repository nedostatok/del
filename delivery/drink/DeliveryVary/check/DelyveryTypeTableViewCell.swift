//
//  DelyveryTypeTableViewCell.swift
//  delivery
//
//  Created by User on 25.06.2020.
//  Copyright © 2020 sad. All rights reserved.
//

import UIKit

class DelyveryTypeTableViewCell: UITableViewCell {

    @IBOutlet weak var delType: UILabel!
    @IBOutlet weak var delPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
