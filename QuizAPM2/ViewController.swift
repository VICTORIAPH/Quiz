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
    var puntuacion = 0;
    
    //areglo de preguntas
    let preguntas = [
        Pregunta(t: "el color azul is better", r: "FALSO"),
        Pregunta(t: "La manzana es una verdura", r: "FALSO"),
        Pregunta(t: "ITM is better", r: "VERDADERO"),
        Pregunta(t: "Teotihuacan fue la capital de la civilizacion", r: "FALSO"),
        Pregunta(t: "kjdfnkesjcdn", r: "FALSO"),
        Pregunta(t: "ITM is better", r: "VERDADERO"),
        Pregunta(t: "el color azul is better", r: "FALSO"),
        Pregunta(t: "La manzana es una verdura", r: "FALSO"),
        Pregunta(t: "ITM is better", r: "VERDADERO"),    ]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       // preguntaLbl.text = "Quiz"
        cambiarPregunta()
        
    }

    @IBAction func respuestaBtn(_ sender: UIButton) {
        print("Boton presionado: \(sender.currentTitle) ")
        //cambiar nuestro background
        sender.backgroundColor = UIColor.green
        //guardar la respuesta usuario de tipo string
        
        let respuestaUsuario = sender.currentTitle
        let respuestaCorrecta = preguntas[0].respuesta
        //comparar la respuesta del usuario a la respuesta si es correcta
        if(respuestaUsuario == respuestaCorrecta){
            print("Respuesta correcta :) ")
        }else {
            print("Respuesta Incorrecta :( ")
            
        }
        
        //imprimir la pregunta e las posision 2
        //   preguntaLbl.text = preguntas[2]
        
        //>   <
    
        if numPregunta + 1 < preguntas.count {
             print("Numero de pregunta: \(numPregunta)")
                cambiarPregunta()
            numPregunta += 1
         
        }else {
            numPregunta = 0
        
        }
    }
    
    func cambiarPregunta(){
        preguntaLbl.text = preguntas[numPregunta].texto
    }
    
}

