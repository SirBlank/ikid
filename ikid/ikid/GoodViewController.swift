//
//  GoodViewController.swift
//  ikid
//
//  Created by Amber Wu on 4/28/25.
//

import UIKit

class GoodViewController: UIViewController {

    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var punchView: UIView!
    @IBOutlet weak var questionView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        punchView.isHidden = true
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
        UIView.transition(with: questionView, duration: 0.5, options: [.transitionFlipFromRight], animations: {
            if self.questionView.isHidden == false {
                self.questionView.isHidden = true
            } else {
                self.questionView.isHidden = false
            }
        })

        UIView.transition(with: punchView, duration: 0.5, options: [.transitionFlipFromLeft], animations: {
            if self.punchView.isHidden == true {
                self.punchView.isHidden = false
            } else {
                self.punchView.isHidden = true
            }
        })
    }
    
}
