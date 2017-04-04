//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Derek Jacobs on 2017-04-04.
//  Copyright © 2017 Derek Jacobs. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

     var emoji = Emoji()
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var birthLabel: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.icon
        definitionLabel.text = emoji.definition
        birthLabel.text = "Origination: \(emoji.birth)"
        categoryLabel.text = "Category: \(emoji.category)"
        
  /*
        if emoji == "😀" {
            definitionLabel.text = "This is a smiley face"
            categoryLabel.text = "Category: Smiley"
            birthLabel.text = "Origination: 2010 "
        }
        if emoji == "😞" {
            definitionLabel.text = "This is a sad face"
            categoryLabel.text = "Category: Smiley"
            birthLabel.text = "Origination: 2010"}
        if emoji == "😍" {
            definitionLabel.text = "This is a smiley face with heart-eyes"
            categoryLabel.text = "Category: Smiley"
            birthLabel.text = "Origination: 2015"}
        if emoji == "😸" {
            definitionLabel.text = "This is a super happy pussy"
            categoryLabel.text = "Category: Animal Thing"
            birthLabel.text = "Origination: 2009"}
        if emoji == "💩" {
            definitionLabel.text = "This is a smiley shit"
            categoryLabel.text = "Category: Smiley Thing"
            birthLabel.text = "Origination: 2012"}
        if emoji == "🙈" {
            definitionLabel.text = "This is a guilty monkey"
            categoryLabel.text = "Category: Animal thing"
            birthLabel.text = "Origination: 2014"}
        if emoji == "🐙" {
            definitionLabel.text = "This is an octopus"
            categoryLabel.text = "Category: Animal Thing"
            birthLabel.text = "Origination: 2016"}
 */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
