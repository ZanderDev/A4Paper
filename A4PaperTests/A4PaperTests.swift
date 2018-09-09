//
//  A4PaperTests.swift
//  A4PaperTests
//
//  Created by AlphaZ on 2018/9/7.
//  Copyright © 2018年 Zhang,Dong(AI). All rights reserved.
//

import XCTest

@testable import A4Paper

class A4PaperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        
        _ = UIColor(11, g: 22, b: 33, a: 1).rgba()
        
    }



    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
