//
//  ViewController.swift
//  iQuiz
//
//  Created by Maxwell Zhou on 2/12/18.
//  Copyright © 2018 informatics. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let subjects = ["Mathematics", "Marvel Superheroes", "Science"]
    let descriptions = ["the study of such topics as quantity, structure, space, and change",
                        "comic book superheroes from Marvel comics",
                        "a systematic enterprise that builds and organizes knowledge in the form of testable explanations and predictions about the universe"]
    let fileNames = ["math.jpg", "superhero.jpg", "science.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SettingsButton(_ sender: Any) {
        createAlert(ptitle: "Settings", pmessage: "settings go here")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    // num rows in section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subjects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "subjectCell", for: indexPath) as! SubjectTableViewCell
        cell.subjectTitle.text = subjects[indexPath.row]
        cell.subjectDescription.text = descriptions[indexPath.row]
        cell.subjectImage.image = UIImage(named: fileNames[indexPath.row])
        return cell
    }
    
    func createAlert(ptitle: String, pmessage: String) {
        let alert = UIAlertController(title: ptitle, message: pmessage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .`default`, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
}

