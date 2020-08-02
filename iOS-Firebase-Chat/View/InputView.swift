//
//  InputView.swift
//  iOS-Firebase-Chat
//
//  Created by Y u l i a on 02.08.2020.
//  Copyright © 2020 Yulia. All rights reserved.
//

import UIKit

class InputView: UIView {
    
    init(image: UIImage, textField: UITextField) {
        super.init(frame: .zero)
        heightAnchor.constraint(equalToConstant: 50).isActive = true
        let imageView = UIImageView()
        imageView.image = image
        imageView.tintColor = .white
        imageView.alpha = 0.9
        
        addSubview(imageView)
        
        imageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        imageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 28).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 28).isActive = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
    
        addSubview(textField)
        textField.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 8).isActive = true
        textField.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        textField.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        textField.topAnchor.constraint(equalTo: topAnchor).isActive = true
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        let dividerView = UIView()
        dividerView.backgroundColor = .white
        addSubview(dividerView)
        dividerView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        dividerView.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        dividerView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        dividerView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        dividerView.translatesAutoresizingMaskIntoConstraints = false
        

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
