//
//  ViewController.swift
//  SteviaLayoutExample
//
//  Created by Insu Byeon on 2020/08/16.
//  Copyright © 2020 Insu Byeon. All rights reserved.
//

import UIKit
import Stevia

class ViewController: UIViewController {

    // MARK: - UI
    let scrollView: UIScrollView = {
        let node = UIScrollView()
        node.contentInset = .zero
        node.scrollIndicatorInsets = .zero
        node.isPagingEnabled = true
        node.showsHorizontalScrollIndicator = false
        node.showsVerticalScrollIndicator = false
        return node
    }()
    
    let stackView: UIStackView = {
        let node = UIStackView()
        node.axis = .horizontal
        node.distribution = .fillEqually
        return node
    }()
    
    let view1: UIView = {
       let node = UIView()
        node.backgroundColor = .brown
        return node
    }()
    let view2: UIView = {
        let node = UIView()
        node.backgroundColor = .red
        return node
    }()
    let view3: UIView = {
        let node = UIView()
        node.backgroundColor = .blue
        return node
    }()
    let view4: UIView = {
        let node = UIView()
        node.backgroundColor = .black
        return node
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
        
        self.view.subviews {
            scrollView.subviews {
                stackView
            }
        }
        
        [view1, view2, view3, view4]
            .forEach { stackView.addArrangedSubview($0) }
        
        
        self.scrollView.fillContainer()
//        self.scrollView.Bottom == self.view.Bottom
//        self.scrollView.Left == self.view.Left
//        self.scrollView.Right == self.view.Right
//        self.scrollView.Top == self.view.Top
        
        self.stackView.fillContainer()
        equal(heights: self.stackView, self.scrollView)
//        self.stackView.Left == self.scrollView.Left
//        self.stackView.Right == self.scrollView.Right
//        self.stackView.Top == self.scrollView.Top
//        self.stackView.Bottom == self.scrollView.Bottom
//        self.stackView.Height == self.scrollView.Height
        
        equal(sizes: self.view1, self.scrollView)

        
    }

}

// MARK: - Private Methods
extension ViewController {
    private func setupSubviews() {
        
    }
    
    private func setupAutoLayout() {
        
    }
}
