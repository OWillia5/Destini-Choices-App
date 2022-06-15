//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//  Edited by Opeoluwa Williams

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    //moved stories array and story number to storybrain

    override func viewDidLoad() {
        super.viewDidLoad()
        
       updateUI()
        
    }
    
    //update the story and choices based on what choice user selects
    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
        
        storyBrain.nextStory(userChoice)
        
        updateUI()
        
        
    }
    
    func updateUI(){
        //update the UI (display story and choice labels)
        storyLabel.text = storyBrain.getStoryText()
        
        choice1Button.setTitle(storyBrain.getChoiceOne(), for: .normal)
        
        choice2Button.setTitle(storyBrain.getChoiceTwo(), for: .normal)
    }
        
}



