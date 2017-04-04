//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Derek Jacobs on 2017-04-03.
//  Copyright © 2017 Derek Jacobs. All rights reserved.
//

import UIKit
// added table view datasource and delegate 
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    
    var emojis : [Emoji] = [] //array of emoji type now
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableview.dataSource = self
        tableview.delegate = self // looks to self for answers
        emojis = makeEmojiArray() //fill this array
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count // automatically makes table the size of array to save time as it is looking for Int number of rows
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //returning a table view cell, taking in parameters
        let cell = UITableViewCell() //constant for a valid return value
        let emoji = emojis[indexPath.row]
        //row label is that of corresponding array
        cell.textLabel?.text = emoji.icon //can change this
        return cell //function must have a return
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableview.deselectRow(at: indexPath, animated: true) //row isn't selected after going back

        let emoji = emojis[indexPath.row] //matching pic on second screen with emoji array so it is displayed after selection
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defvc = segue.destination as! DefinitionViewController
        defvc.emoji = sender as! Emoji //changed w class
        //defining type it is passed as
        //no return for this function
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.icon = "😀"
        emoji1.definition = "This mah-fucka happy"
        emoji1.category = "Smiley"
        emoji1.birth = 2010
        
        let emoji2 = Emoji()
        emoji2.icon = "😞"
        emoji2.definition = "This mah-fucka sad"
        emoji2.category = "Smiley"
        emoji2.birth = 2010
        
        let emoji3 = Emoji()
        emoji3.icon = "😍"
        emoji3.definition = "This mah-fucka in luvv"
        emoji3.category = "Smiley"
        emoji3.birth = 2012
        
        let emoji4 = Emoji()
        emoji4.icon = "😸"
        emoji4.definition = "One happy pussy"
        emoji4.category = "Smiley Animal"
        emoji4.birth = 2014
        
        let emoji5 = Emoji()
        emoji5.icon = "💩"
        emoji5.definition = "This some shit"
        emoji5.category = "Smiley Thing"
        emoji5.birth = 2013
        
        let emoji6 = Emoji()
        emoji6.icon = "🙈"
        emoji6.definition = "Hella-guilty monkey foo"
        emoji6.category = "Smiley Animal"
        emoji6.birth = 2015
        
        let emoji7 = Emoji()
        emoji7.icon = "🐙"
        emoji7.definition = "A freaking Oct-O-PUSS"
        emoji7.category = "Smiley Animal"
        emoji7.birth = 2016
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
    }
    
}

