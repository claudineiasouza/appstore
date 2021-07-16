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
        
        let hojeApps: Array<HojeApp> = [
        HojeApp(
            id: 1,
            categoria: "VIAJEM",
            titulo: "Explore o mundo \nsem medo",
            imagemUrl: "detaque-1",
            descricao: "Podemos viajar o mundo em busca de beleza, mas nunca a econtraremos se nao a carregarmos dentro de nos.",
            backgroudColor: "#FFFFF"
        ),
            HojeApp(
                id: 2,
                categoria: "PRATIQUE HOJE",
                titulo: "Mantenha corpo \nmente saudáveis",
                imagemUrl: "destaque-2",
                descricao: "Quanto mais se rema, maiores sao as chances de pegar melhores ondas, tento no surf quanto na vida." ,
                backgroudColor: "#69CECE0"
            )
        ]
        
        completion(hojeApps, nil)
        
    }
}
