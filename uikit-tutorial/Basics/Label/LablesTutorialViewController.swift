//
//  LablesTutorialViewController.swift
//  uikit-tutorial
//
//  Created by Mira Cho on 2025-11-03.
//

import UIKit

class LablesTutorialViewController: UIViewController {
    private var textLabel = UILabel()
    
    private var subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "This is a subtitle for the best UIKit course ever!"
        label.textColor = .gray
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        
        textLabel.text = "Hello World!"
        textLabel.font = UIFont.systemFont(ofSize: 24)
        
        view.addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        view.addSubview(subtitleLabel)
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant:8).isActive = true
        subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

}

#Preview {
    LablesTutorialViewController()
}
