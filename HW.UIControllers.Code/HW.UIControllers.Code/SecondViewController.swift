//
//  SecondViewController.swift
//  HW.UIControllers.Code
//
//  Created by Anastasia on 01/03/24.
//

import UIKit

class SecondViewController: UIViewController {

    lazy var buttonToVC3: UIButton = makeButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "VC2"
        self.view.backgroundColor = .white
        
        self.view.addSubview(buttonToVC3)
        
        NSLayoutConstraint.activate([
            buttonToVC3.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            buttonToVC3.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        buttonToVC3.addAction(UIAction(handler: { [weak self] _ in
            
            //print("tap button")
            
            let vc3 = ThirdViewController()
            
            self?.navigationController?.pushViewController(vc3, animated: true)
            
            
        }), for: .touchUpInside)
        
    }

    func makeButton() -> UIButton {
        let button = UIButton(configuration: .bordered())
        button.setTitle("GO TO THIRD VC", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }
}
