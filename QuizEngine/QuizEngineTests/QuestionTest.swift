//
//  QuestionTest.swift
//  QuizAppTests
//
//  Created by Merdin Kahrimanovic on 09/02/2023.
//

import Foundation
import XCTest
@testable import QuizEngine

class QuestionTest: XCTestCase {
    
    func test_hashValue_singleAnswer_returnsTypeHash() {
        let type = "a string"
        
        let sut = Question.singleAnswer(type)
        
        XCTAssertEqual(sut.hashValue, type.hashValue)
    }
    
    func test_hashValue_multipleAnswer_returnsTypeHash() {
        let type = "a string"
        
        let sut = Question.multipleAnswer(type)
        
        XCTAssertEqual(sut.hashValue, type.hashValue)
    }
}
