//
//  NCWLoggerFileDestination.swift
//  
//
//  Created by Doby on 2021/10/7.
//

import Foundation
import SwiftyBeaver

final public class NCWLoggerFileDestination: FileDestination {
    
    static public let logFilePath = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first?.appendingPathComponent("logs")
    
    public init() {
        let version = Bundle.main.infoDictionary?["CFBundleVersion"] as? String
        let build = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
        let fullVersionString = "\(version ?? "") \((build != nil) ? "(\(build ?? ""))" : "")"
        print("logFilesPath: \(Self.logFilePath?.path ?? "")")
        super.init(logFileURL: Self.logFilePath?.appendingPathComponent(fullVersionString + ".log"))
    }
    
}
