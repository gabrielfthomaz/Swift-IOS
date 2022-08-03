//
//  ViewController.swift
//  hackatruckCalcIMC
//
//  Created by Student on 03/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textoPeso: UITextField!
    
    
    @IBOutlet weak var textoAltura: UITextField!
    
    
    @IBAction func botaoEnviar(_ sender: Any) {
        
        let pesoOK = Double(textoPeso.text!)
        let alturaOk = Double(textoAltura.text!)
        
        let resultado = pesoOK! / (alturaOk! * alturaOk!)
        textoResultado.text = String(resultado)
    }
    
    
    @IBOutlet weak var textoResultado: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

