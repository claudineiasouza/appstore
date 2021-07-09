//
//  AppService.swift
//  store
//
//  Created by Mac Neia on 09/07/21.
//

import UIKit

class AppService {
    
    static let shared = AppService()
    
    func buscaAppsEmDestaque (completion: @escaping ([AppDestaque]?, Error?) -> () ) {
    
    guard let url = URL(string: "http://192.168.1.118/app-store/api/v1/apps/apps-em-destaque") else {return}
    
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
}
