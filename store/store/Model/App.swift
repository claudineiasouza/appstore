//
//  App.swift
//  store
//
//  Created by Mac Neia on 07/07/21.
//

import Foundation

struct App: Decodable {
    let id: Int
    let nome: String
    let empresa: String
    let avaliacao: String?
    let iconeUrl: String
    let descricao: String?
    let screenshotUrls: [String]?
    let comentarios: [AppComentario]?
}

struct AppDestaque: Decodable {
    let id: Int
    let nome: String
    let empresa: String
    let imagemUrl: String
    let descricao: String
}

struct AppGrupo: Decodable {
    let id: String
    let titulo: String
    let apps: [App]
}

struct AppComentario: Decodable {
    let id: Int
    let titulo: String
    let avaliacao: Int
    let descricao: String?
}
