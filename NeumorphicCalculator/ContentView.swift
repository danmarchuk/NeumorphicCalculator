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
        ZStack {
            mainColor.edgesIgnoringSafeArea(.all)
        HStack {
            Spacer()
            Button(action: {}) {
                Text(".none").fontWeight(.bold)
            }.softButtonStyle(Capsule(), pressedEffect: .hard)
            Spacer()
            Button(action: {}) {
                Text(".flat").fontWeight(.bold)
            }.softButtonStyle(Capsule(), pressedEffect: .hard)
            Spacer()
            Button(action: {}) {
                Text(".hard").fontWeight(.bold)
            }.softButtonStyle(Capsule(), pressedEffect: .hard)
            Spacer()
        }
    }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
