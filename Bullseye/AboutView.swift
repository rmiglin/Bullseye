//
//  AboutView.swift
//  Bullseye
//
//  Created by Ross Miglin on 12/28/19.
//  Copyright © 2019 Ross Miglin. All rights reserved.
//

import SwiftUI


struct AboutView: View {
    
    struct AboutHeadingStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
            .foregroundColor(Color.black)
            .font(Font.custom("Arial Rounded MT Bold", size: 30))
                .padding(.bottom, 20)
                .padding(.top, 20)
        }
    }
    
    struct AboutBodyStyle: ViewModifier {
        func body(content: Content) -> some View {
            return content
            .foregroundColor(Color.black)
            .font(Font.custom("Arial Rounded MT Bold", size: 16))
                .padding(.leading, 60)
                .padding(.trailing, 60)
                .padding(.bottom, 20)
        }
    }
    
    let orangeCream = Color(red: 255.0/255.0, green: 214.0/255.0, blue: 179.0/255.0)
    
    var body: some View {
        Group{
            VStack{
                Text("🎯 Bullseye 🎯").modifier(AboutHeadingStyle())
                Text("This is Bullseye, the game where you can win points and earn fame by dragging a slider.").modifier(AboutBodyStyle()).lineLimit(nil)
                Text("Your goal is to place the slider as close as possible to the target value. The closer you are, the more points you score.").modifier(AboutBodyStyle())
                Text("Enjoy!").modifier(AboutBodyStyle())
        }
        .navigationBarTitle("About Bullseye")
        .background(orangeCream)
        }
    .background(Image("Background"))
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView().previewLayout(.fixed(width: 896, height: 414))
    }
}