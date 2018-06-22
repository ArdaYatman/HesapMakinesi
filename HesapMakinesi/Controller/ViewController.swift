//
//  ViewController.swift
//  HesapMakinesi
//
//  Created by Arda Yatman on 19.06.2018.
//  Copyright © 2018 Arda Yatman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var girilenSayı = ""
    var girilenRakam = ""
    var sonuc = ""
    var işlem = ""
    var solKısım = ""
    var sağKısım = ""
    var virgül = ""

   
    @IBOutlet weak var girilenSayıEkrani: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        girilenSayıEkrani.text = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rakam(_ sender: UIButton) {
        
            girilenSayı += "\(sender.tag)"
            girilenSayıEkrani.text = girilenSayı
    }
    
    @IBAction func bölmeBut(_ sender: Any) {
        işlemYap(işlemgirdisi: "böl")
    }
    @IBAction func çıkartBut(_ sender: Any) {
        işlemYap(işlemgirdisi: "çıkar")
    }
    @IBAction func capmaBut(_ sender: Any) {
        işlemYap(işlemgirdisi: "çarp")
    }
    @IBAction func toplaBut(_ sender: Any) {
        işlemYap(işlemgirdisi: "topla")
    }
    
    @IBAction func clearBut(_ sender: Any) {
        girilenRakam = ""
        solKısım = ""
        sağKısım = ""
        sonuc = ""
        girilenSayı = ""
        işlem = ""
        girilenSayıEkrani.text = String(girilenSayı)
        
    }
    
    @IBAction func virgülBut(_ sender: Any) {
        girilenSayı += "."
        girilenSayıEkrani.text = girilenSayı
    }
    @IBAction func esitBut(_ sender: Any) {
        işlemYap(işlemgirdisi: işlem)
    }
    func işlemYap(işlemgirdisi : String) {
//        print("solkısım = \(solKısım)")
//        print("sağkısım = \(sağKısım)")
//        print("işlem girdisi = \(işlemgirdisi)")
//        print("işlem = \(işlem)")
//
        if işlem != ""{
            if girilenSayı != "" {
                sağKısım = girilenSayı
                girilenSayı = ""
                if işlem == "topla"{
                    sonuc = "\(Double(solKısım)! + Double(sağKısım)!)"
                }else if işlem == "çıkar"{
                    sonuc = "\(Double(solKısım)! - Double(sağKısım)!)"
                }else if işlem == "çarp"{
                    sonuc = "\(Double(solKısım)! * Double(sağKısım)!)"
                }else if işlem == "böl" {
                    sonuc = "\(Double(solKısım)! / Double(sağKısım)!)"
}
                
            solKısım = sonuc
            girilenSayıEkrani.text = String(sonuc)
            
                
        }
        işlem = işlemgirdisi
        }else{
            solKısım = girilenSayı
            girilenSayı = ""
            işlem = işlemgirdisi
        }
        print("solkısım = \(solKısım)")
        print("sağkısım = \(sağKısım)")
        print("işlem girdisi = \(işlemgirdisi)")
        print("işlem = \(işlem)\n")
        
 }
}

