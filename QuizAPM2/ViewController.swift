//
//  ViewController.swift
//  QuizAPM2
//
//  Created by Mac8 on 07/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var preguntaLbl: UILabel!
    @IBOutlet weak var barraProgresive: UIProgressView!
    @IBOutlet weak var verdaderoBtn: UIButton!
    @IBOutlet weak var falsoBtn: UIButton!
    
    var numPregunta = 0; //contador para la barra progresive
    //areglo de preguntas
    let preguntas = ["hola de nuevo",
                     "ITICS",
                     "el color azul es..."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        preguntaLbl.text = "Quiz"
    }

    @IBAction func respuestaBtn(_ sender: UIButton) {
        print("Boton presionado: \(sender.currentTitle) ")
        //guardar la respuesta usuario de tipo string
        
        let respuestaUsuario = sender.currentTitle
        let respuestaCorrecta = preguntas[numPregunta[0]]
        //comparar la respuesta del usuario a la respuesta si es correcta
        if(respuestaUsuario == respuestaCorrecta){
            
            
            
        }
        
        //imprimir la pregunta e las posision 2
     //   preguntaLbl.text = preguntas[2]
        //>   <
        //imprmir
        if(numPregunta  < preguntas.count){
            
            preguntaLbl.text = preguntas[numPregunta[1]]
            numPregunta += 1
            
            
            
        }else {numPregunta = 0}
     
    
        
    }
    
}

