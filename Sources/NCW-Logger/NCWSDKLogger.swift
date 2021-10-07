//
//  NCWSDKLogger.swift
//  
//
//  Created by Doby on 2021/10/7.
//

import Foundation
import SwiftyBeaver

public struct NCWSDKLogger: NCWLogger {
    public let destinations = [ConsoleDestination(), NCWLoggerFileDestination()]
    
    public var filters: [FilterType] = []
    
    public var logTag = "Defi SDK"
    
    public var destinationValidator: ((BaseDestination) -> Bool)?  = nil
    
    public init() {
        setupDestination()
    }
}
