//
//  DeliveryVaryViewController.swift
//  delivery
//
//  Created by User on 25.06.2020.
//  Copyright © 2020 sad. All rights reserved.
//

import UIKit

class DeliveryVaryViewController: UIViewController {
    @IBOutlet weak var unlimButton: UIButton!
    @IBOutlet weak var basicButton: UIButton!
    
    var foodName: String?
    var foodPrice: String?
    var rest: Menu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButtons()
    }
    
    func configureButtons() {
        unlimButton.layer.cornerRadius = 10
        basicButton.layer.cornerRadius = 10
    }
    
    @IBAction func getUnlimDelivery(_ sender: UIButton) {
        guard  let goToCheck = storyboard?.instantiateViewController(withIdentifier: "CheckOutViewController") as? CheckOutViewController else { return }
        
        goToCheck.foodName = rest?.foodName
        goToCheck.foodPrice = rest?.foodPrice
        goToCheck.deliveryVary = rest?.deliveryType[0]
        navigationController?.pushViewController(goToCheck, animated: true)
    }
    
    @IBAction func getBasicDelivery(_ sender: Any) {
        guard  let goToCheck = storyboard?.instantiateViewController(withIdentifier: "CheckOutViewController") as? CheckOutViewController else { return }
        goToCheck.foodName = rest?.foodName
        goToCheck.foodPrice = rest?.foodPrice
        goToCheck.deliveryVary = rest?.deliveryType[1]
        navigationController?.pushViewController(goToCheck, animated: true)
    }
}
