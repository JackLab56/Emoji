//
//  EmojiViewController.swift
//  Emoji
//
//  Created by Jacques Labonte on 2021-01-18.
//

import UIKit

class EmojiViewController: UIViewController {

    @IBOutlet weak var defLbl: UILabel!
    
    @IBOutlet weak var emojiLbl: UILabel!
    
    @IBOutlet weak var CategoryLbl: UILabel!
    @IBOutlet weak var birthYearLbl: UILabel!
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLbl.text = emoji.stringEmoji
        defLbl.text = emoji.definition
        CategoryLbl.text = "Category: \(emoji.category)"
        birthYearLbl.text = "BirthYear: \(emoji.birthYear)"
        

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
