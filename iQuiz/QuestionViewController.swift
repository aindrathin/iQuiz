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
    var answerIndex : [Int] = []
    var currentQuestion = 0
    var points = 0;
    
    @IBAction func action(_ sender: AnyObject) {
        print ("sender tag: " + String(sender.tag))
        print("answer index: " + String(answerIndex[currentQuestion]))
        print("current Question: \(currentQuestion)")
        print("QUestions count: \(questions.count)")
        if (sender.tag - 1 == answerIndex[currentQuestion]) {
            print("CORRECT!")
            points += 1
        } else {
            print("try again")
        }
        currentQuestion += 1
        if(currentQuestion != questions.count) {
            newQuestion()
        } else {
            performSegue(withIdentifier: "showScore", sender: self)
        }
    }
    
    func newQuestion() {
        question.text = questions[currentQuestion]
        var button: UIButton = UIButton()
        
        for i in 1...4 {
            button = view.viewWithTag(i) as! UIButton
            button.setTitle(answers[currentQuestion][i - 1], for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        rightSwipe.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(rightSwipe)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        newQuestion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showScore") {
            let nextController = segue.destination as! FinishedViewController
            nextController.score = points
            nextController.possible = questions.count
        }
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
