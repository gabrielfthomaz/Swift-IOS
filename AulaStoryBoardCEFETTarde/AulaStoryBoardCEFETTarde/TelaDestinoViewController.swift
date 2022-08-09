//
//  TelaDestinoViewController.swift
//  AulaStoryBoardCEFETTarde
//
//  Created by Student on 08/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class TelaDestinoViewController: UIViewController {

    var infOrigem: String?
    
    @IBOutlet weak var infoDestinoLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        infoDestinoLabel.text = infOrigem
        
    }

}
