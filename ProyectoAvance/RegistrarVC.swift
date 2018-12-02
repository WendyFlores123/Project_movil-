//
//  RegistrarVC.swift
//  ProyectoAvance
//
//  Created by Denis on 5/11/18.
//  Copyright © 2018 Denden. All rights reserved.
//

import UIKit

class RegistrarVC: UIViewController {
    
    @IBOutlet weak var txtCorreo: UITextField!
    @IBOutlet weak var txtClave: UITextField!
    @IBOutlet weak var txtConfirmarClave: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registrarUsuario(_ sender: AnyObject) {
        
        let delegado = UIApplication.shared.delegate as! AppDelegate
        
        let correo = txtCorreo.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let clave = txtClave.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let confirmaClave = txtConfirmarClave.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        
        if correo?.count == 0
        {
            delegado.mostrarCuadroDialogo(titulo: "AVISO", mensaje: "Por favor ingrese su correo", vista: self)
            return
        }
        if clave?.count == 0
        {
            delegado.mostrarCuadroDialogo(titulo: "AVISO", mensaje: "Por favor ingrese su clave", vista: self)
            return
        }
        if confirmaClave?.count == 0
        {
            delegado.mostrarCuadroDialogo(titulo: "AVISO", mensaje: "Por favor confirme su clave", vista: self)
            return
        }
        if clave != confirmaClave
        {
            delegado.mostrarCuadroDialogo(titulo: "AVISO", mensaje: "Las claves no coinciden", vista: self)
            return
        }
        
        //navegacion con el segue
        
        
    }

    //Constante para imagen de fondo
    let backgroundImageView = UIImageView()
    //Funcion para imagen de fondo
    func setBackground() {
        view.addSubview(backgroundImageView)
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        backgroundImageView.image = UIImage(named: "fondo")
        view.sendSubview(toBack: backgroundImageView)
    }

}
