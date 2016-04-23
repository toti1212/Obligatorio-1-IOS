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
    
    
    @IBOutlet weak var cardImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tap = UITapGestureRecognizer(target: self, action: Selector("tappedMe"))
        cardImageView.addGestureRecognizer(tap)
        cardImageView.userInteractionEnabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tappedMe()
    {
        performSegueWithIdentifier("QrView", sender: nil)
    }

}

