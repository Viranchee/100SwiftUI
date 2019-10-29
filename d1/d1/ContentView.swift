//
//  ContentView.swift
//  d1
//
//  Created by Viranchee L on 27/10/19.
//  Copyright © 2019 Viranchee L. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  @State private var checkAmount = ""
  @State private var numberOfPeople = 2
  @State private var tipPercentageIndex = 2
  
  private let tipPercentages = [10, 15, 20, 25, 0]
  
  var body: some View {
    NavigationView {
      Form {
        Section {
          TextField("Amount", text: $checkAmount)
            .keyboardType(.decimalPad)
          Picker("Number of people", selection: $numberOfPeople) {
            ForEach(2..<20) {
              Text("\($0) people")
            }
          }
        }
        Section {
          Text("\(checkAmount) $$$")
        }
      }
    .navigationBarTitle("Hello")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
