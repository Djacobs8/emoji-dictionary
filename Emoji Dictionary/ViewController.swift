//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Derek Jacobs on 2017-04-03.
//  Copyright © 2017 Derek Jacobs. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    
    var emojis = ["😀","😞","😍","😸","💩","🙈","🐙"] //array this will be based off of
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableview.dataSource = self
        tableview.delegate = self // looks to self for answers
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count // automatically makes table the size of array to save time
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row] //row label is that of corresponding array
        return cell //function must have a return
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableview.deselectRow(at: indexPath, animated: true) //row isn't selected after going back
        let emoji = emojis[indexPath.row] //matching pic on second screen with emoji array so it is displayed after selection
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defvc = segue.destination as! DefinitionViewController
        defvc.emoji = sender as! String
        //defining type it is passed as
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

