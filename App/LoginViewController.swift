//
//  LoginViewController.swift
//  App
//
//  Created by Administrador on 14/4/16.
//  Copyright © 2016 DLA. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let validEmail:String = "."
    let validPass:String = "."
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var errorMessageLabel: UILabel!
    
    @IBAction func signInButton(sender: AnyObject) {

        if(emailTextField.text!.isEmpty || passTextField.text!.isEmpty ){
            errorMessageLabel.text = "Email or Password empty"
            
        }else if (emailTextField.text!.isEmpty == false && passTextField.text!.isEmpty == false){
            if(emailTextField.text == validEmail){
                
                if(passTextField.text == validPass){
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
                    //go to other screen
                
            }
    
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
