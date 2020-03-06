import XCTest
@testable import MyColorToImageLibrary

final class MyColorToImageLibraryTests: XCTestCase {
    
    func testExample() {
        let imgColor = UIColor(red: 24/255, green: 247/255, blue: 248/255, alpha: 1)
        let uicolor2image = UIColorConverter(from: imgColor).image
        if let size = uicolor2image?.size {
            XCTAssertEqual(size.width, 1)
            XCTAssertEqual(size.height, 1)
        } else {
            XCTFail("not image")
        }
        
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

