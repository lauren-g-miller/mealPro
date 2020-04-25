//
//  SwiftUIView.swift
//  MealPro
//
//  Created by Dan Miller on 4/25/20.
//  Copyright © 2020 snowDrop. All rights reserved.
//

import SwiftUI

struct Plan: Identifiable {
    var id = UUID()
    var startDate: Date
    var lengthInDays: Int
}

extension Plan {
    static let ReferenceDate: Date = Date(timeIntervalSince1970: 1587877200) // 4/26/2020
    static let TwoWeeksInSeconds: TimeInterval = 1209600
    
    static let testPlans = [
        Plan(startDate: ReferenceDate, lengthInDays: 14),
        Plan(startDate: Date(timeInterval: (-1 * TwoWeeksInSeconds), since: ReferenceDate), lengthInDays: 14),
        Plan(startDate: Date(timeInterval: (-2 * TwoWeeksInSeconds), since: ReferenceDate), lengthInDays: 14),
        Plan(startDate: Date(timeInterval: (-3 * TwoWeeksInSeconds), since: ReferenceDate), lengthInDays: 14)
        
    ]
}
