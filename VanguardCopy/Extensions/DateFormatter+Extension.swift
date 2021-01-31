//
//  DateFormatter+Extension.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/30/21.
//

import Foundation

extension DateFormatter {
    static let shortDate: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }()
}
