//
//  DetailViewController.swift
//  Doom
//
//  Created by Nick Ivanov on 29.05.2020.
//  Copyright © 2020 Nick Ivanov. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var setDemonName: DemonProperty?
    
    let imageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.heightAnchor.constraint(equalToConstant: 420).isActive = true
        return image
    }()
    
    let scrollView: UIScrollView = {
        let scroll = UIScrollView()
        scroll.translatesAutoresizingMaskIntoConstraints = false
        return scroll
    }()
    
    let stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        stack.spacing = 0
        stack.distribution = .fill
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let descriptionTextView: UILabel = {
        let textView = UILabel()
        textView.backgroundColor = .black
        textView.textAlignment = .center
        textView.textColor = .red
        textView.numberOfLines = 0
        textView.font = UIFont(name: "Courier", size: 20)
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNavigation()
    
        imageView.image = setDemonName?.image
        descriptionTextView.text = setDemonName?.text
        
        self.view.addSubview(scrollView)
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(descriptionTextView)
        scrollView.addSubview(stackView)
        
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: self.view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
        ])
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
        ])
    }
    
    
    func setUpNavigation() {
        navigationItem.title = setDemonName?.name
        self.navigationController?.navigationBar.tintColor = .red
        navigationController?.navigationBar.titleTextAttributes = [
            .foregroundColor: UIColor.red,
            .font: UIFont(name: "Courier-Bold", size: 20)!]
    }
}
