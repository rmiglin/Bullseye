//
//  ContentView.swift
//  Bullseye
//
//  Created by Ross Miglin on 12/19/19.
//  Copyright © 2019 Ross Miglin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    @State var sliderValue: Double = 50.0
    @State var target: Int = Int.random(in: 1...100)
    
    var body: some View {
        VStack {
            VStack {
                Spacer()
                
                //Target row
                HStack {
                    Text("Put the bullseye as close as you can to:")
                    Text("\(self.target)")
                }
                Spacer()
                
                //Slider row
                HStack {
                    Text("1")
                    Slider(value: self.$sliderValue, in: 1...100)
                    Text("100")
                }
                Spacer()
                
                //Button row
                Button(action: {
                    print("Button pressed!")
                    self.alertIsVisible = true
                }) {
                    Text(/*@START_MENU_TOKEN@*/"Hit Me!"/*@END_MENU_TOKEN@*/)
                }
                .alert(isPresented: $alertIsVisible){ () -> Alert in
                    var roundedValue: Int = Int(self.sliderValue.rounded())
                    return Alert(title: Text("Hello there!"), message: Text("The slider's value is \(roundedValue).\n" + "You scored \(self.pointsForCurrentRound()) points this round."), dismissButton: .default(Text("Awesome!")))
                }
                Spacer()
                
                //Score row
                HStack{
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Start over")
                    }
                    Spacer()
                    Text("Score:")
                    Text("999999")
                    Spacer()
                    Text("Round:")
                    Text("999")
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("info")
                    }
                }
                .padding(.bottom, 20)
            }
        }
    }
    
    func pointsForCurrentRound() -> Int {
        var difference: Int
        var roundedValue: Int = Int(self.sliderValue.rounded())
        difference = abs(roundedValue - self.target)
        var awardedPoints: Int = 100 - difference
    return awardedPoints
}


}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
