//
//  CityName.swift
//  weather
//
//  Created by Amir Abaris on 5/30/25.
//

import SwiftUI

struct CityName: View {
    @Binding var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium))
            .foregroundStyle(Color.white)
    }
}
