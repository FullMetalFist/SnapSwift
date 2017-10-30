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
    
    var buttonsEnabled: Bool {
        set {
            self.hostGame.isEnabled = newValue
            self.joinGame.isEnabled = newValue
            self.singlePlayer.isEnabled = newValue
        }
        get { return self.buttonsEnabled }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        prepareForIntroAnimation()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        /*
         won't display buttons on load-
         */
//        performIntroAnimation()
    }
    
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
    
    func prepareForIntroAnimation() {
        self.sImageView.isHidden = true
        self.nImageView.isHidden = true
        self.aImageView.isHidden = true
        self.pImageView.isHidden = true
        self.jokerImageView.isHidden = true
        
        self.hostGame.alpha = 0.0
        self.joinGame.alpha = 0.0
        self.singlePlayer.alpha = 0.0
        
        self.buttonsEnabled = false
    }
    
    func performIntroAnimation() {
        self.sImageView.isHidden = false
        self.nImageView.isHidden = false
        self.aImageView.isHidden = false
        self.pImageView.isHidden = false
        self.jokerImageView.isHidden = false
        
        let point: CGPoint = CGPoint(x: self.view.bounds.size.width / 2.0, y: self.view.bounds.size.height * 2.0)
        self.sImageView.center = point
        self.nImageView.center = point
        self.aImageView.center = point
        self.pImageView.center = point
        self.jokerImageView.center = point
        
        // a little off, no setting for different devices
        UIView.animate(withDuration: 0.65, delay: 0.5, options: .curveEaseOut, animations: {
            self.sImageView.center = CGPoint(x: 80.0, y: 108.0)
            self.sImageView.transform = CGAffineTransform.init(rotationAngle: -0.22)
            self.nImageView.center = CGPoint(x: 160.0, y: 93.0)
            self.nImageView.transform = CGAffineTransform.init(rotationAngle: -0.1)
            self.aImageView.center = CGPoint(x: 240.0, y: 88.0)
            self.pImageView.center = CGPoint(x: 320.0, y: 93.0)
            self.pImageView.transform = CGAffineTransform.init(rotationAngle: 0.1)
            self.jokerImageView.center = CGPoint(x: 400.0, y: 108.0)
            self.jokerImageView.transform = CGAffineTransform.init(rotationAngle: 0.22)
        }, completion: { (finished: Bool) in
            self.buttonsEnabled = true
        })
    }
}

