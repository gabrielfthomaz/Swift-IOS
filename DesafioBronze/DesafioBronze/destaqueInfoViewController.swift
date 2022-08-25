//
//  destaqueInfoViewController.swift
//  DesafioBronze
//
//  Created by Student on 17/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class destaqueInfoViewController: UIViewController {
    
    @IBOutlet weak var NomeImagem: UIImageView!
    @IBOutlet weak var destaqueTextView: UITextView!
    
    var nomeImagem: UIImage?
    var nomeArtista: String?
    var descricaoCompleta: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
            NomeImagem.image = nomeImagem
            title = nomeArtista
            destaqueTextView.text = descricaoCompleta
            
    }
    
}

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


