//
//  ViewController.swift
//  ZingMP3
//
//  Created by tubjng on 7/15/16.
//  Copyright © 2016 tubjng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var name: UILabel!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        logo!.alpha = 0
        
        text!.alpha = 0
        
        name!.alpha = 0
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        UIView.animate(withDuration: 4, animations: {
            
            self.logo!.alpha = 1
            
        }, completion: { (finished) in
            
            UIView.animate(withDuration: 3 , animations:  {
                
                self.text!.center = CGPoint(x: self.logo!.center.x, y: 50)
                
                self.text!.alpha = 1
                
                },
                                           
                                           
                                           
                                           
    completion: { (finished) in
        
        UIView.animate(withDuration: 3, animations: { 
            self.name!.center = CGPoint(x: self.logo!.center.x, y: 480)
            
            self.name!.alpha = 1
        })
        
        
        
        
        
        
        
        
        
                })
        }) 
        
    }
}
