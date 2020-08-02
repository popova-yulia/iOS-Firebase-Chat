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
        button.backgroundColor = UIColor.init(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.2)
        button.setTitleColor( #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: UIControl.State.normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return button
    }()
    
    private let dontHaveAccountButton: UIButton = {
        let button = UIButton(type: .system)
        let attributedTitle = NSMutableAttributedString(string: "Don't have an account?", attributes: [
            .font: UIFont.systemFont(ofSize: 16),
            .foregroundColor: UIColor.white
        ])
        attributedTitle.append(NSAttributedString(
            string: " Sign up",
            attributes: [
                .font: UIFont.boldSystemFont(ofSize: 16),
                .foregroundColor: UIColor.white
        ]))
        button.setAttributedTitle(attributedTitle, for: .normal)
        
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
        
        view.addSubview(dontHaveAccountButton)
        
        dontHaveAccountButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        dontHaveAccountButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        dontHaveAccountButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        dontHaveAccountButton.translatesAutoresizingMaskIntoConstraints = false
        
        dontHaveAccountButton.addTarget(self, action: #selector(handleShowSignUp), for: .touchUpInside)
    }
    
    // MARK: - Selectors
    
    @objc func handleShowSignUp() {
        navigationController?.pushViewController(RegistrationController(), animated: true)
    }
}
