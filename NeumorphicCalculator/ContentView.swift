//
//  ContentView.swift
//  NeumorphicCalculator
//
//  Created by Данік on 15/02/2023.
//

import SwiftUI
import Neumorphic

enum CalculatorButton: String {
    case zero, one, two, three, four, five, six, seven, eight, nine
    case equals, plus, minus, multiply, divide
    case ac, plusMinus, percent
    
    var title: String {
        switch self {
        case .zero:
            return "0"
        case .one:
            return "1"
        case .two:
            return "2"
        case .three:
            return "3"
        case .four:
            return "4"
        case .five:
            return "5"
        case .six:
            return "6"
        case .seven:
            return "7"
        case .eight:
            return "8"
        case .nine:
            return "9"
        case .equals:
            return "10"
        case .plus:
            return "+"
        case .minus:
            return "-"
        case .multiply:
            return "x"
        case .divide:
            return "÷"
        case .ac:
            return "AC"
        case .plusMinus:
            return "+/-"
        case .percent:
            return "%"
        }
    }
    
    var textColor: Color {
        switch self {
        case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine:
            return Color.white
        case .ac, .plus, .minus,.plusMinus, .percent, .divide, .multiply:
            return Color(UIColor(named: "darkGreen")!)
        default:
            return Color.black
        }
    }
}

struct ContentView: View {
    
    
    let buttons: [[CalculatorButton]] = [
        [.ac, .plusMinus, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .minus],
        [.one, .two, .three, .plus],
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
                                Text(button.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(button.textColor)
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
