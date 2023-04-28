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
    
    private lazy var sliderOne: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 3.00
        slider.value = 1.5
        slider.thumbTintColor = .white
        slider.minimumTrackTintColor = .systemPink
        slider.maximumTrackTintColor = .systemGray3
        slider.isContinuous = true
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.addTarget(self, action: #selector(sliderValue), for: [.touchUpInside, .touchUpOutside, .touchCancel])
        return slider
    }()
    
    private lazy var sliderTwo: UISlider = {
        let slider = UISlider()
        slider.minimumValue = 0
        slider.maximumValue = 120
        slider.value = 60
        slider.thumbTintColor = .white
        slider.minimumTrackTintColor = .systemPink
        slider.maximumTrackTintColor = .systemGray3
        slider.isContinuous = true
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.addTarget(self, action: #selector(sliderValueTwo), for:  [.touchUpInside, .touchUpOutside, .touchCancel])
        return slider
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("CALCULATE", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .systemPink
        button.layer.cornerRadius = 16
        button.addTarget(self, action: #selector(handleButtonTap), for: .touchUpInside)
        return button
    }()
    
    @objc func handleButtonTap(_ sender: UIButton) {
        
        let hight = sliderOne.value
        let weight = sliderTwo.value
        
        if hight == 1.5 && weight == 60 {
            let calculateVC = CalculateViewController()
            calculateVC.bmiValue = "0"
            navigationController?.present(calculateVC, animated: true)
        } else {
            let bmi = weight / pow(hight, 2)
            let calculateVC = CalculateViewController()
            calculateVC.bmiValue = String(format: "%.1f", bmi)
            navigationController?.present(calculateVC, animated: true)
        }
    }
    
    
    private let heightLabel: UILabel = {
        let heightLabel = UILabel()
        heightLabel.translatesAutoresizingMaskIntoConstraints = false
        heightLabel.text = "Height"
        heightLabel.textColor = .white
        heightLabel.numberOfLines = 0
        heightLabel.font = .boldSystemFont(ofSize: 16)
        return heightLabel
    }()
    
    private let heightScore: UILabel = {
        let heightScore = UILabel()
        heightScore.translatesAutoresizingMaskIntoConstraints = false
        heightScore.text = "1.50 m"
        heightScore.textColor = .white
        heightScore.numberOfLines = 0
        heightScore.font = .boldSystemFont(ofSize: 16)
        return heightScore
    }()
    
    private let weightLabel: UILabel = {
        let weightLabel = UILabel()
        weightLabel.translatesAutoresizingMaskIntoConstraints = false
        weightLabel.text = "Weight"
        weightLabel.textColor = .white
        weightLabel.numberOfLines = 0
        weightLabel.font = .boldSystemFont(ofSize: 16)
        return weightLabel
    }()
    
    private let weightScore: UILabel = {
        let weightScore = UILabel()
        weightScore.translatesAutoresizingMaskIntoConstraints = false
        weightScore.text = "60 kg"
        weightScore.textColor = .white
        weightScore.numberOfLines = 0
        weightScore.font = .boldSystemFont(ofSize: 16)
        return weightScore
    }()
    
    @objc private func sliderValue(_ sender: UISlider) {
        let score = String(format: "%.2f", sender.value)
        heightScore.text = "\(score) m"
    }
    
    @objc private func sliderValueTwo(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightScore.text = "\(weight) Kg"
    }
}


extension ViewController {
    func layout() {
        view.addSubview(imageView)
        view.addSubview(labelText)
        view.addSubview(sliderOne)
        view.addSubview(sliderTwo)
        view.addSubview(button)
        view.addSubview(heightLabel)
        view.addSubview(weightLabel)
        view.addSubview(heightScore)
        view.addSubview(weightScore)
        
        NSLayoutConstraint.activate([
            
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            labelText.topAnchor.constraint(equalTo: view.topAnchor, constant: 240),
            labelText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            labelText.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            heightLabel.bottomAnchor.constraint(equalTo: sliderOne.topAnchor, constant: -6),
            heightLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            heightScore.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            heightScore.bottomAnchor.constraint(equalTo: sliderOne.topAnchor, constant: -6),
            
            sliderOne.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            sliderOne.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            sliderOne.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            sliderOne.heightAnchor.constraint(equalToConstant: 50),
            sliderOne.widthAnchor.constraint(equalToConstant: 200),
            sliderOne.bottomAnchor.constraint(equalTo: sliderTwo.topAnchor, constant: -30),
            
            weightLabel.bottomAnchor.constraint(equalTo: sliderTwo.topAnchor, constant: -6),
            weightLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            weightScore.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            weightScore.bottomAnchor.constraint(equalTo: sliderTwo.topAnchor, constant: -6),
            
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
