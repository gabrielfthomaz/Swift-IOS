//
//  TelaOrigemViewController.swift
//  AulaStoryBoardCEFETTarde
//
//  Created by Student on 08/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class TelaOrigemViewController: UIViewController {

    @IBOutlet weak var OrigemTestField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueTelaVerde"{
        
            if let viewDestino = segue.destination as? NovaTelaDestinoViewController{
            
                viewDestino.infoOrigem = OrigemTestField.text
        }
    }
    

}
}
