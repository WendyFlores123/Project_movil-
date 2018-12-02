//
//  LoginVC.swift
//  ProyectoAvance
//
//  Created by Denis on 5/11/18.
//  Copyright © 2018 Denden. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    var iconClick = true

    @IBOutlet weak var txtCorreo: UITextField!
    @IBOutlet weak var txtContraseña: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackground()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func iconAction(_ sender: Any) {
        if(iconClick == true) {
            txtContraseña.isSecureTextEntry = false
        } else {
            txtContraseña.isSecureTextEntry = true
        }
        
        iconClick = !iconClick
    }
    
    @IBAction func Autenticar(_ sender: Any) {
        let correo = txtCorreo.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let clave = txtContraseña.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let delegado = UIApplication.shared.delegate as! AppDelegate
        
        
        
        if correo?.count == 0
        {
            delegado.mostrarCuadroDialogo(titulo: "AVISO", mensaje: "Por Favor Ingrese su correo", vista: self)
            return;
        }
        
        if clave?.count == 0
        {
            delegado.mostrarCuadroDialogo(titulo: "AVISO", mensaje: "Por favor ingrese su clave", vista: self)
            return;
        }
        
        if (correo == "admin" && clave == "123")
        {
            //navegas a la app
            self.performSegue(withIdentifier: "IrMainVC", sender: self)
        }
        else {
            
            delegado.mostrarCuadroDialogo(titulo: "ERROR", mensaje: "Error de Autenticaciòn", vista: self)
            
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        txtCorreo.layer.borderWidth = 1
        txtCorreo.layer.borderColor = UIColor.black.cgColor
        txtCorreo.layer.cornerRadius = 20
        txtCorreo.clipsToBounds = true
        
        txtContraseña.layer.borderWidth = 1
        txtContraseña.layer.borderColor = UIColor.black.cgColor
        txtContraseña.layer.cornerRadius = 20
        txtContraseña.clipsToBounds = true
        
        let emailImage = UIImage(named:"mail")
        addLeftImageTo(txtField: txtCorreo, andImage: emailImage!)
        
        let passwordImage = UIImage(named:"password")
        addLeftImageTo(txtField: txtContraseña, andImage: passwordImage!)
    }
    
    func addLeftImageTo(txtField: UITextField, andImage img: UIImage) {
        let leftImageView = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: img.size.width, height: img.size.height))
        leftImageView.image = img
        txtField.leftView = leftImageView
        txtField.leftViewMode = .always
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
