//
//  ContentView.swift
//  P2
//
//  Created by Viranchee L on 02/12/19.
//  Copyright © 2019 Viranchee L. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var change: Bool = true
    var changeText: String {
          return change ? "true" : "false"
      }
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            Text("Hello, World! \(changeText)")
            Text("Hello, Line 2π!")
            Button("Change") { self.change.toggle() }
                .foregroundColor(.green)
                .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
