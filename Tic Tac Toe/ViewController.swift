//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Kartik on 12/22/16.
//  Copyright © 2016 Kartik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var  player = 1
    var state = [0,0,0,0,0,0,0,0,0]
    @IBOutlet weak var button1: UIButton!
    @IBAction func buttom1(_ sender: AnyObject) {
        var image = UIImage()
        if(state[sender.tag] == 0){
        state[sender.tag] = player
        
        if player == 1{
            image = UIImage(named: "tic2.png")!
            player = 2
            
        }else{
            image = UIImage(named: "tic1.png")!
            player = 1
        }
            }
        sender.setImage(image, for: .normal)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

