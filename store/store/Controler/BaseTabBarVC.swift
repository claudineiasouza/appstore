//
//  BaseTabBarVC.swift
//  store
//
//  Created by Mac Neia on 07/07/21.
//

import UIKit

class BaseBarTabVC: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let hojeVC = self.criarTabItem(viewController: UIViewController(), titulo: "Hoje", image: "icone-hoje")
        let appsVC = self.criarTabItem(viewController: AppsVC(), titulo: "Apps", image: "icone-apps")
        let buscaVC = self.criarTabItem(viewController: BuscaVC(), titulo: "Busca", image: "icone-busca")
        
        viewControllers = [
        hojeVC,
        appsVC,
        buscaVC ]
        
        selectedIndex = 1 
    }
    
    func criarTabItem (viewController: UIViewController, titulo: String, image: String) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        
        viewController.navigationItem.title = titulo
        viewController.tabBarItem.title = titulo
        viewController.tabBarItem.image = UIImage(named: image)
        viewController.view.backgroundColor = .white
        
        return navController
    }
}
