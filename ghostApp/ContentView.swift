//
//  ContentView.swift
//  ghostApp
//
//  Created by Isha Nadkarni on 6/18/20.
//  Copyright © 2020 Isha Nadkarni. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var ghostDoor = Int.random(in: 1...3)
    @State var textBoxText = "Three doors ahead \n Behind one of them is a ghost \n Which one do you choose? \n Enter at your own risk..."
    @State var score = 0
    
    var body: some View {
        VStack {
            Spacer()
            Text("Ghost Game")
            Spacer()
            Text("Score: \(score)")
            Spacer()
            Image("GhostPic").resizable().aspectRatio(contentMode: .fit).padding(.horizontal, 30.0)
            Text(textBoxText)
                .multilineTextAlignment(.center)
        HStack {
            Button(action: {
                self.checkForGhostDoor (doorNumber: 1)
            }) {
                Image("Door1").resizable().aspectRatio(contentMode: .fit)
            }
            Button(action: {self.checkForGhostDoor (doorNumber: 2
            )}) {
                Image("Door1").resizable().aspectRatio(contentMode: .fit)
            }
            Button(action: {self.checkForGhostDoor (doorNumber: 3)
            }) {
                Image("Door1").resizable().aspectRatio(contentMode: .fit)
                }
            
            } //hstack end
            Button(action: {
                self.startOver()
            }) {
                Text("Start Over")
            }
            Spacer()
            } //vstack end
        } //view end
    
    func checkForGhostDoor (doorNumber: Int) {
               if ghostDoor == doorNumber {
                   print("Oh no! There was a ghost.")
                textBoxText = "Oh no! \n There was a ghost. \n Game over. Your score was \(score)"
                
               }
               else {
                   print("There was no ghost! You're safe.")
                   print("You can pick a new door.")
                   ghostDoor = Int.random(in: 1...3)
                textBoxText = "There was no ghost! \n Now you are in a different room. \n There are three doors to choose from..."
                score = score + 1
               }
           }//function ends
    func startOver () {
        score = 0
        textBoxText = "Three doors ahead \n Behind one of them is a ghost \n Which one do you choose? \n Enter at your own risk..."
        ghostDoor = Int.random(in: 1...3)
    }
    
        } //content view end

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
