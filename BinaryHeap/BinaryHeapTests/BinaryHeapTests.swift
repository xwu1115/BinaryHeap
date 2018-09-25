//
//  BinaryHeapTests.swift
//  BinaryHeapTests
//
//  Created by Shawn Wu on 9/23/18.
//  Copyright © 2018 Shawn Wu. All rights reserved.
//

import XCTest
@testable import BinaryHeap

class BinaryHeapTests: XCTestCase {
    private var heap: BinaryHeap<Int>!
    
    override func setUp() {
        super.setUp()
        
        heap = BinaryHeap<Int>()
    }
    
    func testExample1() {
        heap.add(5)
        heap.add(3)
        heap.add(1)
        heap.add(2)
        heap.add(4)
        XCTAssertEqual(heap.getMin(), 1)
    }
    
    func testExample2() {
        heap.add(7)
        heap.add(19)
        heap.add(25)
        heap.add(18)
        XCTAssertEqual(heap.getMin(), 7)
    }
    
    func testExample3() {
        heap.add(7)
        heap.add(19)
        heap.add(25)
        heap.add(18)
        heap.delete(obj: 7)
        XCTAssertEqual(heap.getMin(), 18)
    }
    
    func testExample4() {
        heap.add(7)
        heap.add(19)
        heap.add(25)
        heap.add(18)
        _ = heap.getMin()
        _ = heap.getMin()
        XCTAssertEqual(heap.peek(), 19)
    }
}
