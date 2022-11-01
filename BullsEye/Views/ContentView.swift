//
//  ContentView.swift
//  BullsEye
//
//  Created by manukant tyagi on 26/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 10.0
    @State private var game = Game()
    
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN DO")
                        .bold()
                        .multilineTextAlignment(.center)
                        .lineSpacing(4)
                        .font(.footnote)
                        .kerning(2)
                    Text(String(game.target))
                        .fontWeight(.black)
                        .bold()
                        .font(.largeTitle)
                        .kerning(-1)
                }
                HStack {
                    Text("1")
                        .bold()
                    Slider(value: self.$sliderValue, in: 1.0...100)
                    Text("100")
                        .bold()
                }
                Button("Hit Me") {
                    
                    print("Hello Swift UI")
                    self.alertIsVisible = true
                }
                .alert("Hello there", isPresented: $alertIsVisible) {
                    Button("Awsome") {
                        
                    }
                } message: {
                    var roundedValue: Int = Int(self.sliderValue.rounded())
                    Text("The slider's Value is \(roundedValue).\n" + "You Scored \(self.game.points(sliderValue: roundedValue)) points this round.")
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
