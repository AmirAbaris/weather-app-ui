//
//  MainTempView.swift
//  weather
//
//  Created by Amir Abaris on 5/30/25.
//

import SwiftUI

struct MainTempView: View {
    var body: some View {
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
    }
}
