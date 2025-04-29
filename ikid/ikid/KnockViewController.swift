//
//  KnockViewController.swift
//  ikid
//
//  Created by Amber Wu on 4/28/25.
//

import UIKit

class KnockViewController: UIViewController {

    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func flipJoke(_ sender: UIButton) {
        flip()
    }
    
    @objc func flip() {
        UIView.transition(with: jokeLabel, duration: 0.5, options: [.transitionFlipFromRight], animations: {
            if self.jokeLabel.text == "Knock Knock" {
                self.jokeLabel.text = "Who's there?"
            } else if self.jokeLabel.text == "Who's there?" {
                self.jokeLabel.text = "Europe"
            } else if self.jokeLabel.text == "Europe" {
                self.jokeLabel.text = "Europe who?"
            } else if self.jokeLabel.text == "Europe who?" {
                self.jokeLabel.text = "No you're a poo!"
            } else {
                self.jokeLabel.text = "Knock Knock"
            }
        })
    }
    
}

