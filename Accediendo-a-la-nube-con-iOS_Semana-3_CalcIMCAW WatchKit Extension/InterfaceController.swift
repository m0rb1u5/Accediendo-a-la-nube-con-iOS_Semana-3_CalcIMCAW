//
//  InterfaceController.swift
//  Accediendo-a-la-nube-con-iOS_Semana-3_CalcIMCAW WatchKit Extension
//
//  Created by Juan Carlos Carbajal Ipenza on 29/09/16.
//  Copyright © 2016 Juan Carlos Carbajal Ipenza. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var valorPeso: WKInterfaceLabel!
    @IBOutlet var valorEstatura: WKInterfaceLabel!
    var pesoActual: Float = 1
    var estaturaActual: Float = 1

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
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
    @IBAction func nuevoValorPeso(value: Float) {
        pesoActual = value;
        valorPeso.setText(String(pesoActual))
    }
    @IBAction func nuevoValorEstatura(value: Float) {
        estaturaActual = value/100
        valorEstatura.setText(String(estaturaActual))
    }
    func calculoIMC(p: Float, e: Float) -> Float {
        let IMC = p/(e*e)
        return IMC
    }
    @IBAction func accionCalcular() {
        let resultado = calculoIMC(pesoActual, e: estaturaActual)
        let valorContexto = Valor(descripcion: "Peso normal", valorIMC: resultado)
        pushControllerWithName("IdentificadorValor", context: valorContexto)
        print(resultado)
    }
}
