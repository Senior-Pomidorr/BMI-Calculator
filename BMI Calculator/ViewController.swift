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
        labelText.numberOfLines = 0
        labelText.font = .boldSystemFont(ofSize: 38)
        return labelText
    }()
    
    private let sliderOne: UISlider = {
       let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = 50
        slider.thumbTintColor = .white
        slider.minimumTrackTintColor = .systemPink
        slider.maximumTrackTintColor = .systemGray3
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    private let sliderTwo: UISlider = {
       let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = 50
        slider.thumbTintColor = .white
        slider.minimumTrackTintColor = .systemPink
        slider.maximumTrackTintColor = .systemGray3
        slider.translatesAutoresizingMaskIntoConstraints = false
        return slider
    }()
    
    private let button: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("CALCULATE", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .systemPink
        button.layer.cornerRadius = 16
        return button
    }()
}



extension ViewController {
    func layout() {
        view.addSubview(imageView)
        view.addSubview(labelText)
        view.addSubview(sliderOne)
        view.addSubview(sliderTwo)
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        
            labelText.topAnchor.constraint(equalTo: view.topAnchor, constant: 240),
            labelText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            labelText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
           
            sliderOne.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sliderOne.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            sliderOne.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            sliderOne.heightAnchor.constraint(equalToConstant: 50),
            sliderOne.widthAnchor.constraint(equalToConstant: 200),
            sliderOne.bottomAnchor.constraint(equalTo: sliderTwo.topAnchor, constant: -30),
            
            
            sliderTwo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sliderTwo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            sliderTwo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            sliderTwo.heightAnchor.constraint(equalToConstant: 50),
            sliderTwo.widthAnchor.constraint(equalToConstant: 200),
            sliderTwo.bottomAnchor.constraint(equalTo: button.topAnchor, constant: -30),
            
            button.topAnchor.constraint(equalTo: sliderTwo.bottomAnchor, constant: 20),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
            button.heightAnchor.constraint(equalToConstant: 60)
            
        
        ])
    }
    
    
}
