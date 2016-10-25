//
//  PlayingCard.swift
//  CardGame
//
//  Created by Trevino, Peyton on 10/25/16.
//  Copyright © 2016 Trevino, Peyton. All rights reserved.
//

import UIKit

class PlaingCard : Card
{
    private var rank : Int
    private var suit : String
    private var color : UIColor
    
    override init()
    {
        rank = 0
        suit = ""
        color = UIColor()
        super.init()
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
        let description = "This playing card ranks is: \(rank) and its suit is: \(suit). And it has a  color of: \(color) "
        
        return description
        
    }
    
    
    
}
