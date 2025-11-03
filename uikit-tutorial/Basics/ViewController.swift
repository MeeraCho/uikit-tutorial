//
//  ViewController.swift
//  uikit-tutorial
//
//  Created by Mira Cho on 2025-11-03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        
        greetingLabel.text = "Hello, Stephan!"
    }


    
}

