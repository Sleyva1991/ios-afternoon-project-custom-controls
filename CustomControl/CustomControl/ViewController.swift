//
//  ViewController.swift
//  CustomControl
//
//  Created by Steven Leyva on 9/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func updateRating(_ ratingControl: CustomControl) {
        self.title = "User Rating: \(ratingControl.value) stars"
    }
    
}

