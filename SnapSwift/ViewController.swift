//
//  ViewController.swift
//  SnapSwift
//
//  Created by Michael Vilabrera on 10/30/17.
//  Copyright © 2017 Michael Vilabrera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sImageView: UIImageView!
    @IBOutlet weak var nImageView: UIImageView!
    @IBOutlet weak var aImageView: UIImageView!
    @IBOutlet weak var pImageView: UIImageView!
    @IBOutlet weak var jokerImageView: UIImageView!
    
    @IBOutlet weak var hostGame: UIButton!
    @IBOutlet weak var joinGame: UIButton!
    @IBOutlet weak var singlePlayer: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        hostGame.titleLabel?.font = UIFont.snapFontWithSize(size: 20.0)
//        joinGame.titleLabel?.font = UIFont.snapFontWithSize(size: 20.0)
//        singlePlayer.titleLabel?.font = UIFont.snapFontWithSize(size: 20.0)
        hostGame.applySnapStyle()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

