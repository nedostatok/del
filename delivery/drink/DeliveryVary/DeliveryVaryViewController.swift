//
//  DeliveryVaryViewController.swift
//  delivery
//
//  Created by User on 25.06.2020.
//  Copyright © 2020 sad. All rights reserved.
//

import UIKit

class DeliveryVaryViewController: UIViewController {
    var foodName: String?
    var foodPrice: String?
    
    var rest: Menu?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToCheckout(_ sender: UIButton) {
        if sender.tag == 0 {
            guard let goToCheck = storyboard?.instantiateViewController(identifier: "CheckOutViewController") as? CheckOutViewController else { return }
            goToCheck.foodName = self.foodName!
            goToCheck.foodPrice = self.foodPrice!
            goToCheck.deliveryVary = rest?.deliveryType[0]
            navigationController?.pushViewController(goToCheck, animated: true)
        } else {
            guard let goToCheck = storyboard?.instantiateViewController(identifier: "CheckOutViewController") as? CheckOutViewController else { return }
            goToCheck.foodName = self.foodName!
            goToCheck.foodPrice = self.foodPrice!
            goToCheck.deliveryVary = rest?.deliveryType[1]
            navigationController?.pushViewController(goToCheck, animated: true)
        }
    }
    

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
