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
    var toWin = [[0,1,2], [3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    var isGameRunning = true
    
    @IBOutlet weak var gameOver: UILabel!
    @IBOutlet weak var playAgain: UIButton!
    
    @IBAction func playAgainClicked(_ sender: AnyObject) {
        player = 1
        state = [0,0,0,0,0,0,0,0,0]
        isGameRunning = true
        gameOver.isHidden = true
        playAgain.isHidden = true
        var button : UIButton
        for i in 0 ... 8{
            button = view.viewWithTag(i) as! UIButton
            button.setImage(nil, for: .normal)
        }
        
    }
    
    @IBOutlet weak var button1: UIButton!
    @IBAction func buttom1(_ sender: AnyObject) {
        var image = UIImage()
        if(state[sender.tag] == 0) && isGameRunning == true{
            state[sender.tag] = player
            
            if player == 1{
                image = UIImage(named: "tic2.png")!
                player = 2
                
            }else{
                image = UIImage(named: "tic1.png")!
                player = 1
            }
            
            sender.setImage(image, for: .normal)
            
            for combination in toWin{
                if state[combination[0]] != 0 && state[combination[0]] == state[combination[1]] && state[combination[1]] == state[combination[2]]{
                    if state[combination[0]] == 1{
                        gameOver.text = "Player 1 Has Won!"
                    }else{
                        gameOver.text = "Player 2 Has Won!"
                    }
                    gameOver.isHidden = false
                    playAgain.isHidden = false
                    isGameRunning = false
                }
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidLayoutSubviews() {
        gameOver.isHidden = true
        playAgain.isHidden = true
    }

}

