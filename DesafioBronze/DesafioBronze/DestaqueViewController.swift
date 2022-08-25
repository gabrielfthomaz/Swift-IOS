//
//  DestaqueViewController.swift
//  DesafioBronze
//
//  Created by Student on 11/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class DestaqueViewController: UIViewController {
    
        
    @IBOutlet weak var nomeArtistaTitulo: UINavigationItem!
    @IBOutlet weak var nomeImagemDestaque: UIImageView!
    
    @IBOutlet weak var nomeArtistaLabel: UILabel!
    
    
    @IBOutlet weak var breveDescricaoTextView: UITextView!
    
    var destaque = [DestaqueAPI]()
    var descricaoOrigem: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJSON {
            self.view.reloadInputViews()
            print("success")
        
        
            
        self.nomeArtistaLabel.text = self.destaque[0].nomeArtista
        self.nomeImagemDestaque.image = UIImage(named:self.destaque[0].nomeFoto)
        self.breveDescricaoTextView.text = self.destaque[0].descricaoBreve
            self.descricaoOrigem = self.destaque[0].descricaoCompleta
        
        }
            
        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
       if segue.identifier == "infoDestaque"{
        if let nextView = segue.destination as? destaqueInfoViewController {
           
            nextView.nomeArtista = nomeArtistaLabel.text
            nextView.nomeImagem = nomeImagemDestaque.image
            nextView.descricaoCompleta = descricaoOrigem
           
          
        }
            
    }

}
        
        func downloadJSON(completed: @escaping () -> ()) {
            let url = URL(string: "https://noderedaluno03202202.kgsx7kocpw2.us-south.codeengine.appdomain.cloud/lerDestaque")
            
            URLSession.shared.dataTask(with: url!) {data, response, err in
                
                if err == nil {
                    do {
                        self.destaque = try JSONDecoder().decode([DestaqueAPI].self, from:data!)
                        DispatchQueue.main.async {
                            completed()
                        }
                    }
                    catch {
                        print("error fetching data from api")
                    }
                }
            }.resume()
            
            
        }
        
    }

