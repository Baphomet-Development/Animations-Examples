//
//  Animation Stack.swift
//  Animations Examples
//
//  Created by Jason on 3/30/23.
//

import SwiftUI

struct Animation_Stack: View {
    @State private var enabled = false
    
    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .animation(nil, value: enabled)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
    }
}

struct Animation_Stack_Previews: PreviewProvider {
    static var previews: some View {
        Animation_Stack()
    }
}
