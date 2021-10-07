import Foundation
import SwiftyBeaver

open class NCWLogger {
    
    let destinations: [BaseDestination]
    let filters: [FilterType]
    let logTag: String
    let destinationValidator: ((BaseDestination) -> Bool)?
    
    internal var suffixLogTag: String {
        return "【\(logTag)】"
    }
    
    public init(
        destinations: [BaseDestination] = [ConsoleDestination()],
        filters: [FilterType] = [],
        logTag: String = "",
        destinationValidator: ((BaseDestination) -> Bool)? = nil
    ) {
        self.destinations = destinations
        self.filters = filters
        self.logTag = logTag
        self.destinationValidator = destinationValidator
    }
    
    internal func setupDestination() {
        destinations.forEach({ dest in
            dest.format = "$C$L \(logTag)$C $DMM-dd HH:mm:ss.SSS$d $N.$F:$l > \n$M\n"
            dest.levelColor.verbose = "💜"
            dest.levelColor.debug = "💚"
            dest.levelColor.info = "💙"
            dest.levelColor.warning = "💛"
            dest.levelColor.error = "💔💔"
            dest.addFilter(MessageFilterFactory.endsWith(suffixLogTag, caseSensitive: true, required: true, minLevel: .verbose))
            if destinationValidator?(dest) != false {
                SwiftyBeaver.addDestination(dest)
            }
        })
    }
    
    public func verbose(_ message: @autoclosure () -> Any, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        custom(level: .verbose, message: message(), file: file, function: function, line: line)
    }
    public func debug(_ message: @autoclosure () -> Any, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        custom(level: .debug, message: message(), file: file, function: function, line: line)
    }
    
    public func info(_ message: @autoclosure () -> Any, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        custom(level: .info, message: message(), file: file, function: function, line: line)
    }
    
    public func warning(_ message: @autoclosure () -> Any, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        custom(level: .warning, message: message(), file: file, function: function, line: line)
    }
    
    public func error(_ message: @autoclosure () -> Any, _ file: String = #file, _ function: String = #function, line: Int = #line) {
        custom(level: .error, message: message(), file: file, function: function, line: line)
    }
    
    public func custom(level: SwiftyBeaver.Level, message: @autoclosure () -> Any, file: String = #file, function: String = #function, line: Int = #line) {
        SwiftyBeaver.custom(level: level, message: "\(message())\n\(suffixLogTag)", file: file, function: function, line: line, context: nil)
    }
}
