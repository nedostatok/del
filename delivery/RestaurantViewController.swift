//
//  RestaurantViewController.swift
//  delivery
//
//  Created by User on 20.06.2020.
//  Copyright © 2020 sad. All rights reserved.
//

import UIKit

class RestaurantViewController: UIViewController {
    let restaurantsArray: [Restaurant] = [Restaurant(name: "McDonalds", check: 150, type: "Fastfood", deliveryTime: "20 мин", folowers: 666, image: "mac"),
                                          Restaurant(name: "KFC", check: 200, type: "FastFood", deliveryTime: "30 мин", folowers: 500, image: "kfc"),
                                          Restaurant(name: "BurgerKing", check: 300, type: "Fastfood", deliveryTime: "15 мин", folowers: 400, image: "burgerKing"),]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}

extension RestaurantViewController: UITableViewDelegate{}

extension RestaurantViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CastomTableViewCell else {return UITableViewCell()}
        
        
        cell.logoImage.image = UIImage(named: restaurantsArray[indexPath.row].image)
        cell.restName.text = restaurantsArray[indexPath.row].name
        cell.restType.text = restaurantsArray[indexPath.row].type
        cell.averageCheck.text = String(restaurantsArray[indexPath.row].check)
        cell.followers.text = String(restaurantsArray[indexPath.row].folowers)
        cell.deliveryTime.text = restaurantsArray[indexPath.row].deliveryTime
        
        

        
        return cell
    }
    
    
}
