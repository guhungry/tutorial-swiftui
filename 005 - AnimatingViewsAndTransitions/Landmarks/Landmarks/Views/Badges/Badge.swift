//
//  Badge.swift
//  Landmarks
//
//  Created by Woraphot Chokratansombat on 1/6/2564 BE.
//

import SwiftUI

struct Badge: View {
    static let rotationCount = 8

    var badgeSymbols: some View {
        ForEach(0..<Badge.rotationCount) { it in
            RotatedBadgeSymbol(angle: Angle(degrees: Double(it) * 360.0 / Double(Badge.rotationCount)))
                .opacity(0.5)
        }
    }

    var body: some View {
        ZStack() {
            BadgeBackground()
            
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}