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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableViewTest.delegate = self
        tableViewTest.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @available(iOS 2.0, *)
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 10 //apps.count
        
    }
    
    
    
    @available(iOS 2.0, *)
    internal func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(textCellIdentifier, forIndexPath: indexPath) as! TableViewCell
        
        
        cell.profileName?.text = "Hola" //apps[indexPath].profileName
        cell.profileDescription?.text = "Descripcion"
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("VerCupon", sender: nil)
    }



}

