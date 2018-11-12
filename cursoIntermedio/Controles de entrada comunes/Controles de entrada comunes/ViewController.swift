//
//  ViewController.swift
//  Controles de entrada comunes
//
//  Created by Eduardo Carrillo on 10/16/18.
//  Copyright © 2018 Eduardo Carrillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var alternar: UISwitch!
    @IBOutlet weak var slider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //MARK: Actions
    @IBAction func botonPushado(_ sender: UIButton) {
        print("Botón presionado :B")
        
        if alternar.isOn{
            print("El switch está prendido")
        }else{
            print("El switch está apagado")
        }
        print("El slider está en \(slider.value)")
    }
    @IBAction func AlternarSwitch(_ sender: UISwitch) {
        if sender.isOn{
            print("El switch está prendido 🙂")
        }else{
            print("El switch está apagado 🙁")
        }
    }
    @IBAction func ValorDelSlider(_ sender: UISlider) {
        print(sender.value)
    }
    @IBAction func TeclaReturnPresionada(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
    @IBAction func cambiarTexto(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
    @IBAction func responderAlTap(_ sender: UITapGestureRecognizer) {
        let ubicacion = sender.location(in: view)
        print(ubicacion)
    }
    


}

