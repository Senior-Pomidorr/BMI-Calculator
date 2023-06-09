//
//  NavigationController.swift
//  BMI Calculator
//
//  Created by Daniil Kulikovskiy on 27.04.2023.
//

import Foundation
import UIKit

class NavigationControllerViewController: UINavigationController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        config()
    }
    
    private func config() {
        navigationBar.backgroundColor = .clear
        navigationBar.tintColor = .label
        let backButton = UIBarButtonItem()
        navigationBar.topItem?.backBarButtonItem = backButton
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    




}
