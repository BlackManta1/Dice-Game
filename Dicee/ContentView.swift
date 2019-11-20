//
//  ContentView.swift
//  Dicee
//
//  Created by Saliou DJALO on 20/11/2019.
//  Copyright © 2019 Saliou DJALO. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber = 1 // state nous permet de changer la valeur
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Color(red: 0, green: 153/255, blue: 0)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Dice Game")
                    .font(.system(size: 60))
                    .bold()
                    .fontWeight(.heavy)
                
                Spacer()
                
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                
                Spacer()
                
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                    
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .padding(.horizontal)
                    
                }
                .background(Color.red)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    
    let n: Int
    
    var body: some View {
        Image("dice-\(n)")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
            .frame(width: 175, height: 175)
    }
}
