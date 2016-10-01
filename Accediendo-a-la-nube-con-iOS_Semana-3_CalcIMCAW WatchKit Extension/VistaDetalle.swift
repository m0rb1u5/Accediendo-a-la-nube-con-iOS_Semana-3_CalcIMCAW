//
//  VistaDetalle.swift
//  Accediendo-a-la-nube-con-iOS_Semana-3_CalcIMCAW
//
//  Created by Juan Carlos Carbajal Ipenza on 1/10/16.
//  Copyright © 2016 Juan Carlos Carbajal Ipenza. All rights reserved.
//

import WatchKit
import Foundation


class VistaDetalle: WKInterfaceController {
    @IBOutlet var etiquetaResultado: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let c = context as! Valor
        etiquetaResultado.setText(String(c.valorIMC))
        // Configure interface objects here.
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
