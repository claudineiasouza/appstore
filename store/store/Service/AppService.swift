//
//  AppService.swift
//  store
//
//  Created by Mac Neia on 09/07/21.
//

import UIKit

class AppService {
    
    static let shared = AppService()
    
    let API = "http://localhost/app-store/api/v1"
    
    func buscaAppsEmDestaque (completion: @escaping ([AppDestaque]?, Error?) -> () ) {
    guard let url = URL(string: "\(API)/apps/apps-em-destaque") else {return}
    
        URLSession.shared.dataTask(with: url) { (data, res, err) in
            if let err = err {
                completion(nil, err)
                return
            }
            do {
                guard let data = data else {return}
                let apps = try JSONDecoder().decode([AppDestaque].self, from: data)
                completion(apps, nil)
            } catch let err {
              completion(nil, err)
                return
            }
        }.resume()
    
}
    
    func buscaGrupo (tipo: String, completion: @escaping (AppGrupo?, Error?) -> ()) {
        guard let url = URL(string: "\(API)/apps/\(tipo)") else {return}
        
        URLSession.shared.dataTask(with: url) { (data, res, err) in
            if let err = err {
                completion(nil, err)
                return
            }
            do {
                guard let data = data else {return}
                let apps = try JSONDecoder().decode(AppGrupo.self, from: data)
                completion(apps, nil)
            } catch let err {
              completion(nil, err)
                return
            }
        }.resume()
        
    }
    
}
