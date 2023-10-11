//
//  ViewController.swift
//  Audio_Video_Project33
//
//  Created by Jesse viau on 2023-10-08.
//

import UIKit

class ViewController: UIViewController {
    
    static var isDirty = true
    
    //MARK: viewDidLoad function
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //page title
        title = "What's that Whistle?"
        //programmitcally add right bar button item and a back button
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addWhistle))
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Home", style: .plain, target: nil, action: nil)
    }
    
    @objc func addWhistle() {
        let vc = RecordWhistleViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

}

