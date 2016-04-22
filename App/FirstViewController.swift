//
//  FirstViewController.swift
//  App
//
//  Created by Administrador on 14/4/16.
//  Copyright © 2016 DLA. All rights reserved.
//

import UIKit
import QRCode

class FirstViewController: UIViewController {
    

    @IBOutlet weak var qrImageView: UIImageView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        qrImageView.image = {
            var qrCode = QRCode("ucu@ucu.com")!
            qrCode.size = self.qrImageView.bounds.size
            qrCode.errorCorrection = .High
            return qrCode.image
            }()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

