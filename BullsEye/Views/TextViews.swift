//
//  TextViews.swift
//  BullsEye
//
//  Created by manukant tyagi on 02/11/22.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    var body: some View {
        Text(text.uppercased())
            .bold()
            .foregroundColor(Color("TextColor"))
            .multilineTextAlignment(.center)
            .lineSpacing(4)
            .font(.footnote)
            .kerning(2)
    }
}

struct BigNumberText: View{
    
    var text: String
    var body: some View{
        Text(text)
            .fontWeight(.black)
            .bold()
            .foregroundColor(Color("TextColor"))
            .font(.largeTitle)
            .kerning(-1)
    }
}

struct sliderLabeltext: View{
    var text: String
    var body: some View{
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            InstructionText(text: "Instructions")
            BigNumberText(text: "999")
            sliderLabeltext(text: "1")
        }
        
    }
}
