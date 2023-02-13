//
//  Question.swift
//  QuizApp
//
//  Created by Merdin Kahrimanovic on 09/02/2023.
//

import Foundation

public enum Question<T: Hashable>: Hashable {
    case singleAnswer(T)
    case multipleAnswer(T)
}
