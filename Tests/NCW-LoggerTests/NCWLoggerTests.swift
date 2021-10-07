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
        logger1.info("aaaaaaa")
        logger1.debug("bbbbbbb")
        logger1.error("ccccccc")
        logger2.warning("aaaaaaa")
        logger2.debug("bbbbbbb")
        logger2.verbose("ccccccc")
//        wait(for: [], timeout: 3)
    }
}
