//
//  ShapesTutorialViewController.swift
//  uikit-tutorial
//
//  Created by Mira Cho on 2025-11-03.
//

import UIKit

class ShapesTutorialViewController: UIViewController {
    private var rect: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 16
        view.backgroundColor = .systemRed
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(rect)
        rect.translatesAutoresizingMaskIntoConstraints = false
        rect.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        rect.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        rect.widthAnchor.constraint(equalToConstant: 100).isActive = true
        rect.heightAnchor.constraint(equalToConstant: 100).isActive = true

    }
    
}

#Preview {
    ShapesTutorialViewController()
}
