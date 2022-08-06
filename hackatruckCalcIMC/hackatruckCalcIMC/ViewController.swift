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
    
     @IBOutlet weak var textoResultado: UILabel!
    
    @IBOutlet weak var textoAltura: UITextField!
    
    @IBAction func botaoEnviar(_ sender: Any) {
        
//        let pesoOK = Double(textoPeso.text!)
//        let alturaOk = Double(textoAltura.text!)
//
//        let resultado = pesoOK! / (alturaOk! * alturaOk!)
//        textoResultado.text = String(resultado)
        
        
        if (textoPeso.text!.isEmpty)||(textoAltura.text!.isEmpty) == true {


           let alert = UIAlertController(title: "Atenção", message: "Informe o Peso e a Altura.", preferredStyle: UIAlertController.Style.alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

           present(alert, animated: true, completion: nil)
            
       }else{
            
            let pesoOK = Double(textoPeso.text!)
            let alturaOk = Double(textoAltura.text!)
            
            let resultado = pesoOK! / (alturaOk! * alturaOk!)
            textoResultado.text = String(resultado)
    }
}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}


