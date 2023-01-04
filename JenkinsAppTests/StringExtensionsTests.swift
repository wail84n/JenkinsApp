//
//  StringExtensionsTests.swift
//  JenkinsAppTests
//
//  Created by wael almohammad on 31/12/2022.
//

import XCTest
@testable import JenkinsApp

final class StringExtensionsTests: XCTestCase {

    var sutView: ViewController?
    override func setUpWithError() throws {
        sutView = ViewController()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        sutView = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testUppercaseFirst(){
        let input = "antoine"
        let expectedOutput = "Antoine"
        XCTAssertEqual(input.uppercasedFirst(), expectedOutput, "The String is not correctly capitalized.")
    }
    
    func test_user_json_valid() throws{
        let testBundle = Bundle(for: type(of: self))
        let bundle = try XCTUnwrap(testBundle.url(forResource: "userJsonFile", withExtension: "json"))

        let jsonData = try Data(contentsOf: bundle)
        XCTAssertNoThrow(try JSONDecoder().decode(User.self, from: jsonData))
    }
    
    func testWaelFunction()throws{
        let _sutView = try XCTUnwrap(sutView)
        
        XCTAssertEqual(_sutView.waelWord(test: "11"), "try Again")  
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
