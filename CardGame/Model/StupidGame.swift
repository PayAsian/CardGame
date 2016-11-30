//
//  StupidGame.swift
//  CardGame
//
//  Created by Trevino, Peyton on 11/11/16.
//  Copyright © 2016 Trevino, Peyton. All rights reserved.
//

import Foundation

class StupidGame
{
    
    //Delaration section
    //internal var nameOfVariable : Type
    internal var gameDeck : PlayingCardDeck
    internal var hand1 : [PlayingCard]
    internal var hand2 : [PlayingCard]
    internal var cardDeck : Deck
    internal var score : Int
    
    //inits
    init()
    {
        self.gameDeck = PlayingCardDeck()
        self.hand1 = [PlayingCard]()
        self.hand2 = [PlayingCard]()
        self.cardDeck = Deck()
        self.score = Int(0)
       
    }
    
    
    //Methods
    func startGame() -> Void
    {
        gameDeck.shuffleDeck()
        drawCards()
        
    }
    
    private func drawCards() -> Void
    {
        hand1.append((gameDeck.drawCard() as? PlayingCard)!)
        hand2.append((gameDeck.drawCard() as? PlayingCard)!)
    }
    
    func checkmatch() -> Bool
    {
        let hasMatch :Bool
        if(hand1[0].suit == hand2[1].suit)
        {
            hasMatch = false
        }
        else
        {
            hasMatch = false
        }
        return hasMatch
        
    }
    
    func playGame() -> Void
    {
        if hand1[0].suit == hand2[1].suit
        {
            score += 1
        }
        else
        {
            score += 0
        }
        hand1.removeAtIndex(0)
        hand2.removeAtIndex(0)
        drawCards()
    }
    

}