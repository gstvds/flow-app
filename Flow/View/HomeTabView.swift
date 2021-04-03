//
//  HomeTabView.swift
//  Flow
//
//  Created by Gustavo Silva on 02/04/21.
//

import SwiftUI

struct HomeTabView: View {
    @Environment(\.colorScheme) var colorScheme
    
    @State private var timeRemaining = 60 * 45
    @State private var start = false
    @State private var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    

    var body: some View {
        VStack {
            Text("Flow")
                .font(.title)
            Text(mapSecondsToMinutesAndSeconds(seconds: timeRemaining))
                .font(.custom("timer", size: 60))
                .padding(.vertical, 20)
                .foregroundColor(colorScheme == .dark ? .white : .black)
            Button(action: {
                self.start.toggle()
            }) {
                Image(systemName: self.start ? "pause" : "play")
                    .padding(.vertical, 20)
                    .foregroundColor(Color(UIColor(named: "AccentColor")!))
                    .font(.title)
            }
        }
        .onReceive(self.timer) { _ in
            if self.start {
                if self.timeRemaining <= 0 {
                    self.timeRemaining = 60 * 45
                    self.start.toggle()
                } else {
                    self.timeRemaining -= 1
                }
            }
        }
    }
    
    func mapSecondsToMinutesAndSeconds(seconds: Int) -> String {
        let minutes = "\((seconds % 3600) / 60)"
        let seconds = "\((seconds % 3600) % 60)"
        let minutesStamp = minutes.count > 1 ? minutes : "0" + minutes
        let secondsStamp = seconds.count > 1 ? seconds : "0" + seconds
        
        return "\(minutesStamp):\(secondsStamp)"
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
            .preferredColorScheme(.dark)
    }
}
