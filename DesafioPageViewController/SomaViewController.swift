//
//  ViewController.swift
//  DesafioPageViewController
//
//  Created by André N. dos Santos on 13/05/22.
//

import UIKit

class SomaViewController: UIViewController {

    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var valor2Textfield: UITextField!
    @IBOutlet weak var valor1Textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func somarAction(_ sender: Any) {
        //Pega o valor do Text ou coloca espaço se for nulo
        let stringValor1 = valor1Textfield.text ?? ""
        let stringValor2 = valor2Textfield.text ?? ""
        
        //Converte em Double ou coloca 0 se não puder
        let valor1 = Double(stringValor1) ?? 0
        let valor2 = Double(stringValor2) ?? 0
        
        resultadoLabel.text = String(valor1+valor2)
    }
    
}

