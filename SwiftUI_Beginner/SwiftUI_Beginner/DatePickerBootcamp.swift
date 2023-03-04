//
//  DatePickerBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/21.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2022)) ?? Date()
    let endingDate: Date = Date()
        
    var body: some View {
        
        VStack {
            
            Text("Selected Date is :")
                .padding(.bottom, 5)
            Text(getDateFormat(date: selectedDate))
                .font(.title)
            
            //        DatePicker("Select a Date", selection: $selectedDate)
            //        DatePicker("Select a date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
            
            // 22년부터 ~ 오늘 사이에 달력만 선택 가능
            DatePicker("Select a Date",
                       selection: $selectedDate,
                       in: startingDate...endingDate,
                       displayedComponents: [.date, .hourAndMinute])
            
            .datePickerStyle(
                CompactDatePickerStyle()
                //                GraphicalDatePickerStyle()
                //                WheelDatePickerStyle()
            )
            .tint(Color.red)
        }
        .padding()
        .background(Color.green)
        .cornerRadius(10)
        .padding(3)
    }
    
    
    func getDateFormat(date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm"
        
        return dateFormatter.string(from: date)
    }
    
}




struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
