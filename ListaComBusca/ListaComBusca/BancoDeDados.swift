//
//  BancoDeDados.swift
//  ListaComBusca
//
//  Created by Student on 05/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation


class Lista {
    
    let nomePais: String
    
    init(nomePais: String){
        
        self.nomePais = nomePais
        
        
    }
}

class PaisDAO {
    
    static func getList() -> [Lista] {
        
        return [
        
            Lista(nomePais: "África do Sul"),
            Lista(nomePais: "Brasil"),
            Lista(nomePais: "Chile"),
            Lista(nomePais: "Emirados Árabes Unidos"),
            Lista(nomePais: "Geórgia"),
            Lista(nomePais: "Irlanda"),
            Lista(nomePais: "Japão"),
            Lista(nomePais: "México"),
            Lista(nomePais: "Nova Zelândia"),
            Lista(nomePais: "Portugal"),
         
        
        ]
    }
    
    
}
