//
//  Card.swift
//  CardGame
//
//  Created by Trevino, Peyton on 10/25/16.
//  Copyright © 2016 Trevino, Peyton. All rights reserved.
//



class Card
{
    
    internal var isFaceUp : Bool
    
    init()
    {
        
        isFaceUp = false
    }
    
    func setFacing(isFaceUp : Bool)
    {
        self.isFaceUp = isFaceUp
    }
    
    func isFacing() -> Bool
    {
        return isFaceUp
    }
    
    
    func toString () -> String
    {
        let description = "This card is \(isFaceUp)"
        
        return description
        
    }
    
}
