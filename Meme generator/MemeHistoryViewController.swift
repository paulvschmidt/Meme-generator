//
//  MemeHistoryViewController.swift
//  Meme generator
//
//  Created by Kathy Gallo on 7/16/15.
//  Copyright © 2015 Paul Schmidt. All rights reserved.
//

import UIKit

class MemeHistoryViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var memeImageView: UIImageView!
    @IBOutlet weak var historyTextField: UITextView!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "\(name) history"
        memeImageView.image = UIImage(named: name)
        switch name {
        case "Pepe":
            historyTextField.text = "Pepe the Frog is an anthropomorphic frog character from the comic series Boy’s Club by Matt Furie. On 4chan, various illustrations of the frog creature have been used as reaction faces, including Feels Good Man, Sad Frog, Angry Pepe, Smug Frog and Well Meme’d. Information from knowyourmeme.com."
        case "Doge":
            historyTextField.text = "Doge is a slang term for “dog” that is primarily associated with pictures of Shiba Inus (nicknamed “Shibe”) and internal monologue captions on Tumblr. These photos may be photoshopped to change the dog’s face or captioned with interior monologues in Comic Sans font. On February 23rd, 2010, Japanese kindergarten teacher Atsuko Sato posted several photos of her rescue-adopted Shiba Inu dog Kabosu to her personal blog. Among the photos included a peculiar shot of Kabosu sitting on a couch while glaring sideways at the camera with raised eyebrows. Information from knowyourmeme.com."
        case "Not Bad":
            historyTextField.text = "Obama Rage Face (also known as “Not Bad” Face) is a rage comic reaction face based on a press photograph of Barack Obama wearing a sturgeon face during his official state visit to the United Kingdom in May 2011. The image is used as a positive response to a pleasant surprise or an outcome of an event that has surpassed one’s expectation, similar to the usage of “everything went better than expected” face. Information from knowyourmeme.com."
        case "Grumpy Cat":
            historyTextField.text = "Grumpy Cat is a nickname given to an angry-looking snowshoe cat that rose to fame online after its pictures were posted to Reddit in late September 2012. The cats real name is Tardar Sauce. Information from knowyourmeme.com."
        case "Troll Face":
            historyTextField.text = "Trollface is a rage comic character wearing a mischievous smile that is meant to represent the facial expression of an Internet troll. The image is most commonly used to portray a character as a troll in rage comics, or alternatively, to identify oneself or another participant as such in online discussions. The Trollface was originally drawn by Carlos Ramirez, an Oakland-based artist known by his deviantART[1] handle Whynne, as part of a MS Paint webcomic webcomic about the pointless nature of trolling on 4chan’s /v/ (video games) board. The comic was uploaded to deviantART on September 19th, 2008. Information from knowyourmeme.com."
        default:
            historyTextField.text = ""
        }
        historyTextField.editable = false
    }
}
