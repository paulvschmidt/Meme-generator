//
//  MemeTestViewController.swift
//  Meme generator
//
//  Created by Kathy Gallo on 7/16/15.
//  Copyright © 2015 Paul Schmidt. All rights reserved.
//

import UIKit

class MemeTestViewController: UIViewController {
    @IBOutlet weak var questionTextView: UITextView!
    @IBOutlet weak var answerLabel1: UILabel!
    @IBOutlet weak var answerLabel2: UILabel!
    @IBOutlet weak var answerLabel3: UILabel!

    var correct1 = false
    var correct2 = false
    var correct3 = false
    var numberCorrect = 0
    var questions = []
    var label1Answers = []
    var label2Answers = []
    var label3Answers = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func onButton1Tapped(sender: UIButton) {
    }
    @IBAction func onButton2Tapped(sender: UIButton) {
    }
    @IBAction func onButton3Tapped(sender: UIButton) {
    }
}
