//
//  ContentView.swift
//  weather
//
//  Created by Amir Abaris on 5/30/25.
// This is a toturial follow up for SwiftUI fundamentals based on Sean Allen Video.

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) private var colorScheme
    
    var body: some View {
        ZStack {
            BackGroundView(
                bgColor: .constant(colorScheme == .dark ? Color.black : Color.blue)
            )
            
            VStack(spacing: 40) {
                CityName(cityName: .constant("Tehran"))
                MainTempView()
                
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
                        .background(Color.white)
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
