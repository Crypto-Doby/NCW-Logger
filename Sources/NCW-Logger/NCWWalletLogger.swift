//
//  NCWWalletLogger.swift
//  
//
//  Created by Doby on 2021/10/7.
//

import Foundation
import SwiftyBeaver

final public class NCWWalletLogger: NCWLogger {
    public init() {
        super.init(destinations: [ConsoleDestination(), FileDestination()],
                   logTag: "wallet",
                   destinationValidator: {_ in true})
        setupDestination()
    }
}
