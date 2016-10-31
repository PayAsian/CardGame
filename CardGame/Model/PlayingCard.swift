//
//  PlayingCard.swift
//  CardGame
//
//  Created by Trevino, Peyton on 10/25/16.
//  Copyright © 2016 Trevino, Peyton. All rights reserved.
//

import UIKit

class PlayingCard : Card
{
    internal var rank : Int
        {
        get
        {
            return self.rank
        }
        set(rank)
        {
            self.rank = rank
        }
    }
    

    internal var suit : String
    {
        get
        {
        return self.suit
        }
        
        set(suit)
        {
            self.suit = suit
        }
    }
    
    private var color : UIColor
    {
        get
        {
        return self.color
        }
        
        set(color)
        {
            self.color = color
        }
    }
    
    override init()
    {
        
        super.init()
        rank = 0
        suit = ""
        color = UIColor()

    }
    
    func getrank() -> Int
    {
        return rank
    }
    
    func getsuit() -> String
    {
        return suit
    }
    
    func getcolor() -> UIColor
    {
        return color
    }
    
    override func toString() -> String
    {
        
        
        let backStatus : String
        if super.isFacing()
        {
            backStatus = " is face up"
        }
        else
        {
            backStatus = " is face down"
        }
        
        
        
        
        let description = "This playing card ranks is: \(rank) and its suit is: \(suit). And it has a  color of: \(color) And it backStatus is: \(backStatus) "
        
        return description
        
    }
    
    
    
}
