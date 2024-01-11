//
//  ViewController.swift
//  ComplexNumberCalculator
//
//  Created by XCode on 8/12/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var lblResult: UILabel!
    @IBOutlet var txtOp1Re: UITextField!
    @IBOutlet var txtOp1Im: UITextField!
    @IBOutlet var txtOp2Re: UITextField!
    @IBOutlet var txtOp2Im: UITextField!
    
    @IBOutlet var btnPolar1: UIButton!
    @IBOutlet var btnPolar2: UIButton!
    
    @IBOutlet var btnPlus: UIButton!
    @IBOutlet var btnMinus: UIButton!
    @IBOutlet var btnMult: UIButton!
    @IBOutlet var btnDiv: UIButton!
    @IBOutlet var btnClear: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblResult.text = ""
    }
    
    //Utilitary functions
    private func clearUI(){
        lblResult.text = ""
        txtOp1Re.text = ""
        txtOp1Im.text = ""
        txtOp2Re.text = ""
        txtOp2Im.text = ""
    }
    
    private func complexToString(complex: Complex) -> String{
        let result = "\(complex.reZ)+\(complex.imZ)i"
        return result
    }
    
    private func getPolarForm(complex: Complex) -> String{
        let polarForm = "magnitud: \(complex.polar.magnitude) amplitud: \(complex.polar.angle) RAD"
        return polarForm
    }
    
    //UI events functions
    
    @IBAction func btnPolar1OnClick(_ sender: Any) {
        guard let zRe = Double(txtOp1Re.text ?? "") else {
            lblResult.text = "Operando 1(real): Inserte un número Real."
            return
        }
        
        guard let zIm = Double(txtOp1Im.text ?? "") else {
            lblResult.text = "Operando 1(imaginario): Inserte un número Real."
            return
        }
        
        let zN = Complex(zRe, zIm)
        
        lblResult.text = getPolarForm(complex: zN)
    }
    
    
    @IBAction func btnPolar2OnClick(_ sender: Any) {
        guard let zRe = Double(txtOp2Re.text ?? "") else {
            lblResult.text = "Operando 2(real): Inserte un número Real."
            return
        }
        
        guard let zIm = Double(txtOp2Im.text ?? "") else {
            lblResult.text = "Operando 2(imaginario): Inserte un número Real."
            return
        }
        
        let zN = Complex(zRe, zIm)
        
        lblResult.text = getPolarForm(complex: zN)
    }
    
    
    @IBAction func btnPlusOnClick(_ sender: Any) {
        guard let z1Re = Double(txtOp1Re.text ?? "") else {
            lblResult.text = "Operando 1(real): Inserte un número Real."
            return
        }
        
        guard let z1Im = Double(txtOp1Im.text ?? "") else {
            lblResult.text = "Operando 1(imaginario): Inserte un número Real."
            return
        }
        
        guard let z2Re = Double(txtOp2Re.text ?? "") else {
            lblResult.text = "Operando 2(real): Inserte un número Real."
            return
        }
        
        guard let z2Im = Double(txtOp2Im.text ?? "") else {
            lblResult.text = "Operando 2(imaginario): Inserte un número Real."
            return
        }
        
        let z1: Complex = Complex(z1Re, z1Im)
        let z2: Complex = Complex(z2Re, z2Im)
        let result = z1 + z2
        
        lblResult.text = complexToString(complex: result)
    }
    
    
    @IBAction func btnMinusOnClick(_ sender: Any) {
        guard let z1Re = Double(txtOp1Re.text ?? "") else {
            lblResult.text = "Operando 1(real): Inserte un número Real."
            return
        }
        
        guard let z1Im = Double(txtOp1Im.text ?? "") else {
            lblResult.text = "Operando 1(imaginario): Inserte un número Real."
            return
        }
        
        guard let z2Re = Double(txtOp2Re.text ?? "") else {
            lblResult.text = "Operando 2(real): Inserte un número Real."
            return
        }
        
        guard let z2Im = Double(txtOp2Im.text ?? "") else {
            lblResult.text = "Operando 2(imaginario): Inserte un número Real."
            return
        }
        
        let z1: Complex = Complex(z1Re, z1Im)
        let z2: Complex = Complex(z2Re, z2Im)
        let result = z1 - z2
        
        lblResult.text = complexToString(complex: result)
    }
    
    @IBAction func btnMultOnClick(_ sender: Any) {
        guard let z1Re = Double(txtOp1Re.text ?? "") else {
            lblResult.text = "Operando 1(real): Inserte un número Real."
            return
        }
        
        guard let z1Im = Double(txtOp1Im.text ?? "") else {
            lblResult.text = "Operando 1(imaginario): Inserte un número Real."
            return
        }
        
        guard let z2Re = Double(txtOp2Re.text ?? "") else {
            lblResult.text = "Operando 2(real): Inserte un número Real."
            return
        }
        
        guard let z2Im = Double(txtOp2Im.text ?? "") else {
            lblResult.text = "Operando 2(imaginario): Inserte un número Real."
            return
        }
        
        let z1: Complex = Complex(z1Re, z1Im)
        let z2: Complex = Complex(z2Re, z2Im)
        let result = z1 * z2
        
        lblResult.text = complexToString(complex: result)
    }
    
    @IBAction func btnDivOnClick(_ sender: Any) {
        guard let z1Re = Double(txtOp1Re.text ?? "") else {
            lblResult.text = "Operando 1(real): Inserte un número Real."
            return
        }
        
        guard let z1Im = Double(txtOp1Im.text ?? "") else {
            lblResult.text = "Operando 1(imaginario): Inserte un número Real."
            return
        }
        
        guard let z2Re = Double(txtOp2Re.text ?? "") else {
            lblResult.text = "Operando 2(real): Inserte un número Real."
            return
        }
        
        guard let z2Im = Double(txtOp2Im.text ?? "") else {
            lblResult.text = "Operando 2(imaginario): Inserte un número Real."
            return
        }
        
        let z1: Complex = Complex(z1Re, z1Im)
        let z2: Complex = Complex(z2Re, z2Im)
        let result = z1 / z2
        
        lblResult.text = complexToString(complex: result)
    }
    
    @IBAction func btnClearOnCLick(_ sender: Any) {
        clearUI()
    }
}

