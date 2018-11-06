//
//  ViewController.swift
//  screenTransition_programatically
//
//  Created by masato on 6/11/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 背景色をGreenにする
        self.view.backgroundColor = .green

        // ボタンを生成する。
        let nexButton: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 120, height: 50))
        nexButton.backgroundColor = .red
        nexButton.layer.masksToBounds = true
        nexButton.setTitle("Next", for: .normal)
        nexButton.layer.cornerRadius = 20.0
        nexButton.layer.position = CGPoint(x: self.view.bounds.width/2, y: self.view.bounds.height-50)
        nexButton.addTarget(self, action: #selector(onClickMyButton(sender:)), for: .touchUpInside)

        // add button on view
        self.view.addSubview(nexButton)
    }



    // internal
    @objc func onClickMyButton(sender: UIButton) {

//        // 遷移するViewを定義する
//        let myViewController: UIViewController = SecondViewController()
//
//        // set Animation
//        myViewController.modalTransitionStyle = UIModalTransitionStyle.coverVertical
//        // View Transition
//        self.present(myViewController, animated: true, completion: nil)・



        // 1.遷移するViewの定義
        let myViewController: UIViewController = SecondViewController()

        myViewController.modalTransitionStyle = UIModalTransitionStyle.coverVertical

        //
        self.present(myViewController, animated: true, completion: nil)
    }




}

