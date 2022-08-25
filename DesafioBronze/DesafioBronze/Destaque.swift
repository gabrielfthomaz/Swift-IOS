//
//  Destaque.swift
//  DesafioBronze
//
//  Created by Student on 18/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation

struct DestaqueAPI: Decodable{
    
    let nomeMusica: String
    let nomeArtista:String
    let nomeFoto:String
    let descricaoBreve:String
    let descricaoCompleta:String
    
}


class Destaque {

    let nomeMusica: String
    let nomeArtista:String
    let nomeFoto:String
    let descricaoBreve:String
    let descricaoCompleta:String
    
    init(json: [String: String]) {
        self.nomeMusica = json["nomeMusica"] ?? ""
        self.nomeArtista = json["nomeArtista"] ?? ""
        self.nomeFoto = json["nomeFoto"] ?? ""
        self.descricaoBreve = json["descricaoBreve"] ?? ""
        self.descricaoCompleta = json["descricaoCompleta"] ?? ""
    }

}

/*
 
class DestaqueDAO{
static func getList()->Destaque{
    return Destaque(nomeMusica: "Fim de Semana no Rio" , nomeArtista: "Teto", nomeFoto: "teto", descricaoBreve: "É um cara bacana que toca um funk marotão!!!",descricaoCompleta: "Clériton Sávio Santos Silva (Jacobina, 19 de outubro de 2001) mais conhecido pelo seu nome artístico Teto, é um rapper, cantor e compositor brasileiro, que ficou conhecido através de prévias de suas músicas, que foram lançadas não oficialmente em vários canais do YouTube, alcançando milhões de visualizações e ganhando fama em redes sociais como o TikTok e Instagram")
        
    
    }

}
 
*/
