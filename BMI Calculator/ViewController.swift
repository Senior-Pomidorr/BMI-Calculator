//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Daniil Kulikovskiy on 27.04.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        layout()
    }

    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: Image.backgroindImage)
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let labelText: UILabel = {
        let labelText = UILabel()
        labelText.translatesAutoresizingMaskIntoConstraints = false
        labelText.text = "CALCULATE YOUR BMI"
        labelText.textColor = .white
        labelText.font = .boldSystemFont(ofSize: 30)
        return labelText
    }()
    
    
    
    
}



extension ViewController {
    func layout() {
        view.addSubview(imageView)
        view.addSubview(labelText)
        
        NSLayoutConstraint.activate([
            
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        
            labelText.topAnchor.constraint(equalTo: view.topAnchor, constant: 240),
            labelText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            labelText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
           
            
        
        ])
    }
    
    
}
