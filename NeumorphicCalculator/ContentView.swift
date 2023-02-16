//
//  ContentView.swift
//  NeumorphicCalculator
//
//  Created by Данік on 15/02/2023.
//

import SwiftUI
import Neumorphic

struct ContentView: View {
    
    
    let buttons = [
        ["AC", "+/-", "%", "÷"],
        ["7", "8", "9", "x"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["0", ".", ".", "="],
    ]
    
    
    var body: some View {
        let mainColor = Color.Neumorphic.main
        ZStack (alignment: .bottom){
            mainColor.edgesIgnoringSafeArea(.all)
            VStack(spacing: 20){
                ZStack {
                    RoundedRectangle(cornerRadius: 20).fill(mainColor).softOuterShadow()
                    VStack {
                        Spacer()
                        HStack{
                            Spacer()
                            Text("42")
                            .foregroundColor(.black)
                            .font(.system(size: 64))}.padding()}
                }.padding()
                
                ForEach(buttons, id: \.self) { row in
                    HStack(spacing: 15) {
                        ForEach(row, id: \.self) { button in
                            Button(action: {}) {
                                Text(button)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                    .frame(width: self.buttonWidth(), height: self.buttonWidth()).font(.system(size: 30))
                            }.softButtonStyle(RoundedRectangle(cornerRadius: 20), pressedEffect: .hard)
                        }
                    }
                }
                
            }.padding(.bottom)
        }
    }
    
    
    func buttonWidth() -> CGFloat {
        return (UIScreen.main.bounds.width - 5 * 12) / 7
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
