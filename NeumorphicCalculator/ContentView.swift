//
//  ContentView.swift
//  NeumorphicCalculator
//
//  Created by Данік on 15/02/2023.
//

import SwiftUI
import Neumorphic

struct ContentView: View {
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
        .padding()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
