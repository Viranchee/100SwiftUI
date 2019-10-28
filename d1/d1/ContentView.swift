//
//  ContentView.swift
//  d1
//
//  Created by Viranchee L on 27/10/19.
//  Copyright © 2019 Viranchee L. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State private var tapCount: Int = 0
  @State private var name: String = ""
  
  var body: some View {
    
    NavigationView {
      Form {
        Section {
          Text("Hello 2")
          TextField("Enter name", text: $name)
          Text("Hello, your name is \(self.name)")
        }
        Section {
          Text("WTF \(tapCount)")
          Text("WTF World")
        }
      }.onTapGesture {
        self.tapCount += 1
      }
      .navigationBarTitle(Text("Viranchee"), displayMode: .large)
    }
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
