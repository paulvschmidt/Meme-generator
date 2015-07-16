//
//  ViewController.swift
//  Meme generator
//
//  Created by Kathy Gallo on 7/16/15.
//  Copyright © 2015 Paul Schmidt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var memeDisplay: UIImageView!
    var memes = [String]()
    var memeNumber : UInt32 = 0
    var doubleCheck = "pepe"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        memes = ["Pepe", "Grumpy Cat", "Doge", "Not Bad", "Troll Face"]
        newMeme()
        doubleCheck = memes[Int(memeNumber)]
    }
    func newMeme(){
        memeNumber = arc4random_uniform(UInt32(5))
        memeDisplay.image = UIImage(named: memes[Int(memeNumber)])
    }
    @IBAction func onNewMemeTapped(sender: AnyObject) {
        while doubleCheck == memes[Int(memeNumber)]{
            newMeme()
        }
        doubleCheck = memes[Int(memeNumber)]
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "History"{
        let dvc = segue.destinationViewController as! MemeHistoryViewController
        dvc.name = memes[Int(memeNumber)]
        }
    }
}

