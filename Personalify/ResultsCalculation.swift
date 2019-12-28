//
//  ResultsCalculation.swift
//  Personalify
//
//  Created by Mohit Kewalramani on 2019-12-27.
//  Copyright © 2019 Mohit Kewalramani. All rights reserved.
//

import Foundation

var possibleCareers = [
    "Author",
    "Artist",
    "Nurse",
    "Musician",
    "Builder",
    "Police Officer",
    "Social Worker"
]

func returnConstructedList(
    leader: Bool,
    selfLearner: Bool,
    emotionallyIntelligent: Bool,
    peoplePerson: Bool,
    fastPaced: Bool,
    focusedAmbitious: Bool,
    maxOptions: Int) -> [String]
{
    var careerList: [String] = possibleCareers
    if (leader){
        careerList.append("Lawyer")
    }
    if (selfLearner){
        careerList.append("Engineer")
    }
    if (emotionallyIntelligent){
        careerList.append("Politician")
    }
    if (peoplePerson){
        careerList.append("Sales Attendant")
    }
    if (fastPaced){
        careerList.append("Doctor")
    }
    if (focusedAmbitious){
        careerList.append("Professor")
    }
    return returnRankedList(maxOptions: maxOptions, constructedList: careerList)
}

func returnRankedList(maxOptions: Int, constructedList: [String]) -> [String]
{
    if (constructedList.count <= maxOptions){
        return constructedList;
    }
    return constructedList.suffix(maxOptions)
}
