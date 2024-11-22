//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by João Bueno on 21/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .top,
                           endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Belo Horizonte, MG")
                    .font(.system(size:32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}

#Preview {
    ContentView()
}
