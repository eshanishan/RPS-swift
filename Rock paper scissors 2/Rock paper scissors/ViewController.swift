//
//  ViewController.swift
//  Rock paper scissors
//
//  Created by Ishan Dhanani on 1/5/22.
//

import UIKit
import SafariServices
class ViewController: UIViewController
{
    let website = URL(string: "https://www.pgpedia.com/r/rock-paper-scissors")!
    let rock = UIImage(named: "rock")
    let paper = UIImage(named: "paper")
    let scissors = UIImage(named: "scissors")
    @IBOutlet weak var playerChoice: UIImageView!
    @IBOutlet weak var appChoice: UIImageView!
    @IBOutlet weak var winnerText: UILabel!
    @IBOutlet weak var win: UILabel!
    @IBOutlet weak var lossCounter: UILabel!
    @IBOutlet weak var tieCounter: UILabel!
    var loss = 0
    var counter = 0
    var tie = 0
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    @IBAction func Rock(_ sender: Any)
    {
        playerChoice.image = rock
        let allImages = [rock,paper,scissors]
        appChoice.image = allImages.randomElement() as! UIImage
        if playerChoice.image == appChoice.image
        {
            winnerText.text = "Its a tie"
            tie+=1
            tieCounter.text = String(tie)
        }
        if appChoice.image == paper
        {
            winnerText.text = "you lose"
            loss+=1
            lossCounter.text = String(loss)
        }
        if appChoice.image == scissors
        {
            winnerText.text = "you win"
            counter+=1
            win.text = String(counter)
        }
    }
    @IBAction func Paper(_ sender: UIButton)
    {
        playerChoice.image = paper
        let allImages = [rock,paper,scissors]
        appChoice.image = allImages.randomElement() as! UIImage
        if playerChoice.image == appChoice.image
        {
            winnerText.text = "Its a tie"
            tie+=1
            tieCounter.text = String(tie)
        }
        if appChoice.image == scissors
        {
            winnerText.text = "you lose"
            loss+=1
            lossCounter.text = String(loss)
        }
        if appChoice.image == rock
        {
            winnerText.text = "you win"
            counter+=1
            win.text = String(counter)
        }
    }
    @IBAction func Scissors(_ sender: Any)
    {
        playerChoice.image = scissors
        let allImages = [rock,paper,scissors]
        appChoice.image = allImages.randomElement() as! UIImage
        if playerChoice.image == appChoice.image
        {
            winnerText.text = "Its a tie"
            tie+=1
            tieCounter.text = String(tie)
        }
        if appChoice.image == rock
        {
            winnerText.text = "you lose"
            loss+=1
            lossCounter.text = String(loss)
        }
        if appChoice.image == paper
        {
            winnerText.text = "you win"
            counter+=1
            win.text = String(counter)
        }
    }
    @IBAction func openInSafari(_ sender: Any)
    {
        UIApplication.shared.open(website, options: [:], completionHandler: nil)
    }
}
