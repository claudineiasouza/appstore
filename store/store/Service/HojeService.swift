//
//  HojeService.swift
//  store
//
//  Created by Mac Neia on 16/07/21.
//

import Foundation

class HojeService {
    
    static let shared = HojeService()
    
    func buscaHojeDestaque (completion: @escaping ([HojeApp]?, Error?) -> ()) {
        
        var hojeApps: Array<HojeApp> = [
        HojeApp(
            id: 1,
            categoria: "VIAJEM",
            titulo: "Explore o mundo \nsem medo",
            imagemUrl: "destaque-1",
            descricao: "Podemos viajar o mundo em busca de beleza, mas nunca a econtraremos se nao a carregarmos dentro de nos.",
            backgroudColor: "#FFFFFF",
            apps: nil
        ),
            HojeApp(
                id: 2,
                categoria: "PRATIQUE HOJE",
                titulo: "Mantenha corpo \nmente saudáveis",
                imagemUrl: "destaque-2",
                descricao: "Quanto mais se rema, maiores sao as chances de pegar melhores ondas, tento no surf quanto na vida." ,
                backgroudColor: "#69CCE0",
                apps: nil
            )
        ]
        
        AppService.shared.buscaApps { (apps, err) in
            if let apps = apps {
                hojeApps.append(
                    HojeApp(
                        id: 3,
                        categoria: "A LISTA DO DIA",
                        titulo: "Pedale melhor com \nApple Watch",
                        imagemUrl: nil,
                        descricao: nil,
                        backgroudColor: nil,
                        apps: apps
                )
                )
            }
            completion(hojeApps, nil)
        }
        
     
        
    }
}
