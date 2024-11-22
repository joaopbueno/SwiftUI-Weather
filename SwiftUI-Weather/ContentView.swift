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
            backGroundView(topColor: .blue, bottomColor: Color("secondColor"))
            
            VStack {
                
                cityTextView(cityName: "Belo Horizonte - MG")
                mainWetherView(imageName: "cloud.sun.fill", temperatura: 26)
                
                HStack(spacing: 30) {
                    WeatherDayView(diaDaSemana: "TUE", imageName: "sun.max.fill", temperatura: 26)
                    WeatherDayView(diaDaSemana: "WED", imageName: "cloud.sun.fill", temperatura: 20)
                    WeatherDayView(diaDaSemana: "THU", imageName: "wind.snow", temperatura: 21)
                    WeatherDayView(diaDaSemana: "FRI", imageName: "cloud.snow.fill", temperatura: -5)
                    WeatherDayView(diaDaSemana: "SAT", imageName: "cloud.rain.fill", temperatura: 16)
            }
            Spacer()
                Button {
                    print("tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(15)
                }
            Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

