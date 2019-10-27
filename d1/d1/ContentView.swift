//
//  ContentView.swift
//  d1
//
//  Created by Viranchee L on 27/10/19.
//  Copyright © 2019 Viranchee L. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    Form {
      // Group limitation
      Group {
        Text("Hello 2")
        Text("Hello")
      }
      Group {
        Text("WTF 1")
        Text("WTF World")
      }
    }
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
