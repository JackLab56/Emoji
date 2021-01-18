//
//  ViewController.swift
//  Emoji
//
//  Created by Jacques Labonte on 2021-01-17.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row].stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "moveSeque", sender: emojis[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiVC = segue.destination as! EmojiViewController
        emojiVC.emoji = sender as! Emoji
    }
    @IBOutlet weak var tblEmoji: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tblEmoji.dataSource = self
        tblEmoji.delegate = self
        emojis = fillEmojiArray()
    }

    func fillEmojiArray() -> [Emoji]{
        let emo1 = Emoji()
        emo1.stringEmoji = "😇"
        emo1.category = "Smiley"
        emo1.birthYear = 2007
        emo1.definition = "The saint has a smiley face"
        
        let emo2 = Emoji()
        emo2.stringEmoji = "🤩"
        emo2.category = "Smiley"
        emo2.birthYear = 2017
        emo2.definition = "This smiley face is a mega star"
        
        let emo3 = Emoji()
        emo3.stringEmoji = "😡"
        emo3.category = "Smiley"
        emo3.birthYear = 2010
        emo3.definition = "The Devil is among us"
        
        let emo4 = Emoji()
        emo4.stringEmoji = "👩‍🦳"
        emo4.category = "Person"
        emo4.birthYear = 2019
        emo4.definition = "This is Barby the doll"
        
        let emo5 = Emoji()
        emo5.stringEmoji = "🦈"
        emo5.category = "Animal"
        emo5.birthYear = 1999
        emo5.definition = "Shark in the water !"

        let emo6 = Emoji()
        emo6.stringEmoji = "⚓️"
        emo6.category = "Naval"
        emo6.birthYear = 2021
        emo6.definition = "Don't be afraid the navy is here !"

        return [emo1, emo2, emo3, emo4, emo5, emo6]
    }
}

