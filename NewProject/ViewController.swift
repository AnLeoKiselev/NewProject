//
//  ViewController.swift
//  NewProject
//
//  Created by Anatoliy on 23.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var label = UILabel()
    // 1. добавляем элемент как свойство в класс

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(label)
        // 2. добавляем элемент на view
        setupLabel()
        setupLabelConstraints()
        print("done")
    }
    
    private func setupLabel() {
        label.text = "Hello world!"
        label.textColor = .cyan
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 30)
        label.backgroundColor = .gray
        label.translatesAutoresizingMaskIntoConstraints = false
        // 3. эта херня
    }
    
    private func setupLabelConstraints() {
        label.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 100).isActive = true
        label.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -100).isActive = true
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        label.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        // 4. Настраиваешь constraints ///
    }
}

