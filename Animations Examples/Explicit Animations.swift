//
//  Explicit Animations.swift
//  Animations Examples
//
//  Created by Jason on 3/30/23.
//

import SwiftUI

struct Explicit_Animations: View {
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap Me") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                animationAmount += 360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 1, y: 3, z: 2))
    }
}

struct Explicit_Animations_Previews: PreviewProvider {
    static var previews: some View {
        Explicit_Animations()
    }
}
