//
//  ScoreTest.swift
//  QuizEngine
//
//  Created by Merdin Kahrimanovic on 13/02/2023.
//

import Foundation
import XCTest

class ScoreTest: XCTestCase {
    
    func test_noAnswers_scoresZero() {
        XCTAssertEqual(BasicScore.score(for: [], comparingTo: []), 0)
    }
    
    func test_oneNonMatchingAnswers_scoresZero() {
        XCTAssertEqual(BasicScore.score(for: ["not a match"], comparingTo: ["an answer"]), 0)
    }
    
    func test_oneMatchingAnswers_scoresOne() {
        XCTAssertEqual(BasicScore.score(for: ["an answer"], comparingTo: ["an answer"]), 1)
    }
    
    func test_oneMatchingAnswerOneNonMatching_scoresOne() {
        let score = BasicScore.score(
            for: ["an answer", "not a match"],
            comparingTo: ["an answer", "another answer"]
        )
        XCTAssertEqual(score, 1)
    }
    
    func test_twoMatchingAnswers_scoresTwo() {
        let score = BasicScore.score(
            for: ["an answer", "another answer"],
            comparingTo: ["an answer", "another answer"]
        )
        XCTAssertEqual(score, 2)
    }
    
    func test_withTooManyAnswers_twoMatchingAnswers_scoresTwo() {
        let score = BasicScore.score(
            for: ["an answer", "another answer", "an extra answer"],
            comparingTo: ["an answer", "another answer"]
        )
        XCTAssertEqual(score, 2)
    }
    
    func test_withTooManyCorrectAnswers_oneMatchingAnswer_scoresOne() {
        let score = BasicScore.score(
            for: ["not matching", "another answer"],
            comparingTo: ["an answer", "another answer", "an extra answer"]
        )
        XCTAssertEqual(score, 1)
    }
    
    private class BasicScore {
        static func score(for answers: [String], comparingTo MatchingAnswers: [String] = []) -> Int {
            var score = 0
            for (index, answer) in answers.enumerated() {
                if index >= MatchingAnswers.count { return score }
                score += answer == MatchingAnswers[index] ? 1 : 0
            }
            return score
        }
    }
}
