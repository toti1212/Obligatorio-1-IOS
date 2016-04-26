//
//  Cupon.swift
//  App
//
//  Created by Administrador on 22/4/16.
//  Copyright © 2016 DLA. All rights reserved.
//

import Foundation



public class Cupon {
    
    var cuponId: String = ""
    var cuponName: String = ""
    var cuponDescription: String = ""
    var cuponImage: String = ""
    
    init(cuponId:String, cuponName:String, cuponDescription: String, cuponImage:String){
        
        self.cuponId = cuponId
        self.cuponName = cuponName
        self.cuponDescription = cuponDescription
        self.cuponImage = cuponImage
    }
    
}