//
//  BackGroundView.swift
//  weather
//
//  Created by Amir Abaris on 5/30/25.
//

import SwiftUI

struct BackGroundView: View {
    @Binding var bgColor: Color

    var body: some View {
        ZStack {
            ContainerRelativeShape()
                .fill(bgColor.gradient)
                .ignoresSafeArea()
        }
    }
}
