//
//  ViewController.swift
//  JestAlgilayici
//
//  Created by imrahor on 30.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    var ankara = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        image.isUserInteractionEnabled = true
        let jest = UITapGestureRecognizer(target: self, action: #selector(gorselDegistir))
        image.addGestureRecognizer(jest)
        
    }
    @objc func gorselDegistir() {
        if ankara == false {
            image.image = UIImage(named: "ankara")
            label.text = "Ankara"
            ankara = true
        }else {
            image.image = UIImage(named: "istanbul")
            label.text = "İstanbul"
            ankara = false
        }
    }

}

