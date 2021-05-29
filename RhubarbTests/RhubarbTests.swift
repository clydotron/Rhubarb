//
//  RhubarbTests.swift
//  RhubarbTests
//
//  Created by Brian Green on 5/28/21.
//

import XCTest
@testable import Rhubarb

class RhubarbTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testDecodeTaxonomy() throws {
        
        let taxdata: [Taxonomy] = Bundle.main.decode("taxonomy.json")
        
        XCTAssertEqual( taxdata.count, 2 )
    }
    
    func testDecodeOrganismFromJSON() throws {
        
        let torganisms: [Organism] = Bundle.main.decode("test.json")
        XCTAssertEqual( torganisms.count, 3 )
        
        let organism = torganisms[0]
        XCTAssertEqual(organism.name, "Elk kelp")
    }
    
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
