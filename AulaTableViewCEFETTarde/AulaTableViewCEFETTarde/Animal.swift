//
//  Animal.swift
//  AulaTableViewCEFETTarde
//
//  Created by Student on 04/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation

class Animal {
    
    let nomeAnimal: String
    let especieAnimal: String
    let nomeFotoAnimal: String
    
    init(nomeAnimal: String, especieAnimal: String, nomeFotoAnimal: String){
        
        self.nomeAnimal = nomeAnimal
        self.especieAnimal = especieAnimal
        self.nomeFotoAnimal = nomeFotoAnimal
        
    }
}

class AnimalDAO {
    
    static func getList() -> [Animal] {
        
        return [
        
            Animal(nomeAnimal: "Snoopy", especieAnimal: "Cachorro", nomeFotoAnimal: "cachorro"),
            Animal(nomeAnimal: "Donald", especieAnimal: "Pato", nomeFotoAnimal: "pato"),
            Animal(nomeAnimal: "Jack", especieAnimal: "Canguru", nomeFotoAnimal: "canguru"),
            Animal(nomeAnimal: "Zé", especieAnimal: "Papagaio", nomeFotoAnimal: "papagaio"),
            Animal(nomeAnimal: "Camel", especieAnimal: "Camelo", nomeFotoAnimal: "camelo")
        
        ]
    }
    
    
}
