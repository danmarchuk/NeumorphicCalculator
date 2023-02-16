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
        ["7", "8", "9", "x"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["0", ".", ".", "="],
    ]
    
    
    var body: some View {
        let mainColor = Color.Neumorphic.main
        ZStack (alignment: .bottom){
            

            mainColor.edgesIgnoringSafeArea(.all)
            VStack{
                ZStack {
                    RoundedRectangle(cornerRadius: 20).fill(Color.Neumorphic.main).softOuterShadow()
                    HStack {Spacer()
                        Text("42").foregroundColor(.black).font(.system(size: 64))}.padding()
                    
                }.padding()
                    ForEach(buttons, id: \.self) { row in
                        HStack {
                            ForEach(row, id: \.self) { button in
                                Button(action: {}) {
                                    Text(button).fontWeight(.bold).frame(width: 50, height: 50)
                                }.softButtonStyle(Capsule(), pressedEffect: .hard)
                            }
                        }
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
