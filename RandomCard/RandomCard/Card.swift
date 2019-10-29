//
//  Card.swift
//  RandomCard
//
//  Created by Viranchee L on 29/10/19.
//  Copyright © 2019 Viranchee L. All rights reserved.
//

import Foundation

struct Card {
  
  enum Suite: String, CaseIterable {
    case Spades
    case Heards
    case Clubs
    case Diamonds
  }
  var suite: Suite
  var number: Int
  
  init(suite: Suite, number: Int) {
    self.suite = suite
    let positiveNumber = number > 0 ? number : -number
    let numberInBounds = positiveNumber % 14
    let finalNumber = numberInBounds == 0 ? 1 : numberInBounds
    self.number = finalNumber
  }
  
  static var random: Card {
    let randomSuite = Suite.allCases.randomElement()!
    let randomNumber = [1,2,3,4,5,6,7,8,9,10,11,12,13].randomElement()!
    return Card(suite: randomSuite, number: randomNumber)
  }

  var description: String {
    let value: String = {
      switch number {
      case 1: return "Ace"
      case 11: return "Jack"
      case 12: return "Queen"
      case 13: return "King"
      default: return "\(number)"
      }
    }()
    return "\(value) of \(suite.rawValue)"
    
  }
}
