//
//  ViewController.swift
//  SnapKitMariyaHW
//
//  Created by Мария  on 1.09.22.
//Переделать предыдущее ДЗ в ScrollView. Для UITextView сделать минимальный размер по высоте 300 и более (проверить введением длинного текста, можно отключить скрол). Верхнее view с textField - расстояние между textField сделать равным 16 и oбщий размер по высоте не задавать. Для нижнего вью с кнопками сделать высоту равную 0.1 от высоты экрана.
//По итогу хочу получить что бы за верхнее вью, я мог дернуть в стороны(bounce) наш контент.

import UIKit
import SnapKit 

class ViewController: UIViewController,UIScrollViewDelegate {
    let container : UIView = {
        let view =  UIView()
        return view
    }()
    let topView: TopView = {
        let view = TopView()
        return view
    }()
    let buttonView : ButtonView = {
        let buttonView = ButtonView()
        return buttonView
    }()
    let bigView : UITextView = {
        let view = UITextView()
        view.backgroundColor = UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 1)
        view.font = UIFont(name: "System", size: 50)
        view.isScrollEnabled = false
        return view
    }()
    let scrollView : UIScrollView = {
        let scroll = UIScrollView()
        return scroll
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        view.addSubview(container)
        view.addSubview(scrollView)
        scrollView.addSubview(container)
        container.addSubview(topView)
        container.addSubview(bigView)
        container.addSubview(buttonView)

        makeConstraints()
        
        
        
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        let view =  container
        return view
    }
    func makeConstraints(){
        scrollView.snp.makeConstraints { make in
            make.left.equalTo(view.snp.left)
            make.right.equalTo(view.snp.right)
            make.top.equalTo(view.snp.top)
            make.bottom.equalTo(view.snp.bottom)
            make.height.equalTo(view.snp.height)
            make.width.equalTo(view.snp.width)
        }
        container.snp.makeConstraints { make in
            make.top.bottom.right.left.equalTo(scrollView)
            make.height.equalTo(scrollView.snp.height).multipliedBy(1.01)
            make.width.equalTo(scrollView.snp.width).multipliedBy(1.01)
        }
        bigView.snp.makeConstraints { make in
            make.left.equalTo(container.snp.left).inset(20)
            make.right.equalTo(container.snp.right).inset(20)
            make.top.equalTo(topView.snp.bottom).inset(-40)
            make.bottom.equalTo(buttonView.snp.top).inset(-30)
            make.height.equalTo(450)
        }
        topView.snp.makeConstraints { make in
            make.left.equalTo(container.snp.left).inset(20)
            make.right.equalTo(container.snp.right).inset(20)
            make.top.equalTo(container.snp.top).inset(70)
        }
        buttonView.snp.makeConstraints { make in
            make.bottom.equalTo(container.snp.bottom).inset(50)
            make.centerX.equalTo(container.snp.centerX)
            make.height.equalTo(container.snp.height).multipliedBy(0.1)
            make.width.equalTo(315)
        }
    }
}

