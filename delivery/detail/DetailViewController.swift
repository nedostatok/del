//
//  DetailViewController.swift
//  delivery
//
//  Created by User on 22.06.2020.
//  Copyright © 2020 sad. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var restName: UILabel!
    @IBOutlet weak var restType: UILabel!
    @IBOutlet weak var deliveryTime: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    var restourants: Restaurant?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        cunfigureInterface()
        
    }
    
    func cunfigureInterface() {
        logoImage.image = UIImage(named: restourants!.image)
        
        restName.text = restourants?.name
        restName.font = .boldSystemFont(ofSize: 17)
        restType.text = restourants?.type
        restType.font = .boldSystemFont(ofSize: 17)
        deliveryTime.text = restourants?.deliveryTime
        deliveryTime.font = .boldSystemFont(ofSize: 17)
        
        let date = Date()
        let calendar = Calendar.current
        
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        let second = calendar.component(.second, from: date)
        
        timeLabel.text = "\(hour):\(minutes):\(second)"
        
    }

}

extension DetailViewController: UITableViewDelegate {}
extension DetailViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restourants?.menu.count ?? 0
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? DetailTableViewCell else {return UITableViewCell()}
        
        let restArray = restourants?.menu[indexPath.row] 
        
        cell.configure(rest: restArray!)

        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let goToDrink = storyboard?.instantiateViewController(identifier: "DrinkViewController") as? DrinkViewController else { return }
        goToDrink.rest = restourants?.menu[indexPath.row]

        navigationController?.pushViewController(goToDrink, animated: true)
    }
}



