//
//  ContentView.swift
//  BullsEye
//
//  Created by manukant tyagi on 26/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Text("🎯🎯🎯PUT THE BULLSEYE AS CLOSE AS YOU CAN DO")
                    Text("89")
                }
                HStack {
                    Text("1")
                    Slider(value: .constant(50), in: 1.0...100)
                    Text("100")
                }
                Button("Hit Me") {
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
