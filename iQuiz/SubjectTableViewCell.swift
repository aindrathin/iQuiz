//
//  SubjectTableViewCell.swift
//  iQuiz
//
//  Created by Maxwell Zhou on 2/12/18.
//  Copyright © 2018 informatics. All rights reserved.
//

import UIKit

class SubjectTableViewCell: UITableViewCell {

    @IBOutlet var subjectImage: UIImageView!
    @IBOutlet var subjectTitle: UILabel!
    @IBOutlet var subjectDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
