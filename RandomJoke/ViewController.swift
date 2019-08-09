//
//  ViewController.swift
//  RandomJoke
//
//  Created by Prapasiri Lertkriangkraiying on 8/8/2562 BE.
//  Copyright © 2562 Prapasiri Lertkriangkraiying. All rights reserved.
//

//import UIKit
//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
//
//    @IBAction func buttonTapped(_ sender: Any) {
//        let apimanager = APIManager()
//        apimanager.getRandomJoke()
//    }
//
//}

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var fuckLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped() {
        APIManager().getRandomJoke { [weak self] (joke) in
            DispatchQueue.main.sync {
                guard let joke = joke else {
                    return
                }
                print(joke)
                self?.jokeLabel.text = joke.message
            }
        }
    }
    
    
    @IBAction func fuckButtonTapped(_ sender: Any) {
        
        APIManager().getRandomJoke { [weak self] (fuck) in
            DispatchQueue.main.sync {
                guard let fuck = fuck else {
                    return
                }
                print(fuck)
                self?.fuckLabel.text = fuck.message
            }
        }
        
    }
    
    
    
}


