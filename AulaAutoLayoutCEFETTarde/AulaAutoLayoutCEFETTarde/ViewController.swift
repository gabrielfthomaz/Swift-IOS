//
//  ViewController.swift
//  AulaAutoLayoutCEFETTarde
//
//  Created by Student on 03/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var resultadoLabel: UILabel!
    
    
    @IBOutlet weak var origemTextField: UITextField!
    
    
    @IBAction func mudarNome(_ sender: Any) {
        
        resultadoLabel.text = origemTextField.text
        origemTextField.text = ""
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

