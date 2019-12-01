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
        VStack {
            Text("Hello, World! \(changeText)")
            Button(action: {
                self.change.toggle()
                print("Button was tapped \(self.changeText)")
            }) { Text("Tap Me!") }
        }
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [.pink, .purple]), startPoint: .leading, endPoint: .trailing))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
