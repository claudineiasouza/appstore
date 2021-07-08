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
    let screenshotUrls: [String]?
}
