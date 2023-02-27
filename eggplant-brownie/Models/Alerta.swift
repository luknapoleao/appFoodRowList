//
//  Alerta.swift
//  eggplant-brownie
//
//  Created by Lucas Napoleao arantes de sousa on 23/02/23.
//  Copyright © 2023 Alura. All rights reserved.
//

import UIKit

class Alerta {
    
    let controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func exibe(titulo: String = "Atenção", mensagem: String) {
        let alerta = UIAlertController(title: titulo, message: mensagem,
                                       preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alerta.addAction(ok)
        controller.present(alerta, animated: true, completion: nil)
    }
    
}
