//
//  DelegateDesignTutorialViewController.swift
//  uikit-tutorial
//
//  Created by Mira Cho on 2025-11-04.
//

import UIKit

class DelegateDesignTutorialViewController: UIViewController {
    private var actionButtonView = ActionButtonView()
    
    private var textLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGroupedBackground

        view.addSubview(actionButtonView)
        actionButtonView.layer.shadowColor = UIColor.black.cgColor
        actionButtonView.translatesAutoresizingMaskIntoConstraints = false
        actionButtonView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        actionButtonView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        actionButtonView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        actionButtonView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(textLabel)
        
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textLabel.topAnchor.constraint(equalTo: actionButtonView.bottomAnchor, constant: 16).isActive = true
        
        textLabel.text = "Primary Action Button tapped"
    }
    
}
