//
//  DadViewController.swift
//  ikid
//
//  Created by Amber Wu on 4/28/25.
//

import UIKit

class DadViewController: UIViewController {
    
    
    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func flipJoke(_ sender: UIButton) {
        print(nextBtn.titleLabel?.text ?? "none")
        if nextBtn.titleLabel?.text == "Next" {
            nextBtn.setTitle("Previous", for: .normal)
        } else {
            nextBtn.setTitle("Next", for: .normal)
        }
        flip()
    }
    
    @objc func flip() {
        UIView.transition(with: jokeLabel, duration: 0.5, options: [.transitionFlipFromRight], animations: {
            if self.jokeLabel.text == "I just found out that Albert Einstein was a real person!" {
                self.jokeLabel.text = "All this time I thought he was a theoretical physicist."
            } else {
                self.jokeLabel.text = "I just found out that Albert Einstein was a real person!"
            }
        })
    }
}
