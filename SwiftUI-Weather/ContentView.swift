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
                    .padding()
                VStack(spacing: 8){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("26°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                    
                        
                }
                .padding(.bottom, 40)
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

struct WeatherDayView: View {
    
    var diaDaSemana : String
    var imageName : String
    var temperatura : Int
    
    var body: some View {
        VStack(spacing: 10) {
            Text(diaDaSemana)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperatura)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
                .bold()
        }
    }
}
