//
//  ContainerViewController.swift
//  SnapKitMariyaHW
//
//  Created by Мария  on 20.09.22.
//

import UIKit

class ContainerViewController: UIViewController {
    var cardVC = CardViewController()
    var menuVC = MenuViewController()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground

       addChildVC()
    }
    private  func addChildVC() {
        
        cardVC.delegate = self
        addChild(menuVC)
        view.addSubview(menuVC.view)
//        menuVC.didMove(toParent: self)
        addChild(cardVC)
        view.addSubview(cardVC.view)
        cardVC.didMove(toParent: self)
    
    }
    }
extension ContainerViewController : CardControllerDelegate {
    func didButtonTapped() {
       
        let blurEffect =  UIBlurEffect(style: .systemThinMaterialDark)
        let blurView = UIVisualEffectView(effect: blurEffect)
        
        let vibrancyEffect = UIVibrancyEffect(blurEffect: blurEffect)
        let vibrancyView =  UIVisualEffectView(effect: vibrancyEffect)
        
        self.cardVC.view.addSubview(blurView)
        blurView.contentView.addSubview(vibrancyView)
        
//        self.cardVC.view.removeFromSuperview()
//        vibrancyView.contentView.addSubview(self.cardVC.view)
        
        blurView.translatesAutoresizingMaskIntoConstraints = false
        vibrancyView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            blurView.topAnchor.constraint(equalTo: self.cardVC.view.topAnchor),
            blurView.bottomAnchor.constraint(equalTo: self.cardVC.view.bottomAnchor),
            blurView.leftAnchor.constraint(equalTo: self.cardVC.view.leftAnchor),
            blurView.rightAnchor.constraint(equalTo: self.cardVC.view.rightAnchor),
            vibrancyView.heightAnchor.constraint(equalTo: blurView.contentView.heightAnchor),
            vibrancyView.widthAnchor.constraint(equalTo: blurView.contentView.widthAnchor),
            vibrancyView.centerXAnchor.constraint(equalTo: blurView.contentView.centerXAnchor),
            vibrancyView.centerYAnchor.constraint(equalTo: blurView.contentView.centerYAnchor),
            cardVC.view.centerYAnchor.constraint(equalTo: vibrancyView.contentView.centerYAnchor),
            cardVC.view.centerXAnchor.constraint(equalTo: vibrancyView.contentView.centerXAnchor)
            
        ])
        UIView.animate(withDuration: 1) {
            self.cardVC.view.frame.origin.x = 250
        
        }
            
        }

        
    }
    
    



