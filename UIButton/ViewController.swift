//
//  ViewController.swift
//  UIButton
//
//  Created by Marina Karpova on 04.01.2023.
//

import UIKit

class ViewController: UIViewController {

    var myButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myButton = UIButton(type: .roundedRect)
        myButton.frame = CGRect(x: 50, y: 200, width: 100, height: 40)
        myButton.setTitle("Press me", for: .normal)
        myButton.setTitle("I'm Pressed", for: .highlighted)
        myButton.tintColor = .black
        myButton.backgroundColor = .cyan
        myButton.addTarget(self, action: #selector(buttonIsPressed), for: .touchDown)
        myButton.addTarget(self, action: #selector(buttonIsTapped), for: .touchUpInside)
        view.addSubview(myButton)
        
        
    }
    
    @objc func buttonIsPressed(sender: UIButton) {
        print("Button is pressed")
    }
    
    @objc func buttonIsTapped(sender: UIButton) {
        print("Button is tapped")
    }
    
}

