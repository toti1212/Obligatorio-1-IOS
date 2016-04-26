//
//  SecondViewController.swift
//  App
//
//  Created by Administrador on 14/4/16.
//  Copyright © 2016 DLA. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableViewTest: UITableView!
    
    let textCellIdentifier = "TableViewCell"
    
    var data = [Cupon]()
    func loadData(){
    
        let image1 = "entretenimiento"
        let image2 = "escolar"
        let image3 = "helados"
        let image4 = "herramientas"
        let image5 = "jardineria"
        let image6 = "limpieza"
        let image7 = "mascotas"
        let image8 = "musica"
        let image9 = "ninos"
        let image10 = "acc-escritorio"
        
        let cupon1 = Cupon(cuponId: "CUPON1", cuponName: "Descuento 10%", cuponDescription: "Descuento en Entretenimiento", cuponImage: image1)
        let cupon2 = Cupon(cuponId: "CUPON2", cuponName: "Descuento 15%", cuponDescription: "Descuento en Escolares", cuponImage: image2)
        let cupon3 = Cupon(cuponId: "CUPON3", cuponName: "Descuento 20%", cuponDescription: "Descuento en Helados", cuponImage: image3)
        let cupon4 = Cupon(cuponId: "CUPON4", cuponName: "Descuento 10%", cuponDescription: "Descuento en Entretenimiento", cuponImage: image4)
        let cupon5 = Cupon(cuponId: "CUPON5", cuponName: "Descuento 10%", cuponDescription: "Descuento en Entretenimiento", cuponImage: image5)
        let cupon6 = Cupon(cuponId: "CUPON6", cuponName: "Descuento 10%", cuponDescription: "Descuento en Entretenimiento", cuponImage: image6)
        let cupon7 = Cupon(cuponId: "CUPON7", cuponName: "Descuento 10%", cuponDescription: "Descuento en Entretenimiento", cuponImage: image7)
        let cupon8 = Cupon(cuponId: "CUPON8", cuponName: "Descuento 10%", cuponDescription: "Descuento en Entretenimiento", cuponImage: image8)
        let cupon9 = Cupon(cuponId: "CUPON9", cuponName: "Descuento 10%", cuponDescription: "Entretenimiento", cuponImage: image9)
        let cupon10 = Cupon(cuponId: "CUPON10", cuponName: "Descuento 10%", cuponDescription: "Entretenimiento", cuponImage: image10)
        
        data += [cupon1,cupon2,cupon3,cupon4,cupon5,cupon6,cupon7,cupon8,cupon9,cupon10]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableViewTest.delegate = self
        tableViewTest.dataSource = self
        loadData()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @available(iOS 2.0, *)
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return data.count
        
    }
    
    
    
    @available(iOS 2.0, *)
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(textCellIdentifier, forIndexPath: indexPath) as! CuponTableViewCell
        
        let cupon = data[indexPath.row]
        
        cell.profileName?.text = cupon.cuponName //apps[indexPath].profileName
        cell.profileDescription?.text = cupon.cuponDescription
        cell.profileImage.image = UIImage(named: cupon.cuponImage)
        
        
        return cell
        
    }
    
    
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("VerCupon", sender: indexPath)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "VerCupon"){
            
            let cupon = segue.destinationViewController as! CuponViewController;
            let indexPath = sender as! NSIndexPath
            let index = indexPath.item
            
            //let cell = tableViewTest.cellForRowAtIndexPath(indexPath) as UITableViewCell!
            //let celda = cell as! CuponTableViewCell
            //cupon.descripcion = celda.profileDescription.text
            //cupon.nombre = celda.profileName.text

            cupon.descripcion = data[index].cuponDescription
            cupon.nombre = data[index].cuponName
            cupon.imagen = data[index].cuponImage
            cupon.cuponId = data[index].cuponId
        }
    }



}

