//
//  FinishedViewController.swift
//  iQuiz
//
//  Created by Student User on 2/14/18.
//  Copyright © 2018 informatics. All rights reserved.
//

import UIKit

class FinishedViewController: UIViewController {
    
    @IBOutlet weak var scoreDisplay: UILabel!
    @IBOutlet weak var messageDisplay: UILabel!
    
    var score : Int = 0
    var possible : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scoreDisplay.text = "Score: \(score) / \(possible)"
        let ratio = Double(score) / Double(possible)
        if (ratio == 1) {
            messageDisplay.text = "Perfect!"
        } else if (ratio > 0.5) {
            messageDisplay.text = "Almost!"
        } else {
            messageDisplay.text = "Study Up!"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
