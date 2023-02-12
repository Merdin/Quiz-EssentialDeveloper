//
//  Result.swift
//  QuizEngine
//
//  Created by Merdin Kahrimanovic on 09/02/2023.
//

import Foundation

public struct Result<Question: Hashable, Answer> {
    public let answers: [Question: Answer]
    public let score: Int
    
    public init(answers: [Question: Answer], score: Int) {
        self.answers = answers
        self.score = score
    }
}
