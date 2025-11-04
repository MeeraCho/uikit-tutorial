//
//  ScrollViewTutorialViewController.swift
//  uikit-tutorial
//
//  Created by Mira Cho on 2025-11-04.
//

import UIKit

class ScrollViewTutorialViewController: UIViewController {
    
    private var scrollView = UIScrollView()
    
    private var stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()
    
    private let rectHeight: CGFloat = 200
    private let numberOfRects = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for _ in 1..<numberOfRects {
            let rect = createRectangle()
            stackView.addArrangedSubview(rect)
        }
        
        scrollView.delegate = self
        
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        scrollView.addSubview(stackView)
        stackView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        
        scrollView.contentSize.height = (rectHeight * CGFloat(numberOfRects)) + 64
    }
    
    private func createRectangle() -> UIView {
        let view = UIView()
        view.heightAnchor.constraint(equalToConstant: rectHeight).isActive = true
        view.widthAnchor.constraint(equalToConstant: rectHeight).isActive = true
        view.backgroundColor = .systemGray
        view.layer.cornerRadius = 16
        return view
    }

}

extension ScrollViewTutorialViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView){
//        print("DEBUG: Scroll offset \(scrollView.contentOffset)")
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView){
        print("DEBUG: Scroll view did end decel..")
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool){
        print("DEBUG: Scroll view did end drag..")
    }
}

#Preview {
    ScrollViewTutorialViewController()
}
