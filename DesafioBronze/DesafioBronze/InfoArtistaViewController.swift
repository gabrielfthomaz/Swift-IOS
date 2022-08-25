//
//  InfoArtistaViewController.swift
//  DesafioBronze
//
//  Created by Student on 12/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class InfoArtistaViewController: UIViewController {
    
    var artistaAux : MusicasAPI?
    
    @IBOutlet weak var NomeImagem: UIImageView!
    
    @IBOutlet weak var LabelNomeDoArtista: UILabel!
    
    @IBOutlet weak var LabelNomeDoAlbum: UILabel!
    
    @IBOutlet weak var LabemNomeDaMusica: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NomeImagem.image = UIImage(named: artistaAux!.nomeFoto)
        LabelNomeDoArtista.text = artistaAux?.artista
        LabelNomeDoAlbum.text = artistaAux?.nomeAlbum
        LabemNomeDaMusica.text = artistaAux?.nome
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
   
    
}
