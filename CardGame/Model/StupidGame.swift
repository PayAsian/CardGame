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
    internal var CardDeck1 : Deck
    internal var CardDeck2 : Deck
    internal var Card1 : PlayingCard
    internal var Card2 : PlayingCard
    
    //inits
    init()
    {
        gameDeck = PlayingCardDeck()
        CardDeck1 = Deck()
        CardDeck2 = Deck()
        Card1 = PlayingCard()
        Card2 = PlayingCard()
    }
    
    
    //Methods
    func startGame() -> Void
    {
        if let Card1 = CardDeck1.drawRandomCard()as? PlayingCard
        {
            
        }
        
        
        
        
    }
    
    
    

}