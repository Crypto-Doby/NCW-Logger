//
//  NCWWalletLogger.swift
//  
//
//  Created by Doby on 2021/10/7.
//

import Foundation
import SwiftyBeaver

final public class NCWWalletLogger: NCWLogger {
    public let destinations = [ConsoleDestination(), NCWLoggerFileDestination()]
    
    public var filters: [FilterType] = []
    
    public var logTag = "wallet"
    
    public var destinationValidator: ((BaseDestination) -> Bool)?  = nil
    
    public init() {
        setupDestination()
    }
}
