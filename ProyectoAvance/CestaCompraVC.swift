//
//  CestaCompraVC.swift
//  ProyectoAvance
//
//  Created by Denis on 5/11/18.
//  Copyright © 2018 Denden. All rights reserved.
//

import UIKit

class CestaCompraVC: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnProceder(_ sender: Any) {
        
        self.performSegue(withIdentifier: "IrPagoVC", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
