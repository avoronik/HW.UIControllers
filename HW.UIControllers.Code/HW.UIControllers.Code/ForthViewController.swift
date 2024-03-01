//
//  ForthViewController.swift
//  HW.UIControllers.Code
//
//  Created by Anastasia on 01/03/24.
//

import UIKit

class ForthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        self.title = "CAMERA"
        
        let label = UILabel(frame: CGRect(x: 130, y: 380, width: 150, height: 70 ))
        label.text = "THIS IS CAMERA"
        label.textColor = .systemBlue
        label.font = UIFont.systemFont(ofSize: 18)
        
        
        self.view.addSubview(label)
    }
}
