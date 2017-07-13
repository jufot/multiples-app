//
//  ViewController.swift
//  multiples-app
//
//  Created by Jeremiah on 10/22/16.
//  Copyright © 2016 Yaheard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //Properties
    var currentNumber = 0
    var userNumber = 0

    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var whatMultipleAddedTxt: UITextField!
    @IBOutlet weak var playbtn: UIButton!
    
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var addDirectionLbl: UILabel!
    @IBOutlet weak var addLbl: UILabel!
    
    @IBAction func onAddTapped(sender: UIButton!) {
        currentNumber = currentNumber + userNumber
        
        updateAddLbl()
        
        if isGameOver() {
            restartGame()
            
        }
        
    }
    
    @IBAction func onPlayBtnPressed(sender: UIButton!) {
        
        
        if whatMultipleAddedTxt.text != nil && whatMultipleAddedTxt.text != "" {
            logoImg.hidden = true
            playbtn.hidden = true
            whatMultipleAddedTxt.hidden = false
            
            addBtn.hidden = false
            addDirectionLbl.hidden = false
            addLbl.hidden = false
            
            userNumber = Int(whatMultipleAddedTxt.text!)!
            currentNumber = 0
            updateAddLbl()
            
            
        }
        
        
        
    }
    
    
    func restartGame() {
        logoImg.hidden = false
        playbtn.hidden = false
        whatMultipleAddedTxt.hidden = true
        
        addBtn.hidden = true
        addDirectionLbl.hidden = true
        addLbl.hidden = true
        currentNumber = userNumber
        
    }
    
    func isGameOver() -> Bool {
        if currentNumber >= userNumber*12 {
            return true
        } else {
            return false
        }
    }

    
    func updateAddLbl() {
        addDirectionLbl.text = "\(currentNumber) + \(userNumber) = \(currentNumber+userNumber)"
    }


}

