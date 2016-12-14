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
    internal var tempDeck1:
    internal var hand : [PlayingCard]
    internal var cardDeck : Deck
    let OldMaid = PlayingCard()
    
    //inits
    init()
    {
        self.gameDeck = PlayingCardDeck()
        self.hand = [PlayingCard]()
        self.cardDeck = Deck()
        
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
        if(hand[0].rank == hand[1].color)
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
               hand.remove(at: 0)
        drawCards()
    }
    

}
