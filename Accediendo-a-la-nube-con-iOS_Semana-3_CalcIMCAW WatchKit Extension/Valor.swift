//
//  Valor.swift
//  Accediendo-a-la-nube-con-iOS_Semana-3_CalcIMCAW
//
//  Created by Juan Carlos Carbajal Ipenza on 1/10/16.
//  Copyright © 2016 Juan Carlos Carbajal Ipenza. All rights reserved.
//

import WatchKit

class Valor: NSObject {
    var descripcion: String = ""
    var valorIMC: Float = 0
    
    init(descripcion: String, valorIMC: Float) {
        self.descripcion = descripcion
        self.valorIMC = valorIMC
    }
}
