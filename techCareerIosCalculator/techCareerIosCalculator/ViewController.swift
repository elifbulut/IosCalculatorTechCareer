//
//  ViewController.swift
//  techCareerIosCalculator
//
//  Created by Elıf on 14.08.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var sayi : Double = 0
    var oncekiSayi : Double = 0
    var islemYapildiMi = false
    var islem = 0
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
 
    @IBAction func numbers(_ sender: UIButton) {
        if islemYapildiMi == true{
            label.text = String(sender.tag-1)
            sayi = Double(label.text!)!
            islemYapildiMi = false
            
        }
        else {
            label.text = label.text! + String(sender.tag-1)
            sayi = Double(label.text!)!
        }
    }
    
    @IBAction func operationButtons(_ sender: UIButton) {
        if label.text != "" && sender.tag != 11 && sender.tag != 16 { // AC ve =  isareti
            oncekiSayi = Double(label.text!)!
            if sender.tag == 12 //Bolme islemi
            {
                label.text = "/";
            }
            
           else if sender.tag == 13 //Carpma islemi
           {
               label.text = "x";
                }
            
            else if sender.tag == 14 //cikarma islemi
            {
                label.text = "-";
                 }
            
            else if sender.tag == 15 //toplama islemi
            {
                label.text = "+";
                
                 }
            islem = sender.tag
            islemYapildiMi = true;
        }
         else if sender.tag == 16 // esittir isareti
        {
            if islem == 12 // bolme
            {
                label.text = String(oncekiSayi / sayi)
            }
            else if islem == 13 //carpma
            {
                label.text = String(oncekiSayi * sayi)
            }
           else if islem == 14 //cikarma
            {
               label.text = String(oncekiSayi - sayi)
            }
            else if islem == 15 //toplama
            {
                label.text = String(oncekiSayi + sayi)
                
            }
             
        }
        else if sender.tag == 11 { // AC
            label.text = ""
            oncekiSayi = 0;
            sayi = 0;
            islem = 0;
        }
    }
}


