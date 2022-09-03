//
//  ButtonView.swift
//  SnapKitMariyaHW
//
//  Created by Мария  on 3.09.22.
//

import Foundation
import SnapKit
import UIKit

class ButtonView : UIView {
    let buttonSave : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Save", for: .normal)
        button.tintColor = .systemBlue
        return button
    }()
    let buttonClear : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Clear", for: .normal)
        button.tintColor = .systemBlue
        return button
    }()
    let buttonCancel : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Cancel", for: .normal)
        button.tintColor = .systemBlue
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let buttonStack = UIStackView(arrangedSubviews: [buttonSave,buttonClear,buttonCancel])
        buttonStack.axis = .horizontal
        buttonStack.spacing = 55
        buttonStack.distribution = .fillEqually
        
        
        addSubview(buttonStack)
        
        buttonStack.snp.makeConstraints { make in
            make.width.equalTo(315)
            make.height.equalTo(30)
            make.left.equalTo(self)
            make.top.equalTo(self)
        }
    
        
        
}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
