//
//  ViewController.swift
//  HW.UIControllers.Code
//
//  Created by Anastasia on 01/03/24.
//

import UIKit

class ViewController: UIViewController {

    lazy var ButtonToVC2: UIButton = makeButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "HOME"
        self.view.backgroundColor = .systemMint
        
        self.view.addSubview(ButtonToVC2)
        
        NSLayoutConstraint.activate([
            ButtonToVC2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            ButtonToVC2.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
        
        ButtonToVC2.addAction(UIAction(handler: { [weak self] _ in
            
            //print("tap button")
            
            let vc2 = SecondViewController()
            
            self?.navigationController?.pushViewController(vc2, animated: true)
            
            
        }), for: .touchUpInside)
        
    }

    func makeButton() -> UIButton {
        let button = UIButton(configuration: .bordered())
        button.setTitle("GO TO SECOND VC", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }

}

