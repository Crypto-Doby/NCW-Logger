import XCTest
@testable import NCW_Logger

final class NCWLoggerTests: XCTestCase {
    
    var logger1: NCWLogger!
    var logger2: NCWLogger!
    
    override func setUpWithError() throws {
        logger1 = NCWWalletLogger()
        logger2 = NCWSDKLogger()
    }
    
    func testExample() throws {
        logger1.debug("aaaaaaa")
        logger1.debug("bbbbbbb")
        logger1.debug("ccccccc")
        logger2.debug("aaaaaaa")
        logger2.debug("bbbbbbb")
        logger2.debug("ccccccc")
//        wait(for: [], timeout: 3)
    }
}
