//
//  ViewController.swift
//  FlappyBird2
//
//  Created by Kojiro Wakabayashi on 2017/01/24.
//  Copyright © 2017年 wkojiro. All rights reserved.
//

import UIKit
import SpriteKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // SKViewに型を変換する
        let skView = self.view as! SKView
        
        //　FPSを表示する　画面が１秒間に何回更新されているかを示す小窓を表示
        skView.showsFPS = true
        
        // ノードの数を表示する
        skView.showsNodeCount = true
        
        //　ビューと同じサイズでシーンを作成する
        //let scene = SKScene(size:skView.frame.size)
        let scene = GameScene(size:skView.frame.size)
        
        //　ビューにシーンを表示する
        skView.presentScene(scene)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // ステータスバーを消す --- ここから ---
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    } // --- ここまで追加 ---

}

