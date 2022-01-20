//
//  RoundViews.swift
//  Bullseye
//
//  Created by Alassane Sy on 1/16/22.
//

import SwiftUI

struct RoundImageViewStroked: View {
    var systemName: String
    
    var body: some View {
        Image (systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .overlay(
              Circle()
                .strokeBorder(Color("ButtonStrokeColor"), lineWidth:Constants.General.strokeWidth)
              
            
            )
    }
}

struct RoundImageViewFilled: View {
    var systemName: String
    
    var body: some View {
        Image (systemName: systemName)
            .font(.title)
            .foregroundColor(Color("ButtonFilledTextColor"))
            .frame(width: Constants.General.roundedViewLength, height:Constants.General.roundedViewLength)
            .background(
              Circle()
                .fill(Color("ButtonFilledBackgroundColor"))
              
            )
    }
}
struct RoundRectTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .kerning(-0.2)
            .bold()
            .font(.title3)
            .frame(width: Constants.General.roundedRectViewWidth, height: Constants.General.roundedRectViewHeight)
            .foregroundColor(Color("TextColor"))
            .overlay(
                RoundedRectangle(cornerRadius:Constants.General.roundedRectCornerRadius)
                    .stroke(lineWidth: Constants.General.strokeWidth)
                    .foregroundColor(Color("ButtonStrokeColor"))
        )
    }
}

struct RoundedTextView: View {
    let text: String
    
    var body: some View{
        Text(text)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: Constants.General.roundedViewLength, height: Constants.General.roundedViewLength)
            .overlay(
              Circle()
                .strokeBorder(Color("LeaderboardRowColor"), lineWidth:Constants.General.strokeWidth))
    }
}

struct PreviewView: View{
    var body: some View {
        
        VStack(spacing: 10){
            RoundImageViewStroked(systemName: "arrow.counterclockwise")
            RoundImageViewFilled(systemName: "list.dash")
            RoundRectTextView(text: "100")
            RoundedTextView(text: "1")
        }
    }
}

struct RoundViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
