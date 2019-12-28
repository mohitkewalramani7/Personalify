//
//  ResultsView.swift
//  Personalify
//
//  Created by Mohit Kewalramani on 2019-12-27.
//  Copyright © 2019 Mohit Kewalramani. All rights reserved.
//

import SwiftUI

struct ResultsView: View {
    
    var name: String
    var age: String
    var leader: Bool
    var selfLearner: Bool
    var emotionallyIntelligent: Bool
    var peoplePerson: Bool
    var fastPaced: Bool
    var focusedAmbitious: Bool
    var sliderVal: Double
    var careerOptions: Int
    
    var body: some View {
        VStack {
            Text("Hello \(name)")
                .font(.largeTitle)
            Text("Thanks for taking our test!")
                .font(.title)
            Text("Here are some career options:")
                .font(.headline)
                .padding(.vertical)
            Text(constructTextList())
            Spacer()
            Text("We hope you enjoyed this app!")
                .font(.body)
        }
    }
    
    func constructTextList() -> String
    {
        returnConstructedList(
            leader: leader,
            selfLearner: selfLearner,
            emotionallyIntelligent: emotionallyIntelligent,
            peoplePerson: peoplePerson,
            fastPaced: fastPaced,
            focusedAmbitious: focusedAmbitious,
            maxOptions: careerOptions
        ).joined(separator: "\n")
    }
    
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView(
            name: "",
            age: "",
            leader: false,
            selfLearner: false,
            emotionallyIntelligent: false,
            peoplePerson: false,
            fastPaced: false,
            focusedAmbitious: false,
            sliderVal: 0.0,
            careerOptions: 0
        )
    }
}
