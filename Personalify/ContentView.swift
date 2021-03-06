//
//  ContentView.swift
//  Personalify
//
//  Created by Mohit Kewalramani on 2019-12-25.
//  Copyright © 2019 Mohit Kewalramani. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = ""
    @State private var age: String = ""
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Let's Get Started!")
                    .font(.largeTitle)
                    .padding(.bottom)
                    .frame(height: 100.0)
                Text("Tell us a bit about yourself")
                    .lineLimit(nil)
                    .padding(.top)
                    .frame(height: 50.0)
                TextField("Name", text: $name)
                    .padding(.all)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.words/*@END_MENU_TOKEN@*/)
                TextField("Age", text: $age)
                    .padding(.all)
                    .keyboardType(/*@START_MENU_TOKEN@*/.numberPad/*@END_MENU_TOKEN@*/)
                Spacer()
                NavigationLink(destination: PageOne(
                    name: name, age: age)
                ){
                    Text("Next")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
