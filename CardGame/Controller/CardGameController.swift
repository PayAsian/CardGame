//
//  CardGameController.swift
//  CardGame
//
//  Created by Trevino, Peyton on 10/27/16.
//  Copyright © 2016 Trevino, Peyton. All rights reserved.
//

import UIKit

class CardGameController : UIViewController
{
    private lazy var clickCount = Int()
    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var cardButton: UIButton!
    
    override func viewDidLoad() -> Void
    {
        let tempCard = Card()
        print(tempCard.toString())
    }
    
    @IBAction func cardClick(sender: UIButton)
    {
        clickCount += 1
        let content = "you clicked \(clickCount) times"
        if let currentCard = cardDeck.drawCard() as? PlayingCard
        {
            cardButton.setTitle("\(currentCard.rank) \(currentCard.suit) ", forState: UIControlState.Normal)
        }
        else
        {
            cardButton.setTitle("deck over", forState: UIControlState.Normal)
        }
        cardLabel.text = content
    }
}
