//
//  BuscaService.swift
//  store
//
//  Created by Mac Neia on 07/07/21.
//

import UIKit

class BuscaService {
    
    static let shared = BuscaService()
    
    func buscaApps (texto: String) {
        
        guard let url = URL(string: "http://localhost/app-store/api/v1//apps?search=face") else {return}
        
        URLSession.shared.dataTask(with: url) { (data, res, err) in
            
            if let err = err {
                print(err)
                return
            }
            
            print(String(data: data!, encoding:  .utf8))
        }.resume()
    }
}
