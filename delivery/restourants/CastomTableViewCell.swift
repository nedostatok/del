//
//  CastomTableViewCell.swift
//  delivery
//
//  Created by User on 20.06.2020.
//  Copyright © 2020 sad. All rights reserved.
//

import UIKit

class CastomTableViewCell: UITableViewCell {
    @IBOutlet private weak var logoImage: UIImageView!
    @IBOutlet private weak var restName: UILabel!
    @IBOutlet private weak var restType: UILabel!
    @IBOutlet private weak var averageCheck: UILabel!
    @IBOutlet private weak var deliveryTime: UILabel!
    @IBOutlet private weak var followers: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        createLayerSettings()
        createRoundForImgView()
    }
    
    func createLayerSettings(){
        let colorForBorder = UIColor.gray
        
        self.layer.borderWidth = 1
        self.layer.borderColor = colorForBorder.cgColor
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 15
        self.backgroundColor = .cyan
    }
    
    func createRoundForImgView(){
        logoImage?.layer.cornerRadius = 30.0
        logoImage?.clipsToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
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
