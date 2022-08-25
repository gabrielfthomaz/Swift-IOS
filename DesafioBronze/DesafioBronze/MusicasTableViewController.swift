//
//  MusicasTableViewController.swift
//  DesafioBronze
//
//  Created by Student on 08/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class MusicasTableViewController: UITableViewController {

    var musicas = [MusicasAPI]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJSON {
            self.tableView.reloadData()
            print("success")
        }
        

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return musicas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "musicas", for: indexPath)

        if let musicasCell = cell as? MusicaTableViewCell {
            let musicaArray = musicas[indexPath.row]
            musicasCell.NomeMusicaLabel.text = musicaArray.nome
            musicasCell.NomeArtistaLabel.text = musicaArray.artista
            return musicasCell
        }

        return cell
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    //In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         
        if segue.identifier == "infoArtista"{
            if let novaView = segue.destination as? InfoArtistaViewController {
                let celulaSelecionada = tableView.indexPathForSelectedRow?.row
                let musicaDaCelula = musicas[celulaSelecionada!]
                novaView.artistaAux = musicaDaCelula
            }
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

    
    func downloadJSON(completed: @escaping () -> ()) {
        let url = URL(string: "https://noderedaluno03202202.kgsx7kocpw2.us-south.codeengine.appdomain.cloud/ler")
        
        URLSession.shared.dataTask(with: url!) {data, response, err in
            
            if err == nil {
                do {
                    self.musicas = try JSONDecoder().decode([MusicasAPI].self, from:data!)
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
