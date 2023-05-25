//
//  Date+RawRepresentable.swift
//  
//
//  Created by Jeff Hokit on 5/25/23.
//

import Foundation

// Make Date storeable by @AppStorage
extension Date : RawRepresentable {
    public var rawValue: String {
        self.timeIntervalSinceReferenceDate.description
    }
    
    public init?(rawValue: String) {
        self = Date(timeIntervalSinceReferenceDate: Double(rawValue) ?? 00)
    }
}
