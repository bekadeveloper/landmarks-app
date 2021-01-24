//
//  Badge.swift
//  Landmarks
//
//  Created by Begzod Bakhriddinov on 21/01/21.
//

import SwiftUI

struct Badge: View {
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader { geometry in
                ForEach(0..<8) { i in
                    RotatedBadgeSymbol(
                        angle: .degrees(Double(i) / Double(8)) * 360.0
                    )
                }
                .opacity(0.5)
                .scaleEffect(1.0 / 4.0, anchor: .top)
                .position(x: geometry.size.width / 2.0, y: geometry.size.height * (3.0 / 4.0))
            }
        }
        .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
