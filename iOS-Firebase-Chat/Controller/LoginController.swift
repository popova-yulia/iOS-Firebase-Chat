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
    
    private lazy var emailContrainerView : UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "envelope")
        imageView.tintColor = .systemIndigo
        
        view.addSubview(imageView)
        imageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 24).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 28).isActive = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(emailTextField)
        emailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        emailTextField.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 8).isActive = true
        emailTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 4).isActive = true
        emailTextField.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -4).isActive = true
        emailTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -4).isActive = true
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    
    private lazy var passwordContrainerView : UIView = {
        let view = UIView()
        
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "lock")
        imageView.tintColor = .systemIndigo
        
        view.addSubview(imageView)
        imageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 28).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 28).isActive = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(passwordTextField)
        passwordTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 8).isActive = true
        passwordTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 4).isActive = true
        passwordTextField.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -4).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -4).isActive = true
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    
    private let emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email"
        tf.tintColor = .white
        tf.textColor = .white
        return tf
    }()
    
    private let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.isSecureTextEntry = true
        tf.placeholder = "Password"
        tf.textColor = .white
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
        
        
        
        let stack = UIStackView(arrangedSubviews: [emailContrainerView, passwordContrainerView, button])
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
