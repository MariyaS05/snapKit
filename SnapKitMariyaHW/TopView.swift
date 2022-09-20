//
//  TopView.swift
//  SnapKitMariyaHW
//
//  Created by Мария  on 1.09.22.
//

import Foundation
import SnapKit
import UIKit

class TopView : UIView {
    
    let imageView :  UIImageView = {
        let imageNew = UIImageView(image: UIImage(named: "IMG_9158"))
        return imageNew
    }()
    let firstLabel : UILabel = {
        let label = UILabel()
        label.text = "First"
        return label
    }()
    let middleLabel : UILabel = {
        let label = UILabel()
        label.text = "Middle"
        return label
    }()
    let lastLabel : UILabel = {
        let label = UILabel()
        label.text = "Last"
        return label
    }()
    let firstTextField : UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter First Name"
        textField.borderStyle = .roundedRect
        return textField
    }()
    let secondTextField : UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Middle Name"
        textField.borderStyle = .roundedRect
        return textField
    }()
    let lastTextField : UITextField = {
        let textField = UITextField()
        textField.placeholder = "Enter Last Name"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    let labelStack = UIStackView(arrangedSubviews: [firstLabel,middleLabel,lastLabel])
    let textFieldStack = UIStackView(arrangedSubviews: [firstTextField,secondTextField,lastTextField])
        
        addSubview(textFieldStack)
        addSubview(labelStack)
        addSubview(imageView)
        
        labelStack.axis = .vertical
        labelStack.distribution = .fillEqually
        labelStack.spacing = 32
        textFieldStack.axis = .vertical
        textFieldStack.distribution = .equalSpacing
        textFieldStack.spacing = 16
  
        imageView.snp.makeConstraints { make in
            make.height.equalTo(125)
            make.width.equalTo(125)
            make.left.equalTo(self)
            make.top.equalTo(self)
    }
        labelStack.snp.makeConstraints { make in
            make.left.equalTo(imageView.snp.right).inset(-5)
            make.top.equalTo(self)
            make.width.equalTo(60)
//
        }
        textFieldStack.snp.makeConstraints { make in
            make.left.equalTo(labelStack.snp.right).inset(-5)
            make.top.equalTo(self)
            make.right.equalTo(self)
//            make.height.equalTo(125)
        }
        
        
}
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
