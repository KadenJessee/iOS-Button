//
//  ContentView.swift
//  ButtonTest
//
//  Created by Kaden Jessee on 5/12/23.
//

import SwiftUI

struct ContentView: View{
    @State private var season = "Initial"
    @State private var index = 0
    private let seasons = ["Winter", "Spring", "Summer", "Fall"]

    
    var body: some View{
        VStack{
            Button(action: {
                if self.index == self.seasons.count{
                    self.index = 0
                }
                self.season = self.seasons[self.index]
                self.index += 1
            }){
                Text("Change")
            }
            
            Text(season)
                .accessibilityLabel("season")
                .accessibilityValue(season)
        }
        .onAppear{
            self.season = "Initial"
        }
    }
    
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
