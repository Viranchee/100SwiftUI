//
//  ContentView.swift
//  RandomCard
//
//  Created by Viranchee L on 29/10/19.
//  Copyright © 2019 Viranchee L. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State private var currentCard: Card = Card.random
  
  var body: some View {
    NavigationView {
      Text(currentCard.description)
        .font(.system(size: 44, weight: .light, design: .rounded))
      }.navigationBarHidden(true)
    .onTapGesture {
        self.currentCard = Card.random
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
