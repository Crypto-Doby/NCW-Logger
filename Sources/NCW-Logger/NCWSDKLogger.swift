//
//  NCWSDKLogger.swift
//  
//
//  Created by Doby on 2021/10/7.
//

import Foundation
import SwiftyBeaver

final public class NCWSDKLogger: NCWLogger {
    public init() {
        super.init(destinations: [ConsoleDestination(), FileDestination()],
                   logTag: "Defi SDK",
                   destinationValidator: {_ in true})
        setupDestination()
    }
}
