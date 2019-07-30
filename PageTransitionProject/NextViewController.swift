//
//  NextViewController.swift
//  PageTransitionProject
//
//  Created by 星みちる on 2019/07/16.
//  Copyright © 2019 星みちる. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    
    //前の画面から値を受け取る変数
    var value = "からです"
    override func viewDidLoad() {
        super.viewDidLoad()
    
Label.text = value
    
    
    }


}
