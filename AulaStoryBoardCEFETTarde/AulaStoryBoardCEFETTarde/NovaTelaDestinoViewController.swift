//
//  NovaTelaDestinoViewController.swift
//  AulaStoryBoardCEFETTarde
//
//  Created by Student on 08/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class NovaTelaDestinoViewController: UIViewController {
    
    var infoOrigem: String?
    
    @IBOutlet weak var novaInfoDestinoLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        novaInfoDestinoLabel.text = infoOrigem

        if infoOrigem != nil {
            
            switch infoOrigem!.lowercased(){
                
            case "azul":
                self.view.backgroundColor = UIColor.blue
                
            case "laranja":
                self.view.backgroundColor = UIColor.orange
                
            case "roxo":
                self.view.backgroundColor = UIColor.purple
                
            default:
                self.view.backgroundColor = UIColor.black
            }
        }
        
    }
    

   

}
