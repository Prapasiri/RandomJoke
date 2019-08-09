//
//  ViewController.swift
//  RandomJoke
//
//  Created by Prapasiri Lertkriangkraiying on 8/8/2562 BE.
//  Copyright © 2562 Prapasiri Lertkriangkraiying. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: Any) {
        let apimanager = APIManager()
        apimanager.getRandomJoke()
    }
    
}

