//
//  DatePickerBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 15.02.2024.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selection: Date = Date()
    
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2023)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("Selected date is:")
            Text(dateFormatter.string(from: selection))
            //DatePicker("Select a date", selection: $selection)
            //DatePicker("Select a date", selection: $selection, displayedComponents: [.date])
            DatePicker("Select a date", selection: $selection, in: startingDate...endingDate)
                .tint(Color.green)
                .datePickerStyle(.compact)
                .padding()
        }
    }
}

#Preview {
    DatePickerBootcamp()
}
