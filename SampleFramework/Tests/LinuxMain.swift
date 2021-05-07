import XCTest

import SampleFrameworkTests

var tests = [XCTestCaseEntry]()
tests += SampleFrameworkTests.allTests()
XCTMain(tests)
