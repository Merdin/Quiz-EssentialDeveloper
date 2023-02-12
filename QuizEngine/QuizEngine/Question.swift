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
    
    public func hash(into hasher: inout Hasher) {
        switch self {
        case .singleAnswer(let t):
            hasher.combine(t)
        case .multipleAnswer(let t):
            hasher.combine(t)
        }
    }
}
