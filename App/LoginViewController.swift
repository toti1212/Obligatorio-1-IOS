//
//  LoginViewController.swift
//  App
//
//  Created by Administrador on 14/4/16.
//  Copyright © 2016 DLA. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var signInOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        UIApplication.sharedApplication().statusBarStyle = .LightContent
        
        self.navigationController!.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: .Default)
        self.navigationController!.navigationBar.shadowImage = UIImage()
        signInOutlet.layer.cornerRadius = 5;
        


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let validEmail:String = "ucu@ucu.com"
    let validPass:String = "ucu2016"
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var errorMessageLabel: UILabel!
    
    @IBAction func signInButton(sender: AnyObject) {

        if(emailTextField.text!.isEmpty || passTextField.text!.isEmpty ){
            errorMessageLabel.text = "Email or Password empty"
            
        }else if (emailTextField.text!.isEmpty == false && passTextField.text!.isEmpty == false){
            if(emailTextField.text == validEmail){
                
                if(passTextField.text == validPass){
                    emailTextField.text = ""
                    passTextField.text = ""
                    errorMessageLabel.text = ""
                    performSegueWithIdentifier("Inicio", sender: nil)
                    /*
                    let next = self.storyboard?.instantiateViewControllerWithIdentifier("Inicio") as! FirstViewController
                    self.presentViewController(next, animated: true, completion: nil)*/
                }else{
                    errorMessageLabel.text = "Password Incorrect"
                }
                
            }else{
                errorMessageLabel.text = "Email Incorrect"
            }
        }
    
    }
    
}
