//
//  PageOne.swift
//  Personalify
//
//  Created by Mohit Kewalramani on 2019-12-26.
//  Copyright © 2019 Mohit Kewalramani. All rights reserved.
//

import SwiftUI

struct PageOne: View {
    
    var name: String
    var age: String
    
    @State private var introvertedTag = 1
    @State private var extrovertedTag = 2
    
    @State private var leaderToggledOn = false
    @State private var selfLearnerToggledOn = false
    @State private var emotionallyIntelligentToggledOn = false
    @State private var peoplePersonToggledOn = false
    @State private var fastPacedToggledOn = false
    @State private var focusedAmbitiousToggledOn = false
    
    @State private var sliderInitial = 0.5
    @State private var careerOptionsInitial = possibleCareers.count
    
    var body: some View {
        ScrollView {
            VStack() {
                Text("1) Which of the following do you identify the most with?")
                    .font(.headline)
                Picker(selection: $introvertedTag, label: Text("Pick:")) {
                        Text("Introverted").tag(introvertedTag)
                        Text("Extroverted").tag(extrovertedTag)
                }
                Text("2) Pick a side for yourself based on the following prompts")
                    .font(.headline)
                    .padding(.bottom)
                VStack(){
                    Toggle(isOn: $leaderToggledOn) {
                        Text("A Leader?")
                    }
                    Toggle(isOn: $selfLearnerToggledOn) {
                        Text("A Self Learner?")
                    }
                    Toggle(isOn: $emotionallyIntelligentToggledOn) {
                        Text("Emotionally Intelligent?")
                    }
                    Toggle(isOn: $peoplePersonToggledOn) {
                        Text("A People Person?")
                    }
                    Toggle(isOn: $fastPacedToggledOn) {
                        Text("Likes A Fast Paced Environment?")
                    }
                    Toggle(isOn: $focusedAmbitiousToggledOn) {
                        Text("Focused and Ambitious?")
                    }
                }
                .padding(.trailing)
                Text("3) How would you rate yourself as someone who enjoys leading a group of people?")
                    .font(.headline)
                    .padding(.vertical)
                Slider(value: $sliderInitial, in:0...1, step: 0.1)
                Text("4) How many career options would you like presented to you?")
                    .font(.headline)
                    .padding(.vertical)
                Stepper(value: $careerOptionsInitial, in: 1...careerOptionsInitial) {
                    Text("Max Number of Options:")
                    Text("\(careerOptionsInitial)")
                        .font(.callout)
                }
                .padding(.bottom)
                NavigationLink(destination: ResultsView(
                    name: name,
                    age: age,
                    leader: leaderToggledOn,
                    selfLearner: selfLearnerToggledOn,
                    emotionallyIntelligent: emotionallyIntelligentToggledOn,
                    peoplePerson: peoplePersonToggledOn,
                    fastPaced: fastPacedToggledOn,
                    focusedAmbitious: focusedAmbitiousToggledOn,
                    sliderVal: sliderInitial,
                    careerOptions: careerOptionsInitial
                )){
                    Text("See your Results")
                }
                Spacer()
            }
        }
        .padding(.horizontal)
    }
}

struct PageOne_Previews: PreviewProvider {
    static var previews: some View {
        PageOne(name: "", age: "")
    }
}
