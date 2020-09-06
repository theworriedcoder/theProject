//
//  SecondViewController.swift
//  Carefulkoala
//
//  Created by K Ma on 9/5/20.
//  Copyright © 2020 K Ma. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
  
    @IBAction func Theb(_ sender: Any) {
        self.performSegue(withIdentifier: "QuizViewSegue", sender: self)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

