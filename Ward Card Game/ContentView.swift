//
//  ContentView.swift
//  Ward Card Game
//
//  Created by Nicolas Bugdaci on 02/05/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card3"
    @State var cpuCard = "card2"
    @State var playerScore  = 0
    @State var cpuScore = 0
    
    
    
    var body: some View {
        
        ZStack {
            Image ("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                
                Spacer()
                
                //
                Button(action: deal, label: {
                    Image("button")
                })
                //
                
                
                Spacer()
                
                
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                        
                    }
                    
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                        
                    }
                    Spacer()
                }.foregroundColor(.white)
                
                Spacer()
            }
            
            
            
        } .background()
        
        
        
        
        
        
        
        
        
        
    }
    
    func deal () {
        // Randomize the players cards
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // Randomize the cpus cards
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // Update the scores
        if playerCardValue > cpuCardValue {
            // add +1 to Player
            playerScore += 1
        } else if cpuCardValue > playerCardValue {
            // add +1 to CPU
            cpuScore += 1
        } else {
            // do nothing
        }
    }
    
    
    
}

#Preview {
    ContentView()
}
