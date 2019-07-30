//
//  ViewController.swift
//  PageTransitionProject
//
//  Created by 星みちる on 2019/07/16.
//  Copyright © 2019 星みちる. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didClickButton(_ sender: UIButton) {
  //次の画面に移遷する処理
        performSegue(withIdentifier:"toNext" , sender: textField.text)
        
        //PerfomSegue:画面変換するための関数
        //withEdenifier:矢印の名前
        //sender:次の画面に渡したい値
    }
    
    
    @IBAction func didClickButton2(_ sender: UIButton) {
        performSegue(withIdentifier:"toNext" , sender: textField.text)
    }
    
    
    //画面遷移の前処理を定義する
    //今回の場合は、次の画面（NextViewController）の変数valueに送信する値を代入する
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //これから実行される矢印の名前をチェックして、
        //「toNext」の場合、文字を設定する
        if segue.identifier == "toNext" {
            //矢印の名前が「toNext」の場合
            //次の画面のcontrollerを取得する
            
            let nextVC = segue.destination as!NextViewController
            //取得したcontrollerの変数valueに送信する値を設定する
            nextVC.value = sender as!String
            
        }
        
        
        
        
    }
}

