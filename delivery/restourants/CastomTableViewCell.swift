//
//  CastomTableViewCell.swift
//  delivery
//
//  Created by User on 20.06.2020.
//  Copyright © 2020 sad. All rights reserved.
//

import UIKit

class CastomTableViewCell: UITableViewCell {
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var restName: UILabel!
    @IBOutlet weak var restType: UILabel!
    @IBOutlet weak var averageCheck: UILabel!
    @IBOutlet weak var deliveryTime: UILabel!
    @IBOutlet weak var followers: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(rest: Restaurant){
        logoImage.image = UIImage(named: rest.image)
        restName.text = rest.name
        restType.text = rest.type
        averageCheck.text = rest.check
        deliveryTime.text = rest.deliveryTime
        followers.text = rest.folowers
        
    }
}
