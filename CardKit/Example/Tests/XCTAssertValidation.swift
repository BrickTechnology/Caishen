//
//  XCTAssertValidation.swift
//  Pods
//
//  Created by Daniel Vancura on 2/3/16.
//
//

import UIKit
import XCTest
import CardKit

func XCTAssertValid(validationResult: CardValidationResult) {
    XCTAssertTrue(validationResult == CardValidationResult.Valid, "Expected the validation result to be true, but was \(validationResult.stringValue())")
}

func XCTAssertInvalidCVC(validationResult: CardValidationResult) {
    XCTAssertTrue(validationResult.isSupersetOf(CardValidationResult.InvalidCVC), "Expected an invalid CVC, but got \(validationResult.stringValue())")
}

func XCTAssertInvalidNumberForType(validationResult: CardValidationResult) {
    XCTAssertTrue(validationResult.isSupersetOf(CardValidationResult.NumberDoesNotMatchType), "Expected an invalid number for the credit card type, but got \(validationResult.stringValue())")
}

func XCTAssertIncompleteNumber(validationResult: CardValidationResult) {
    XCTAssertTrue(validationResult.isSupersetOf(CardValidationResult.NumberIncomplete), "Expected an incomplete number for the credit card type, but got \(validationResult.stringValue())")
}

func XCTAssertCardNotExpired(validationResult: CardValidationResult) {
    XCTAssertFalse(validationResult.isSupersetOf(CardValidationResult.CardExpired), "Expected a not expired card, but got: \(validationResult.stringValue())")
}

func XCTAssertCardExpired(validationResult: CardValidationResult) {
    XCTAssertTrue(validationResult.isSupersetOf(CardValidationResult.CardExpired), "Expected an expired card, but got: \(validationResult.stringValue())")
}

func XCTAssertLuhnTestFailed(validationResult: CardValidationResult) {
    XCTAssertTrue(validationResult.isSupersetOf(CardValidationResult.LuhnTestFailed), "Expected a Luhn test failure on validation, but got \(validationResult.stringValue())")
}