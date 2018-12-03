import UIKit

class MainVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    let imagenes = ["Sopa","Postres","Pizza","Bocadillos",
                    "Bebidas","Acompañamiento","Almuerzo","Desayuno","Panes","Platillos Principales","Sanguches"]
    

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.imagenes.count;
        
    
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let MyCelda = collectionView.dequeueReusableCell(withReuseIdentifier: "celda", for: indexPath) as! CeldaCVC
        MyCelda.lblTitulo.text = imagenes[indexPath.row]
        MyCelda.imagen.image = UIImage(named: imagenes[indexPath.row])
        return MyCelda
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func unwindToMain(segue: UIStoryboardSegue) {
        
}
}
