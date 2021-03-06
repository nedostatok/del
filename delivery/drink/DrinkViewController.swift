//
//  DrinkViewController.swift
//  delivery
//
//  Created by User on 24.06.2020.
//  Copyright © 2020 sad. All rights reserved.
//

import UIKit

class DrinkViewController: UIViewController {
    @IBOutlet weak var foodName: UILabel!
    @IBOutlet weak var foodPrice: UILabel!
    @IBOutlet weak var drinkCount: UILabel!
    
    var count: Int = 0
    var rest: Menu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    func configure() {
        foodName.text = rest?.foodName
        foodPrice.text = rest?.foodPrice
    }
    
    @IBAction func plussAction(_ sender: UIButton) {
        count += 1
        drinkCount.text = String(count)
    }
    
    @IBAction func minusAction(_ sender: UIButton) {
        if count < 1 {
            
        } else {
            count -= 1
            drinkCount.text = String(count)
        }
    }
    
    @IBAction func toDelVaries(_ sender: UIButton) {
        guard let goToDelivery = storyboard?.instantiateViewController(identifier: "DeliveryVaryViewController") as? DeliveryVaryViewController else { return }
        
        goToDelivery.foodName = foodName.text
        goToDelivery.foodPrice = foodPrice.text
        goToDelivery.rest = rest
        navigationController?.pushViewController(goToDelivery, animated: true)
    }
}

extension DrinkViewController: UITableViewDelegate {}
extension DrinkViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rest?.drink.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = rest?.drink[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let selected = tableView.cellForRow(at: indexPath) else { return }
        
        if selected.accessoryType == .checkmark{
            selected.accessoryType = .none
        } else {
            selected.accessoryType = .checkmark
        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        guard let selected = tableView.cellForRow(at: indexPath) else { return }
        
        if selected.accessoryType == .checkmark {
            selected.accessoryType = .none
        }
    }
}





