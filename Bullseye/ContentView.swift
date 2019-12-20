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
    
    var body: some View {
        VStack {
            VStack {
                
                //Target row
                HStack {
                    Text("Put the bullseye as close as you can to:")
                    Text(/*@START_MENU_TOKEN@*/"100"/*@END_MENU_TOKEN@*/)
                }
                
                //Slider row
                HStack {
                    Text("1")
                    Slider(value: .constant(10))
                    Text("100")
                }
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
                
                //Score row
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414))
    }
}
