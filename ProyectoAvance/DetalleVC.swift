//
//  DetalleVC.swift
//  ProyectoAvance
//
//  Created by Denis on 5/11/18.
//  Copyright © 2018 Denden. All rights reserved.
//

import UIKit

class DetalleVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func btnirMain(_ sender: Any) {
        self.performSegue(withIdentifier: "un-irMainVC", sender: self)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

 

}
