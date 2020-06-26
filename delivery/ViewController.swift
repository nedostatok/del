//
//  ViewController.swift
//  delivery
//
//  Created by User on 19.06.2020.
//  Copyright © 2020 sad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var checkInOut: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkInOut.layer.cornerRadius = 10

    }
    @IBAction func goToChoseRest(_ sender: UIButton) {
        let toChoiseRest = storyboard?.instantiateViewController(identifier: "tableViev") as? RestaurantViewController
        navigationController?.pushViewController(toChoiseRest!, animated: true)
    }
    
    @IBAction func alredyButton(_ sender: UIButton) {
        let alertController = UIAlertController(title: "HI", message: "Comming soon", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alertController.addAction(alertAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
}

