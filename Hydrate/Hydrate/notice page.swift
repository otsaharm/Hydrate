//
//  notice page.swift
//  Hydrate
//
//  Created by Sahar Otiyn on 18/04/1446 AH.
//
import SwiftUI
import UserNotifications
struct notice_page: View {
    @Binding var recommendedIntake: Double
    @State var startHour: String = ""
    @State private var StartHour: String = ""
    @State private var endHour = Date()
    @State private var date = Date()
//    @State private var timePeriodEnd: String = "PM"
//    @State private var timePeriodStart: String = "AM"
    @State private var selectedTime: String? = "15 Mins"
    let timeOptions = [
        "15 Mins", "30 Mins", "60 Mins", "90 Mins",
        "2 Hours", "3 Hours", "4 Hours", "5 Hours"
    ]
    var body: some View {
        NavigationView {
            VStack {
                // Start hour
                //                               HStack {
                //                                   Text("Start hour")
                //                                       .font(.body)
                //                                   Spacer()
                //                                   DatePicker("", selection: $startHour, displayedComponents: .hourAndMinute)
                //                                       .labelsHidden()
                //                                       .padding(.horizontal, 10)
                //                                       .background(Color(UIColor.systemGray6))
                //                                       .cornerRadius(5)
                //                                       .frame(width: 100)
                //                                       .environment(\.locale, Locale(identifier: "us"))
                //
                //                                   Picker(selection: $timePeriodStart, label: Text("")) {
                //                                       Text("AM").tag("AM")
                //                                       Text("PM").tag("PM")
                //                                   }
                //                                   .pickerStyle(SegmentedPickerStyle())
                //                                   .frame(width: 100)
                //                               }
                //                               .padding()
                //                               .background(Color(UIColor.systemGray6))
                //
                //                               // Divider Line
                //                               Divider()
                //                                   .background(Color(UIColor(white: 0.9, alpha: 0.2)))
                //                                   .frame(height: 1)
                //                                   .padding(.horizontal, 10)
                //                                   .padding(.top, 5)
                //
                //                               // End hour (same design as Start hour)
                //                               HStack {
                //                                   Text("End hour")
                //                                       .font(.body)
                //                                   Spacer()
                //                                   DatePicker("", selection: $endHour, displayedComponents: .hourAndMinute)
                //                                       .labelsHidden()
                //                                       .padding(.horizontal, 10)
                //                                       .background(Color(UIColor.systemGray6))
                //                                       .cornerRadius(5)
                //                                       .frame(width: 100)
                //                                       .environment(\.locale, Locale(identifier: "us"))
                //
                //                                   Picker(selection: $timePeriodEnd, label: Text("")) {
                //                                       Text("AM").tag("AM")
                //                                       Text("PM").tag("PM")
                //                                   }
                //                                   .pickerStyle(SegmentedPickerStyle())
                //                                   .frame(width: 100)
                //                               }
                //                               .padding()
                //                               .background(Color(UIColor.systemGray6))
                //                           }
                //                           .background(Color(UIColor.systemGray6))
                //                           .padding(.bottom, 20)
                //
                VStack{
                    VStack {
                        Text("Notification Preferences")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .font(.title)
                            .padding(.leading,-35)
                            .padding()
                        Text("The start and End hour")
                            .font(.system(size: 22))
                            .font(.headline)
                            .fontWeight(.bold)
                            .padding()
                            .padding(.leading,-150)
                            .padding(.bottom,-20)
                        HStack{
                            Text("Specify the start and end date to receive the notifications")
                                .foregroundColor(.gray)
                                .padding(.bottom,-20)
                                .padding(.leading,-31)
                        }
                        Spacer()
                        VStack {
                            DatePicker(selection: .constant(Date()), displayedComponents: .hourAndMinute, label: { Text("Start hour") })
                            
                                .padding()
                                .background(Color(.systemGray6))
                                .padding(.horizontal,10)
                            if !StartHour.isEmpty {
                                Button(action: {
                                    StartHour = ""
                                }) {
                                    Image(systemName: "xmark.circle.fill")
                                        .foregroundColor(.gray)
                                }
                            }
                            DatePicker(selection: .constant(Date()), displayedComponents: .hourAndMinute, label: { Text("End hour") })
                                .padding()
                                .background(Color(.systemGray6))
                                .padding(.horizontal,10)
                            if !StartHour.isEmpty {
                                Button(action: {
                                    StartHour = ""
                                }) {
                                    Image(systemName: "xmark.circle.fill")
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                        .padding()
                        
    VStack{
    Text("Notification interval ")
    .font(.system(size: 22))
    .fontWeight(.bold)
    .padding(.leading,-169)
                        
    }
    HStack{
    Text("How often would you like to receive notifications within the specified time interval")
    .foregroundColor(.gray)
    }
    }
    
    VStack(spacing: 10) {
        
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    LazyVGrid(columns: columns, spacing:9) {
        ForEach(timeOptions, id: \.self) { time in
            Button(action: {
                selectedTime = time
            }) {
                Text(time)
                    .font(.system(size: 15, weight: .medium))
                    .padding()
                    .frame(width: 85, height: 80)
                    .background(selectedTime == time ? Color.cyan : Color.gray.opacity(0.1))
                    .foregroundColor(selectedTime == time ? .white : .black)
                    .cornerRadius(10)
            }
        }
                        }
                    }
                    .padding(.bottom,60)
              
                    NavigationLink(destination:ProgressPage1(recommendedIntake: $recommendedIntake).navigationBarBackButtonHidden(true)) {
                        Text("**Next**")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.cyan)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.cyan)
                            )
                    }            .navigationBarBackButtonHidden(true)
                    
                        .padding(.top, 20)
                }
                .padding()
                
            }
        }
        
        
    }
    
    }
                    #Preview {
                        notice_page(recommendedIntake: .constant(9))
                    }
       
