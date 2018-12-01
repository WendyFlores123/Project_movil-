//
//  PagoVC.swift
//  ProyectoAvance
//
//  Created by Denis on 5/11/18.
//  Copyright © 2018 Denden. All rights reserved.
//

import UIKit

class PagoVC: UIViewController {

    
    @IBOutlet weak var txtTarjeta: UITextField!
    
    @IBOutlet weak var txtTitular: UITextField!
    
    
    @IBOutlet weak var txtFecha: UITextField!
    
    
    @IBOutlet weak var txtCCV: UITextField!
    
    
    @IBAction func btnPagar(_ sender: Any) {
        let delegado = UIApplication.shared.delegate as! AppDelegate
        
        let tarjeta = txtTarjeta.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        let titular = txtTitular.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        let fecha = txtFecha.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        let CCV = txtCCV.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        
        if tarjeta?.count == 0 {
            delegado.mostrarCuadroDialogo(titulo: "Aviso", mensaje: "Por favor ingrese el nùmero de tarjeta", vista: self)
            
            return
        }
        
        if titular?.count == 0 {
            delegado.mostrarCuadroDialogo(titulo: "Aviso", mensaje: "Por favor ingrese el titular de la tarjeta", vista: self)
            
            return
        }
        
        if fecha?.count == 0 {
            delegado.mostrarCuadroDialogo(titulo: "Aviso", mensaje: "Por favor ingrese la fecha de fencimiento de la tarjeta", vista: self)
            
            return
        }
        
        if CCV?.count == 0 {
            delegado.mostrarCuadroDialogo(titulo: "Aviso", mensaje: "Por favor ingrese el CCV de la tarjeta", vista: self)
            
            return
        }
        
        self.performSegue(withIdentifier: "IrFinalizarVC", sender: self)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
