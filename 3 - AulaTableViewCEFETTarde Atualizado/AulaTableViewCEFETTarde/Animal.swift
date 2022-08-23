//
//  Animal.swift
//  AulaTableViewCEFETTarde
//
//  Created by Student on 04/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation

struct AnimalAPI: Decodable {
    
    let nome: String
    let especie: String
    let nomeDaFoto: String
    
}

class Animal {
    
    let nomeAnimal: String
    let especieAnimal: String
    let nomeFotoAnimal: String
    
    init(json: [String: AnyObject]){
        
        self.nomeAnimal = json["nomeAnimal"] as? String ?? ""
        self.especieAnimal = json["especieAnimal"] as? String ?? ""
        self.nomeFotoAnimal = json["nomeFotoAnimal"] as? String ?? ""
        
    }
}

/*
class AnimalDAO {

static func getEstacionamentos (callback: @escaping ((Animal) -> Void)) {
    
    let endpoint: String = "https://noderedaluno03202202.kgsx7kocpw2.us-south.codeengine.appdomain.cloud/read"
    
    guard let url = URL(string: endpoint) else {
        print("Erroooo: Cannot create URL")
        return
    }
    
    let urlRequest = URLRequest(url: url)
    
    let task = URLSession.shared.dataTask(with: urlRequest, completionHandler: { (data, response, error) in
        
        if error != nil {
            print("Error = \(String(describing: error))")
            return
        }
        
        let responseString = String(data: data!, encoding: String.Encoding.utf8)
        print("responseString = \(String(describing: responseString))")
        
        DispatchQueue.main.async() {
            do {
                if let json = try JSONSerialization.jsonObject(with: data!, options: []) as? [[String: AnyObject]] {
                    
                    let estacionamento = Animal(json: json[0])
                    
                    let nomeEstacinamento = estacionamento.nome
                    
                    callback(estacionamento)
                    
                }else {
                    
                    print("fudeuuuu")
                }
            } catch let error as NSError {
                print("Error = \(error.localizedDescription)")
            }
        }
        
        
    })
    
    task.resume()
}
  */
