//
//  XCTestCase+MemoryLeakTracking.swift
//  EssentialFeedTests
//
//  Created by Jaime Yesid Leon Parada on 12/09/22.
//

import Foundation
import XCTest

extension XCTestCase {
    func trackForMemoryLeaks(_ instance: AnyObject, file: StaticString = #filePath, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance, "Instance should have been deallocated. Potencial memory leak.", file: file, line: line)
        }
    }
}
