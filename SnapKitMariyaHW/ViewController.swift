//
//  ViewController.swift
//  SnapKitMariyaHW
//
//  Created by Мария  on 1.09.22.
//

import UIKit
import SnapKit 

class ViewController: UIViewController {
    
    let topView: TopView = {
        let view = TopView()
        return view
    }()
    let buttonView : ButtonView = {
        let buttonView = ButtonView()
        return buttonView
    }()
    let bigView : UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)
        return view
    }()
    let labelText : UILabel = {
        let label = UILabel()
        label.text = "Notes:"
        return label
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.addSubview(topView)
        view.addSubview(bigView)
        view.addSubview(buttonView)
        bigView.addSubview(labelText)
        
        
        bigView.snp.makeConstraints { make in
            make.left.equalTo(view.snp.left).inset(20)
            make.right.equalTo(view.snp.right).inset(20)
            make.top.equalTo(topView.snp.bottom).inset(-20)
            make.bottom.equalTo(buttonView.snp.top).inset(-20)
//            make.height.equalTo(400)
           
        }
        topView.snp.makeConstraints { make in
            make.left.equalTo(view).inset(20)
            make.right.equalTo(view).inset(20)
            make.top.equalToSuperview().inset(55)
            make.height.equalTo(125)
           
        }
        buttonView.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(16)
            make.topMargin.equalTo(bigView.snp.bottom).inset(20)
            make.centerX.equalTo(view.snp.centerX)
            make.height.equalTo(30)
            make.width.equalTo(315)
        }
        labelText.snp.makeConstraints { make in
            make.left.top.right.equalTo(bigView).inset(10)
            
        }
        
        
        
        
        
        
    }


}

