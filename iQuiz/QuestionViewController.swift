//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Student User on 2/14/18.
//  Copyright © 2018 informatics. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    @IBOutlet weak var question: UILabel!
    
    var questions : [String] = []
    var answers : [[String]] = []
    var currentQuestion = 0
    
    @IBAction func action(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        question.text = questions[0]
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        rightSwipe.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(rightSwipe)
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
extension UIViewController {
    @objc func swipeAction(swipe: UISwipeGestureRecognizer) {
        performSegue(withIdentifier: "goLeft", sender: self)
    }
}
