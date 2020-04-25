//
//  ContentView.swift
//  MealPro
//
//  Created by Lauren Miller on 4/25/20.
//  Copyright © 2020 snowDrop. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var dateFormatter: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        return dateFormatter
    }
    
    var plans = Plan.testPlans
    
    var body: some View {
        NavigationView {
            List (plans) { plan in
                NavigationLink(destination: Text("\(self.dateFormatter.string(from: plan.startDate))")) {
                    HStack {
                        Text("\(self.dateFormatter.string(from: plan.startDate))")
                        Spacer()
                        Text("\(plan.lengthInDays) days")
                    }
                }
            }
            .navigationBarTitle("Meal Plan History")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
