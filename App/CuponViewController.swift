//
//  CuponViewController.swift
//  App
//
//  Created by Administrador on 22/4/16.
//  Copyright © 2016 DLA. All rights reserved.
//

import UIKit
import QRCode

class CuponViewController: UIViewController {

    @IBOutlet weak var imageCuponQR: UIImageView!
    @IBOutlet weak var imageCupon: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var desc: UILabel!
    
    var descripcion:String!
    var nombre : String!
    var imagen : String!
    var cuponId: String!
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
        self.productName.text = nombre
        self.desc.text = descripcion
        self.imageCupon.image = UIImage(named: imagen)
       
        
        imageCuponQR.image = {
            var qrCode = QRCode(cuponId)!
            qrCode.size = self.imageCuponQR.bounds.size
            qrCode.errorCorrection = .High
            return qrCode.image
            }()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
