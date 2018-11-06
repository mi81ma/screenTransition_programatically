//
//  SecondViewController.swift
//  screenTransition_programatically
//
//  Created by masato on 6/11/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Background Clor set
        self.view.backgroundColor = .blue

        // Button set

        let backButton: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 120, height: 50))
        backButton.backgroundColor = .red
        backButton.layer.masksToBounds = true
        backButton.setTitle("Back", for: .normal)
        backButton.layer.cornerRadius = 20.0
        backButton.layer.position = CGPoint(x: self.view.bounds.width/2 , y:self.view.bounds.height-50)

        backButton.addTarget(self, action: #selector(onClickBackButton(sender:)), for: .touchUpInside)

        self.view.addSubview(backButton)


    }


    /*
    button event
    */

    @objc func onClickBackButton(sender: UIButton){

        // 遷移先のViewを定義
        let myBackViewController: UIViewController = FirstViewController()

        // アニメーションを設定
        myBackViewController.modalTransitionStyle = UIModalTransitionStyle.flipHorizontal

        // Viewの移動を実行する
        self.present(myBackViewController, animated: true, completion: nil)
    }
    

}
