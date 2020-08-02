//
//  CustomTextField.swift
//  iOS-Firebase-Chat
//
//  Created by Y u l i a on 02.08.2020.
//  Copyright © 2020 Yulia. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {
    init(placeholder: String) {
        super.init(frame: .zero)
        
        font = UIFont.systemFont(ofSize: 16)
        textColor = .white
        keyboardAppearance = .light
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor: UIColor.white])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
