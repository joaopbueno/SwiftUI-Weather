//
//  WeatherViews.swift
//  SwiftUI-Weather
//
//  Created by João Bueno on 22/11/24.
//

import SwiftUI

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

struct backGroundView: View {
    
    var topColor : Color
    var bottomColor : Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]),
                       startPoint: .top,
                       endPoint: .bottom)
        .edgesIgnoringSafeArea(.all)
    }
}

struct cityTextView: View {
    var cityName : String
    
    var body: some View {
        Text(cityName)
            .font(.system(size:32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .bold()
            .padding()
    }
}

struct mainWetherView: View {
    
    var imageName : String
    var temperatura : Int
    
    var body: some View {
        VStack(spacing: 8){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperatura)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}


