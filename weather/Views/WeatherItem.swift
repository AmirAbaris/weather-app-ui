//
//  WeatherItem.swift
//  weather
//
//  Created by Amir Abaris on 5/30/25.
//

import SwiftUI

struct WeatherItem: View {
    @Binding var day : String
    @Binding var iconName: String
    @Binding var temp: Int
    
    var body: some View {
        VStack {
            Text(day)
                .foregroundStyle(Color.white)
            Image(systemName: iconName)
                .renderingMode(.original)
                .resizable()
                .frame(width: 40, height: 40)
            Text("\(temp)°")
                .foregroundStyle(Color.white)
                .fontWeight(.bold)
                .font(.title2)
        }
    }
}

#Preview {
    WeatherItem(
        day: .constant("MON"),
        iconName: .constant("cloud.sun.fill"),
        temp: .constant(65)
    )
}
