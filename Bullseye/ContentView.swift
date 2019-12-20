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
    //Remember to delete this later on
    //@State var whosThereIsVisible: Bool = false
    
    var body: some View {
        VStack {
            VStack {
                Text("Welcome to my first app!")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.green)
                Button(action: {
                    print("Button pressed!")
                    self.alertIsVisible = true
                }) {
                    Text(/*@START_MENU_TOKEN@*/"Hit Me!"/*@END_MENU_TOKEN@*/)
                }
                .alert(isPresented: $alertIsVisible){ () -> Alert in
                    return Alert(title: Text("Hello there!"), message: Text("This is my first pop-up"), dismissButton: .default(Text("Awesome!")))
                }
                /*Button(action: {
                    print("Who's there?")
                    self.whosThereIsVisible = true
                }) {
                    Text("Knock Knock!")
                }
                .alert(isPresented: $whosThereIsVisible){ () ->
                    Alert in
                    return Alert(title: Text("Who's there?"), message: Text("Sam, Sam Brick. Isn't that a funny name?"), dismissButton: .default(Text("hahaha")))
                }*/
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
