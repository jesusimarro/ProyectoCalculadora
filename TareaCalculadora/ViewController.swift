//
//  ViewController.swift
//  TareaCalculadora
//
//  Created by estech on 9/1/23.
//

import UIKit

class ViewController: UIViewController {
    
    enum Operadores {
        case suma, resta, multiplicacion, division, porcentaje, nada
    }
    
    private var operador: Operadores = .nada
    var num1 = ""
    var num2 = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var LabelResult: UILabel!
    
    @IBOutlet weak var Num0: UIButton!
    @IBOutlet weak var Num1: UIButton!
    @IBOutlet weak var Num2: UIButton!
    @IBOutlet weak var Num3: UIButton!
    @IBOutlet weak var Num4: UIButton!
    @IBOutlet weak var Num5: UIButton!
    @IBOutlet weak var Num6: UIButton!
    @IBOutlet weak var Num7: UIButton!
    @IBOutlet weak var Num8: UIButton!
    @IBOutlet weak var Num9: UIButton!
    
    @IBOutlet weak var Dividir: UIButton!
    @IBOutlet weak var Multiplicar: UIButton!
    @IBOutlet weak var Sumar: UIButton!
    @IBOutlet weak var Restar: UIButton!
    @IBOutlet weak var Igual: UIButton!
    
    @IBOutlet weak var Borrar: UIButton!
    @IBOutlet weak var MasMenos: UIButton!
    @IBOutlet weak var Porcentaje: UIButton!
    
    
    @IBAction func Num0Action(_ sender: Any) {
        if LabelResult.text == "0" {
            LabelResult.text! = "0"
        } else { LabelResult.text! += "0" }
    }
    
    @IBAction func Num1Action(_ sender: Any) {
        if LabelResult.text == "0" {
            LabelResult.text! = "1"
        } else { LabelResult.text! += "1" }
    }
    
    @IBAction func Num2Action(_ sender: Any) {
        if LabelResult.text == "0" {
            LabelResult.text! = "2"
        } else { LabelResult.text! += "2" }
    }
    
    @IBAction func Num3Action(_ sender: Any) {
        if LabelResult.text == "0" {
            LabelResult.text! = "3"
        } else { LabelResult.text! += "3" }
    }
    
    @IBAction func Num4Action(_ sender: Any) {
        if LabelResult.text == "0" {
            LabelResult.text! = "4"
        } else { LabelResult.text! += "4" }
    }
    
    @IBAction func Num5Action(_ sender: Any) {
        if LabelResult.text == "0" {
            LabelResult.text! = "5"
        } else { LabelResult.text! += "5" }
    }
    
    @IBAction func Num6Action(_ sender: Any) {
        if LabelResult.text == "0" {
            LabelResult.text! = "6"
        } else { LabelResult.text! += "6" }
    }
    
    @IBAction func Num7Action(_ sender: Any) {
        if LabelResult.text == "0" {
            LabelResult.text! = "7"
        } else { LabelResult.text! += "7" }
    }
    
    @IBAction func Num8Action(_ sender: Any) {
        if LabelResult.text == "0" {
            LabelResult.text! = "8"
        } else { LabelResult.text! += "8" }
    }
    
    @IBAction func Num9Action(_ sender: Any) {
        if LabelResult.text == "0" {
            LabelResult.text! = "9"
        } else { LabelResult.text! += "9" }
    }
    
    
    @IBAction func DividirAction(_ sender: Any) {
        num1 = LabelResult.text!
        operador = .division
        LabelResult.text = ""
        num2 = LabelResult.text!
    }
    
    @IBAction func MultiplicarAction(_ sender: Any) {
        num1 = LabelResult.text!
        operador = .multiplicacion
        LabelResult.text = ""
        num2 = LabelResult.text!
    }
    
    @IBAction func SumarAction(_ sender: Any) {
        num1 = LabelResult.text!
        operador = .suma
        LabelResult.text = ""
        num2 = LabelResult.text!
    }
    
    @IBAction func RestarAction(_ sender: Any) {
        num1 = LabelResult.text!
        operador = .resta
        LabelResult.text = ""
        num2 = LabelResult.text!
    }
    
    @IBAction func PorcentajeAction(_ sender: Any) {
        num1 = LabelResult.text!
        operador = .porcentaje
    }
    
    @IBAction func IgualAction(_ sender: Any) {
        obtenerTotal()
    }
    
    private func obtenerTotal() {
        num2 = LabelResult.text!
        
        switch operador {
        case .suma:
            let v1 = (Double(num1)!)
            let v2 = (Double(num2)!)
            let result = v1 + v2
            LabelResult.text = String(result)
            break
            
        case .resta:
            let v1 = (Double(num1)!)
            let v2 = (Double(num2)!)
            let result = v1 - v2
            LabelResult.text = String(result)
            break
            
        case .multiplicacion:
            let v1 = (Double(num1)!)
            let v2 = (Double(num2)!)
            let result = v1 * v2
            LabelResult.text = String(result)
            break
            
        case .division:
            let v1 = (Double(num1)!)
            let v2 = (Double(num2)!)
            let result = v1 / v2
            LabelResult.text = String(result)
            break
            
        case .porcentaje:
            let v1 = (Double(num1)!)
            let result = v1 / 100
            LabelResult.text = String(result)
            break
            
        case .nada:
            break
        }
    }
    
    @IBAction func BorrarAction(_ sender: Any) {
        LabelResult.text = "0"
        num1 = "0"
        num2 = "0"
    }
    
    @IBAction func MasMenosAction(_ sender: Any) {
        num1 = LabelResult.text!
        let v1 = (Double(num1)!)
        let result = v1 * (-1)
        LabelResult.text = String(result)
    }
    
}
