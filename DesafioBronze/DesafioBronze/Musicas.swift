//
//  Musicas.swift
//  DesafioBronze
//
//  Created by Student on 08/08/22.
//  Copyright © 2022 Student. All rights reserved.
//

import Foundation

struct MusicasAPI: Decodable {
    
    let nome: String
    let artista:String
    let nomeAlbum: String
    let nomeFoto:String
    
}

class Musicas {
    
    let nome: String
    let artista:String
    let nomeAlbum: String
    let nomeFoto:String
    
    init(json: [String: String]) {
        self.nome = json["nome"] ?? ""
        self.artista = json["artista"] ?? ""
        self.nomeFoto = json["nomeFoto"] ?? ""
        self.nomeAlbum = json["nomeAlbum"] ?? ""
    }
}




/*
class MusicasDAO{
    static func getList()->[Musicas]{
        return [
        Musicas(nome: "Anunciação", artista: "Alceu Valença", nomeFoto: "alceuV", nomeAlbum: "Album 01"),
        Musicas(nome: "New Perspective", artista: "Panic at the Disco", nomeFoto: "panicAt", nomeAlbum: "Album 02"),
        Musicas(nome: "Bring me to Life", artista: "Evanescence", nomeFoto: "evanescence", nomeAlbum: "Album 03"),
        Musicas(nome: "Numb", artista: "Link Park", nomeFoto: "linkP", nomeAlbum: "Album 04"),
        Musicas(nome: "WonderWall", artista: "Oasis", nomeFoto: "oasis", nomeAlbum: "Album 05"),
        Musicas(nome: "A tal Canção pra Lua", artista: "Vitor Kley", nomeFoto: "victorK", nomeAlbum: "Album 06"),
        Musicas(nome: "Fim de Semana no Rio" , artista: "Teto", nomeFoto: "teto", nomeAlbum: "Album 07")
        ]
    }
}
 */
