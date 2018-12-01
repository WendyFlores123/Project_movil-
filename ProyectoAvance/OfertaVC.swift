//
//  OfertaVC.swift
//  ProyectoAvance
//
//  Created by Denis on 5/11/18.
//  Copyright © 2018 Denden. All rights reserved.
//

import UIKit

class OfertaVC: BaseViewController {
    
    @IBOutlet weak var btnDrop: UIButton!
    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var btnShow: UIButton!
    @IBOutlet weak var lbl: UILabel!
    var fruitList = ["Hamburguesas", "Pizza", "Sopas", "Bocadillos", "Bebidas", "Acompañamiento", "Desayuno", "Almuerzo"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        addSlideMenuButton()
        
        tblView.isHidden = true
        lbl.isHidden = true
        lbl.text = "Tenemos platos especial para esta categoria,  las siguientes son: .--------------"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onClickDropButton(_ sender: Any) {
        if tblView.isHidden {
            animate(toogle: true, type: btnDrop)
        } else {
            animate(toogle: false, type: btnDrop)
        }
        
        
    }
    
    @IBAction func onClickShow(_ sender: Any) {
        if lbl.isHidden {
            animate(toogle: true, type: btnShow)
        } else {
            animate(toogle: false, type: btnShow)
        }
    }
    
    func animate(toogle: Bool, type: UIButton) {
        
        if type == btnDrop {
            
            if toogle {
                UIView.animate(withDuration: 0.3) {
                    self.tblView.isHidden = false
                }
            } else {
                UIView.animate(withDuration: 0.3) {
                    self.tblView.isHidden = true
                }
            }
        } else {
            if toogle {
                UIView.animate(withDuration: 0.3) {
                    self.lbl.isHidden = false
                }
            } else {
                UIView.animate(withDuration: 0.3) {
                    self.lbl.isHidden = true
                }
            }
        }
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


extension OfertaVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruitList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = fruitList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        btnDrop.setTitle("\(fruitList[indexPath.row])", for: .normal)
        animate(toogle: false, type: btnDrop)
    }
    
    
}

