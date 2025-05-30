//
//  ContentView.swift
//  weather
//
//  Created by Amir Abaris on 5/30/25.
// This is a toturial follow up for SwiftUI fundamentals based on Sean Allen Video.

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 40) {
                Text("Tehran")
                    .font(.system(size: 32, weight: .medium))
                    .foregroundStyle(Color.white)
                
                VStack {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    Text("69°")
                        .font(.system(size: 70))
                        .foregroundStyle(Color.white)
                        .fontWeight(.semibold)
                }
                
                HStack(spacing: 44) {
                    WeatherItem(day: .constant("MON"), iconName: .constant("cloud.sun.fill"), temp: .constant(88))
                    WeatherItem(day: .constant("TUE"), iconName: .constant("cloud.sun.fill"), temp: .constant(75))
                    WeatherItem(day: .constant("WED"), iconName: .constant("cloud.sun.fill"), temp: .constant(82))
                    WeatherItem(day: .constant("THU"), iconName: .constant("cloud.sun.fill"), temp: .constant(80))
                }
                Spacer()
                
                Button(action: {}) {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background()
                        .font(.title3)
                        .clipShape(.buttonBorder)
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
