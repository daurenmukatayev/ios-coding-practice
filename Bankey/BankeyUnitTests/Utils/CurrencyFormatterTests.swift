 //
//  CurrencyFormatterTests.swift
//  BankeyUnitTests
//
//  Created by Educon IT on 31.01.2026.
//

import Foundation
import XCTest

@testable import Bankey

class Text: XCTestCase {
    var formatter: CurrencyFormatter!
    
    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
    }
    
    func testBreatDollarsInwoCents() throws {
        let result = formatter.breakIntoDollarsAndCents(929464.23)
        XCTAssertEqual(result.0, "929,464")
        XCTAssertEqual(result.1, "23")
    }
    
    func testDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(929464.23)
        XCTAssertEqual(result, "$929,464.23")
    }
    
    func testZeroDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(0.00)
        XCTAssertEqual(result, "$0.00")
    }
}
