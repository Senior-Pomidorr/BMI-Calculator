//
//  CalculateVIewController.swift
//  BMI Calculator
//
//  Created by Daniil Kulikovskiy on 27.04.2023.
//

import Foundation

//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Daniil Kulikovskiy on 27.04.2023.
//

import UIKit

class CalculateViewController: UIViewController {
    
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
    
    private let yourResult: UILabel = {
        let labelText = UILabel()
        labelText.translatesAutoresizingMaskIntoConstraints = false
        labelText.text = "YOUR RESULT"
        labelText.textColor = .white
        labelText.textAlignment = .center
        labelText.font = .boldSystemFont(ofSize: 38)
        return labelText
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("RECALCULATE", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .systemPink
        button.layer.cornerRadius = 16
        return button
    }()
    
    private let scoreLabel: UILabel = {
        let heightLabel = UILabel()
        heightLabel.translatesAutoresizingMaskIntoConstraints = false
        heightLabel.text = "19.5"
        heightLabel.textColor = .white
        heightLabel.numberOfLines = 0
        heightLabel.font = .boldSystemFont(ofSize: 90)
        return heightLabel
    }()
    
    private let descriptionText: UILabel = {
        let heightScore = UILabel()
        heightScore.translatesAutoresizingMaskIntoConstraints = false
        heightScore.text = "EAT SOME MORE SNACKS!"
        heightScore.textColor = .white
        heightScore.numberOfLines = 0
        heightScore.font = .systemFont(ofSize: 20)
        return heightScore
    }()
}



extension CalculateViewController {
    func layout() {
        view.addSubview(imageView)
        view.addSubview(yourResult)
        view.addSubview(button)
        view.addSubview(scoreLabel)
        view.addSubview(descriptionText)
        
        
        NSLayoutConstraint.activate([
            
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            yourResult.bottomAnchor.constraint(equalTo: scoreLabel.topAnchor, constant: -16),
            yourResult.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            yourResult.heightAnchor.constraint(equalToConstant: 30),
            
            scoreLabel.topAnchor.constraint(equalTo: yourResult.bottomAnchor, constant: 10),
            scoreLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            scoreLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            scoreLabel.heightAnchor.constraint(equalToConstant: 80),
            
            descriptionText.topAnchor.constraint(equalTo: scoreLabel.bottomAnchor, constant: 14),
            descriptionText.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            
            
            //            button.topAnchor.constraint(equalTo: sliderTwo.bottomAnchor, constant: 20),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
            button.heightAnchor.constraint(equalToConstant: 60)
            
            
        ])
    }
    
    
}
