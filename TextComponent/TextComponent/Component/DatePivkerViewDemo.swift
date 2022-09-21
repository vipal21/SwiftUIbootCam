//
//  DatePivkerViewDemo.swift
//  TextComponent
//
//  Created by Vipal on 16/09/22.
//

import SwiftUI

struct DatePivkerViewDemo: View {
    @State var date: Date = Date()
    let startDate: Date = Calendar.current.date(from:DateComponents(year: 2018)) ?? Date()
    let endDate: Date =  Date()
    var dateformattee : DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    var body: some View {
      
        //ShowSimpleDatePicker()
        //ShowSimpleDatePicker2()
        //ShowSimpleDatePicker3()
        VStack{
            Text("Selected Date:\(dateformattee.string(from: startDate))")
            ShowSimpleDatePickerwithCloseRange()
        }
        
    }
    func ShowSimpleDatePicker () -> some View{
        DatePicker("DatePicker", selection: $date)
              .accentColor(.red)
              .datePickerStyle(.compact)
      }
    func ShowSimpleDatePicker2() -> some View{
        DatePicker("SelectTime", selection: $date , displayedComponents: [.hourAndMinute])
      }
    func ShowSimpleDatePicker3() -> some View{
        DatePicker("SelectDate", selection: $date , displayedComponents: [.date])
      }
    func ShowSimpleDatePickerwithCloseRange() -> some View{
        DatePicker("SelectDate", selection: $date, in: startDate...endDate)
      }
}

struct DatePivkerViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        DatePivkerViewDemo()
    }
}
