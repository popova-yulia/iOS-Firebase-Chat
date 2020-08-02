//
//  LoginController.swift
//  iOS-Firebase-Chat
//
//  Created by Y u l i a on 01.08.2020.
//  Copyright © 2020 Yulia. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    // MARK: - Properties
    private let iconImage : UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "message")
        imageView.tintColor = .white
    
        return imageView
    }()
    
    private lazy var emailView: InputView = {
        return InputView(image: UIImage(systemName: "envelope")!, textField: emailTextField)
    }()
    
    private lazy var passwordView: InputView = {
        return InputView(image: UIImage(systemName: "lock")!, textField: passwordTextField)
    }()
    
    private let emailTextField: UITextField = {
        let tf = CustomTextField(placeholder: "E-mail")
        return tf
    }()
    
    private let passwordTextField: UITextField = {
        let tf = CustomTextField(placeholder: "Password")
        tf.isSecureTextEntry = true
        return tf
    }()
    
    private let button : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Sign in", for: UIControl.State.normal)
        button.layer.cornerRadius = 10
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        button.backgroundColor = .white
        return button
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        view.backgroundColor = .systemIndigo
        navigationController?.navigationBar.isHidden = true
        
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemIndigo.cgColor, UIColor.systemTeal.cgColor]
        gradient.locations = [0, 1]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
        
        view.addSubview(iconImage)
        iconImage.translatesAutoresizingMaskIntoConstraints = false
        iconImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        iconImage.heightAnchor.constraint(equalToConstant: 200).isActive = true
        iconImage.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        iconImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32).isActive = true
        
        
        
        let stack = UIStackView(arrangedSubviews: [emailView, passwordView, button])
        stack.axis = .vertical
        stack.spacing = 20
        
        view.addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.topAnchor.constraint(equalTo: iconImage.bottomAnchor).isActive = true
        stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stack.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 32).isActive = true
        stack.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -32).isActive = true
    }
}
