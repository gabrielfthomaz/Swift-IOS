//
//  ListaDeMusicas.swift
//  AppDeMusica
//
//  Created by Student on 08/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation

class listaDeMusica{
    
    let titulo: String?
    let subtitulo: String?
    
    init(titulo: String, subtitulo: String){
        self.titulo = titulo
        self.subtitulo = subtitulo
        
    }
}


class listaDeMusicaDAO{
    
    static func getList() -> [listaDeMusica]{
        return [
            listaDeMusica( titulo: "Pericles", subtitulo: "Timidez"),
            listaDeMusica( titulo: "Pericles", subtitulo: "Mandas No Meu Coração")
        ]
    }
}
