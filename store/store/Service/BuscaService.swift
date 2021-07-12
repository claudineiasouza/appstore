//
//  BuscaService.swift
//  store
//
//  Created by Mac Neia on 07/07/21.
//

import UIKit

class BuscaService {
    
    static let shared = BuscaService()
    
    func buscaApps (texto: String, completion: @escaping ([App]?, Error?) -> () ) {
        
        guard let url = URL(string: "http://192.168.0.27/app-store/api/v1//apps?search=\(texto)") else {return}
        
        URLSession.shared.dataTask(with: url) { (data, res, err) in
            
            if let err = err {
                completion(nil, err)
                return
            }
            do {
                guard let data = data else {return}
                let apps = try JSONDecoder().decode([App].self, from: data)
                completion(apps, nil)
            } catch let err {
                completion(nil, err)
                    return
                }
        }.resume()
    }
}
