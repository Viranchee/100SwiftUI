//
//  ContentView.swift
//  d1
//
//  Created by Viranchee L on 27/10/19.
//  Copyright © 2019 Viranchee L. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State private var name: String = ""
  
  var body: some View {
    Form {
      ForEach(0..<10) {
        ShowTaps($0)
      }
      
    }
  }
}

struct ShowTaps: View {
  @State private var tapCount = 0
  let id: Int
  init(_ id: Int) {
    self.id = id
  }
  var body: some View {
    Text("\(id) was tapped \(tapCount) times").onTapGesture {
      self.tapCount += 1
    }
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
