//
//  QrViewController.swift
//  App
//
//  Created by Rodrigo Suarez Balbi on 4/22/16.
//  Copyright © 2016 DLA. All rights reserved.
//

import UIKit
import QRCode

class QrViewController: UIViewController {

    @IBOutlet weak var qrImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        qrImageView.image = {
            var qrCode = QRCode("http://github.com/aschuch/QRCode")!
            qrCode.size = self.qrImageView.bounds.size
            qrCode.errorCorrection = .High
            return qrCode.image
            }()
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
