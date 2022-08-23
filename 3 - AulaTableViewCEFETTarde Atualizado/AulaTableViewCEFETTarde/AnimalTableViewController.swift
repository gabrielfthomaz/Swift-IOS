//
//  AnimalTableViewController.swift
//  AulaTableViewCEFETTarde
//
//  Created by Student on 04/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit



class AnimalTableViewController: UITableViewController {
    
    
    var animais = [AnimalAPI]()

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
        return animais.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "animal", for: indexPath)

        if let animalCell =  cell as? AnimalTableViewCell{
            
            let animal = animais[indexPath.row]
            
            animalCell.nomeAnimalLabel.text = animal.nome
            animalCell.especieAnimalLabel.text = animal.especie
            animalCell.nomeFotoAnimalImage.image = UIImage(named: animal.nomeDaFoto)
            
            return animalCell
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



func downloadJSON(completed: @escaping () -> ()) {
    
    let url = URL(string: "https://noderedaluno03202202.kgsx7kocpw2.us-south.codeengine.appdomain.cloud/listaranimais")
    URLSession.shared.dataTask(with: url!) { data, response, err in
        
        if err == nil {
            do {
                self.animais = try JSONDecoder().decode([AnimalAPI].self, from: data!)
                DispatchQueue.main.async {
                    completed()
                }
            }
            catch {
                print("error fetching data from api")
            }
        
        }
    } .resume()
  }

}
