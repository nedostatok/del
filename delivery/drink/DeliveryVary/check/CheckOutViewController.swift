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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}

extension CheckOutViewController: UITableViewDelegate{}
extension CheckOutViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell1 = tableView.dequeueReusableCell(withIdentifier: "cell1") as? DelyveryTypeTableViewCell else {return UITableViewCell()}
        let model = AllModel(delPack: deliveryVary!.type, delPrice: deliveryVary!.price)
        
        cell1.delPrice.text = model.delPrice
        cell1.delType.text = model.delPack
 
        
 

       return cell1
}

}
