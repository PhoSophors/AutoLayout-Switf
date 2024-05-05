//
//  LayoutViewController.swift
//  AutoLayout
//
//  Created by Apple on 5/5/24.
//

import UIKit

class LayoutViewController: UIViewController {
    
    let button1 = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Secound View"
//        6
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        
        
        button1.setTitle("Button 1", for: .normal)
        button2.setTitle("Button 2", for: .normal)
        button3.setTitle("Button 3", for: .normal)
        
        button1.layer.cornerRadius = 10
        button2.layer.cornerRadius = 10
        button3.layer.cornerRadius = 10
        
        
        button1.backgroundColor = .red
        button2.backgroundColor = .blue
        button3.backgroundColor = .darkGray
        
        // Disable autoresizing for all buttons
        button1.translatesAutoresizingMaskIntoConstraints = false
        button2.translatesAutoresizingMaskIntoConstraints = false
        button3.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        // Constraints
        
        // Button 1: Center horizontally and top aligned with safe area (20 points padding)
        button1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        button1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        // Button 2: Center horizontally and bottom aligned with safe area (20 points padding)
        button2.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        button2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    
        let heightBtn1 = NSLayoutConstraint(item: button1, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50)
        let widthBtn1 = NSLayoutConstraint(item: button1, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100)
        
        let heightBtn2 = NSLayoutConstraint(item: button2, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50)
        let widthBtn2 = NSLayoutConstraint(item: button2, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100)
        
        let heightBtn3 = NSLayoutConstraint(item: button3, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50)
        let widthBtn3 = NSLayoutConstraint(item: button3, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100)
        
        // Button 3: Center X and Center Y
        let centerX = NSLayoutConstraint(item: button3, attribute: .centerX, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .centerX, multiplier: 1, constant: 0)
        let centerY = NSLayoutConstraint(item: button3, attribute: .centerY, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .centerY, multiplier: 1, constant: 0)

        NSLayoutConstraint.activate([centerX, centerY, heightBtn1, widthBtn1, heightBtn2, widthBtn2, heightBtn3, widthBtn3])
    }
    

    // MARK: - Navigation

}
