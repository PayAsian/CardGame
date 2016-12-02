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
    internal var hand : [PlayingCard]
    internal var cardDeck : Deck
    internal var score : Int
    let Joker = PlayingCard()
    
    //inits
    init()
    {
        self.gameDeck = PlayingCardDeck()
        self.hand = [PlayingCard]()
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
        hand.append((gameDeck.drawCard() as? PlayingCard)!)
        hand.append((gameDeck.drawCard() as? PlayingCard)!)
        hand.append((gameDeck.drawCard() as? PlayingCard)!)
        hand.append((gameDeck.drawCard() as? PlayingCard)!)
        hand.append((gameDeck.drawCard() as? PlayingCard)!)
        
        
    }
    
    func checkmatch() -> Bool
    {
        let hasMatch :Bool
        if(hand[0].suit == hand[1].color)
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
        if hand[0].suit == hand[1].color
        {
            score += 1
        }
        else
        {
            score += 0
        }
        hand.removeAtIndex(0)
        drawCards()
    }
    

}