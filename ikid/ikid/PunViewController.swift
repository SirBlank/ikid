//
//  PunViewController.swift
//  ikid
//
//  Created by Amber Wu on 4/28/25.
//

import UIKit

class PunViewController: UIViewController {
    
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var jokeLabel: UILabel!
    
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
            if self.jokeLabel.text == "Why was the Pharaoh's daughter like a successful Wall Street investor?" {
                self.jokeLabel.text = "She took a little prophet from the rushes on the banks."
            } else {
                self.jokeLabel.text = "Why was the Pharaoh's daughter like a successful Wall Street investor?"
            }
        })
    }
}
