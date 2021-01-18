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
    
    var emoji = "No Emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        emojiLbl.text = emoji
        
         
        switch emoji {
        case "😇":
            defLbl.text = "The saint is among us"
        case "🤩":
            defLbl.text = "This is a mega star"
        case "😡":
            defLbl.text = "The devil made me do it"
        case "👩‍🦳":
            defLbl.text = "Barby"
        case "🦈":
            defLbl.text = "Shark in the water"
        case "⚓️":
            defLbl.text = "Anchor aweigh"
        default:
            defLbl.text = "No Emoj"
        }
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
