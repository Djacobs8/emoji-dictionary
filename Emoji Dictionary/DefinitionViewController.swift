//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Derek Jacobs on 2017-04-04.
//  Copyright © 2017 Derek Jacobs. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLabel.text = emoji
        
        if emoji == "😀" { definitionLabel.text = "This is a smiley face"}
        if emoji == "😞" { definitionLabel.text = "This is a sad face"}
        if emoji == "😍" { definitionLabel.text = "This is a smiley face with heart-eyes"}
        if emoji == "😸" { definitionLabel.text = "This is a super happy pussy"}
        if emoji == "💩" { definitionLabel.text = "This is a smiley shit"}
        if emoji == "🙈" { definitionLabel.text = "This is a guilty monkey"}
        if emoji == "🐙" { definitionLabel.text = "This is an octopus"}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
