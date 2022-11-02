//
//  ContentView.swift
//  BullsEye
//
//  Created by manukant tyagi on 26/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var sliderValue = 10.0
    @State private var game = Game()
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

            VStack {
                VStack {
                    InstructionsView(game: $game)
                    SliderView(sliderValue: $sliderValue)
                    HitMeButton(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
                }
            }
        }
    }
}





struct InstructionsView: View{
    @Binding var game: Game
    var body: some View{
        VStack{
            InstructionText(text: "🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN DO")
                .padding(.trailing, 30)
                .padding(.leading, 30)
            BigNumberText(text: String(game.target))
        }
    }
}

struct SliderView: View{
    @Binding var sliderValue: Double
    var body: some View{
        HStack {
            sliderLabeltext(text: "1")
            Slider(value: $sliderValue, in: 1.0...100)
            sliderLabeltext(text: "100")
        }.padding()
    }
}

struct HitMeButton: View{
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    var body: some View{
        Button("Hit Me".uppercased()) {
            
            print("Hello Swift UI")
            alertIsVisible = true
        }
        
        .bold()
        .font(.title3)
        .padding(20.0)
        .background(
            ZStack {
            Color("ButtonColor")
            LinearGradient(colors: [Color.white.opacity(0.3), Color.clear], startPoint: .top, endPoint: .bottom)
            
        })
        .foregroundColor(.white)
        .cornerRadius(21)
        
        
        .alert("Hello there", isPresented: $alertIsVisible) {
            Button("Awsome") {
                
            }
        } message: {
            let roundedValue = Int(sliderValue.rounded())
            Text("The slider's Value is \(roundedValue).\n" + "You Scored \(game.points(sliderValue: roundedValue)) points this round.")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
