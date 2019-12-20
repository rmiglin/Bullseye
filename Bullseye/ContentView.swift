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
    
    var body: some View {
        VStack {
            VStack {
                Spacer()
                
                //Target row
                HStack {
                    Text("Put the bullseye as close as you can to:")
                    Text(/*@START_MENU_TOKEN@*/"100"/*@END_MENU_TOKEN@*/)
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
                    return Alert(title: Text("Hello there!"), message: Text("This is my first pop-up"), dismissButton: .default(Text("Awesome!")))
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
