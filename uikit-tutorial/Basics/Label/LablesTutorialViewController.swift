//
//  LablesTutorialViewController.swift
//  uikit-tutorial
//
//  Created by Mira Cho on 2025-11-03.
//

import UIKit

class LablesTutorialViewController: UIViewController {
    private var textLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        
        textLabel.text = "Hello World!"
        textLabel.font = UIFont.systemFont(ofSize: 24)
        
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        

    }

}

#Preview {
    LablesTutorialViewController()
}
