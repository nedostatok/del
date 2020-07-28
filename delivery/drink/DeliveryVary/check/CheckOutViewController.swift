//
//  CheckOutViewController.swift
//  delivery
//
//  Created by User on 25.06.2020.
//  Copyright © 2020 sad. All rights reserved.
//

import UIKit

class CheckOutViewController: UIViewController {
    var foodName: String?
    var foodPrice: String?
    var deliveryVary: DeliveryType?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toRootVC(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
}

extension CheckOutViewController: UITableViewDelegate{}
extension CheckOutViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? CheckTableViewCell else { return UITableViewCell() }
        
        switch indexPath.row {
        case 0:
            cell.titleLabel.text = deliveryVary?.type
            cell.moneyLabel.text = deliveryVary?.price
        case 1:
            cell.titleLabel.text = self.foodName
            cell.moneyLabel.text = self.foodPrice
        case 2:
            cell.titleLabel.text = "Total"
            
            let fprice = Double(Int(foodPrice!)!)
            let dprice = deliveryVary!.price
            let d = Double(dprice)
            
            cell.moneyLabel.text = String(fprice + d!) + "грн"
            
        default:
            break
        }
        return cell
    }
}
