//
//  View Transitions.swift
//  Animations Examples
//
//  Created by Jason on 3/30/23.
//

import SwiftUI

struct View_Transitions: View {
    @State private var isShowingRed = false
    
    var body: some View {
        VStack {
            Button("Tap me") {
                withAnimation {
                    isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .transition(.asymmetric(insertion: .scale, removal: .opacity))
            }
        }
    }
}

struct View_Transitions_Previews: PreviewProvider {
    static var previews: some View {
        View_Transitions()
    }
}
