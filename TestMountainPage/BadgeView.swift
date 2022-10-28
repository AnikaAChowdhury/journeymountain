//
//  BadgeView.swift
//  badgepage
//
//  Created by Monique Huang on 10/9/22.
//

import SwiftUI

struct BadgeView: View {
    @Binding var userStreak:Int
    
    @State private var popUpVisible:Double = 0.0
    let popUp = PopUpMessage(todaysProgressPercent: .constant(0))
    
    //change to userDefaults value
    @State var startWeight:Double = 200
    @State var currWeight:Double =  180
    
    //bool is badge earned
    @State var has5PC:Bool = UserDefaults.standard.bool(forKey: "has5PC") != nil ? UserDefaults.standard.bool(forKey: "has5PC") : false
    @State var has7_5PC:Bool = UserDefaults.standard.bool(forKey: "has7_5PC") != nil ? UserDefaults.standard.bool(forKey: "has7_5PC") : false
    @State var has10PC:Bool = UserDefaults.standard.bool(forKey: "has10PC") != nil ? UserDefaults.standard.bool(forKey: "has10PC") : false
    @State var has12_5PC:Bool = UserDefaults.standard.bool(forKey: "has12_5PC") != nil ? UserDefaults.standard.bool(forKey: "has12_5PC") : false
    @State var has15PC:Bool = UserDefaults.standard.bool(forKey: "has15PC") != nil ? UserDefaults.standard.bool(forKey: "has15PC") : false
    
    @State var has1DStr:Bool = UserDefaults.standard.bool(forKey: "has1DStr") != nil ? UserDefaults.standard.bool(forKey: "has1DStr") : false
    @State var has3DStr:Bool = UserDefaults.standard.bool(forKey: "has3DStr") != nil ? UserDefaults.standard.bool(forKey: "has3DStr") : false
    @State var has1WStr:Bool = UserDefaults.standard.bool(forKey: "has1WStr") != nil ? UserDefaults.standard.bool(forKey: "has1WStr") : false
    @State var has1MStr:Bool = UserDefaults.standard.bool(forKey: "has1MStr") != nil ? UserDefaults.standard.bool(forKey: "has1MStr") : false
    @State var has3MStr:Bool = UserDefaults.standard.bool(forKey: "has3MStr") != nil ? UserDefaults.standard.bool(forKey: "has3MStr") : false
    @State var has6MStr:Bool = UserDefaults.standard.bool(forKey: "has6MStr") != nil ? UserDefaults.standard.bool(forKey: "has6MStr") : false
    @State var has9MStr:Bool = UserDefaults.standard.bool(forKey: "has9MStr") != nil ? UserDefaults.standard.bool(forKey: "has9MStr") : false
    @State var has1YStr:Bool = UserDefaults.standard.bool(forKey: "has1YStr") != nil ? UserDefaults.standard.bool(forKey: "has1YStr") : false
    
    
    //dates badge earned
    
    @State var fivePCDate:String = UserDefaults.standard.string(forKey: "fivePCDate") != nil ? UserDefaults.standard.string(forKey: "fivePCDate")! : ""
    @State var seven_fivePCDate:String = UserDefaults.standard.string(forKey: "seven_fivePCDate") != nil ? UserDefaults.standard.string(forKey: "seven_fivePCDate")! : ""
    @State var tenPCDate:String = UserDefaults.standard.string(forKey: "tenPCDate") != nil ? UserDefaults.standard.string(forKey: "tenPCDate")! : ""
    @State var twelve_fivePCDate:String = UserDefaults.standard.string(forKey: "twelve_fivePCDate") != nil ? UserDefaults.standard.string(forKey: "twelve_fivePCDate")! : ""
    @State var fifteenPCDate:String = UserDefaults.standard.string(forKey: "fifteenPCDate") != nil ? UserDefaults.standard.string(forKey: "fifteenPCDate")! : ""
    
    @State var oneDStrDate:String = UserDefaults.standard.string(forKey: "oneDStrDate") != nil ? UserDefaults.standard.string(forKey: "oneDStrDate")! : ""
    @State var threeDStrDate:String = UserDefaults.standard.string(forKey: "threeDStrDate") != nil ? UserDefaults.standard.string(forKey: "threeDStrDate")! : ""
    @State var oneWStrDate:String = UserDefaults.standard.string(forKey: "oneWStrDate") != nil ? UserDefaults.standard.string(forKey: "oneWStrDate")! : ""
    @State var oneMStrDate:String = UserDefaults.standard.string(forKey: "oneMStrDate") != nil ? UserDefaults.standard.string(forKey: "oneMStrDate")! : ""
    @State var threeMStrDate:String = UserDefaults.standard.string(forKey: "threeMStrDate") != nil ? UserDefaults.standard.string(forKey: "threeMStrDate")! : ""
    @State var sixMStrDate:String = UserDefaults.standard.string(forKey: "sixMStrDate") != nil ? UserDefaults.standard.string(forKey: "sixMStrDate")! : ""
    @State var nineMStrDate:String = UserDefaults.standard.string(forKey: "nineMStrDate") != nil ? UserDefaults.standard.string(forKey: "nineMStrDate")! : ""
    @State var oneYStrDate:String = UserDefaults.standard.string(forKey: "oneYStrDate") != nil ? UserDefaults.standard.string(forKey: "oneYStrDate")! : ""
    
    @State var message = ""
    @State private var showGame = false
    
    func loss() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        var date:String
        
        if currWeight <= startWeight*0.95 {
            if(!has5PC) {
                date = dateFormatter.string(from: Date())
                UserDefaults.standard.set(date, forKey: "fivePCDate")
                fivePCDate = date
            }
            has5PC = true
            UserDefaults.standard.set(true, forKey: "has5PC")
        }
        if currWeight <= startWeight*0.925 {
            if(!has7_5PC) {
                date = dateFormatter.string(from: Date())
                UserDefaults.standard.set(date, forKey: "seven_fivePCDate")
                seven_fivePCDate = date
            }
            has7_5PC = true
            UserDefaults.standard.set(true, forKey: "has7_5PC")
        }
        if currWeight <= startWeight*0.9 {
            if(!has10PC) {
                date = dateFormatter.string(from: Date())
                UserDefaults.standard.set(date, forKey: "tenPCDate")
                tenPCDate = date
            }
            has10PC = true
            UserDefaults.standard.set(true, forKey: "has10PC")
        }
        if currWeight <= startWeight*0.875 {
            if(!has12_5PC) {
                date = dateFormatter.string(from: Date())
                UserDefaults.standard.set(date, forKey: "twelve_fivePCDate")
                twelve_fivePCDate = date
            }
            has12_5PC = true
            UserDefaults.standard.set(true, forKey: "has12_5PC")
        }
        if currWeight <= startWeight*0.85 {
            if(!has15PC) {
                date = dateFormatter.string(from: Date())
                UserDefaults.standard.set(date, forKey: "fifteenPCDate")
                fifteenPCDate = date
            }
            has15PC = true
            UserDefaults.standard.set(true, forKey: "has15PC")
        }
    }
    
    func countStreak() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        var date:String
        
        if userStreak >= 1 {
            if(!has1DStr) {
                date = dateFormatter.string(from: Date())
                UserDefaults.standard.set(date, forKey: "oneDStrDate")
                oneDStrDate = date
            }
            has1DStr = true
            UserDefaults.standard.set(true, forKey: "has1DStr")
        }
    
        if userStreak >= 3 {
            if(!has3DStr) {
                date = dateFormatter.string(from: Date())
                UserDefaults.standard.set(date, forKey: "threeDStrDate")
                threeDStrDate = date
            }
            has3DStr = true
            UserDefaults.standard.set(true, forKey: "has3DStr")
        }
        
        if userStreak >= 7 {
            if(!has1WStr) {
                date = dateFormatter.string(from: Date())
                UserDefaults.standard.set(date, forKey: "oneWStrDate")
                oneWStrDate = date
            }
            has1WStr = true
            UserDefaults.standard.set(true, forKey: "has1WStr")
        }
        
        if userStreak >= 30 {
            if(!has1MStr) {
                date = dateFormatter.string(from: Date())
                UserDefaults.standard.set(date, forKey: "oneMStrDate")
                oneMStrDate = date
            }
            has1MStr = true
            UserDefaults.standard.set(true, forKey: "has1MStr")
        }
        
        if userStreak >= 90 {
            if(!has3MStr) {
                date = dateFormatter.string(from: Date())
                UserDefaults.standard.set(date, forKey: "threeMStrDate")
                threeMStrDate = date
            }
            has3MStr = true
            UserDefaults.standard.set(true, forKey: "has3MStr")
        }
        
        if userStreak > 180 {
            if(!has6MStr) {
                date = dateFormatter.string(from: Date())
                UserDefaults.standard.set(date, forKey: "sixMStrDate")
                sixMStrDate = date
            }
            has6MStr = true
            UserDefaults.standard.set(true, forKey: "has6MStr")
        }
        
        if userStreak > 270 {
            if(!has9MStr) {
                date = dateFormatter.string(from: Date())
                UserDefaults.standard.set(date, forKey: "nineMStrDate")
                nineMStrDate = date
            }
            has9MStr = true
            UserDefaults.standard.set(true, forKey: "has9MStr")
        }
        
        if userStreak > 365 {
            if(!has1YStr) {
                date = dateFormatter.string(from: Date())
                UserDefaults.standard.set(date, forKey: "oneYStrDate")
                oneYStrDate = date
            }
            has1YStr = true
            UserDefaults.standard.set(true, forKey: "has1YStr")
        }
    }
    
    func popUpWindow(screenWidth:CGFloat) {
        popUpVisible = 100.0
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
            popUpVisible = 0.0
            message = ""
        }
    }
    
    var body: some View {
        let screenSize:CGRect = UIScreen.main.bounds
        let screenWidth:CGFloat = screenSize.width
        let screenHeight:CGFloat = screenSize.height
        
        if !showGame {
            ZStack{
                ScrollView{
                    VStack{
                        
                        Button(action: {
                            showGame = true
                        }, label: {
                            Text("Exit")
                        })
                        .font(.system(size: 20, weight: Font.Weight.bold))
                        .padding(7.0)
                        .background(Color(red: 200/255, green: 135/255, blue: 35/255))
                        .foregroundColor(Color.white)
                        .cornerRadius(30.0)
                        .position(x: (0.85)*screenWidth, y:(0.0)*screenHeight)
                        
                        Text("Badge Index")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(Color(red: 200/255, green: 135/255, blue: 35/255))
                        
                        
                        //percent weight loss category
                        VStack{
                            Group {
                                HStack{
                                    
                                    if(has5PC) {
                                        Button(action: {
                                            message = "5% Weight Loss\n\nThis badge was earned on \n \(fivePCDate) \n from losing 5% of your initial body weight."
                                            popUpWindow(screenWidth: screenWidth)
                                        }, label: {
                                            Image("5pc")
                                        })
                                        .buttonStyle(.plain)
                                    }
                                    else {
                                        Image("badge-empty")
                                    }
                                    
                                    if(has7_5PC) {
                                        Button(action: {
                                            message = "7.5% Weight Loss\n\nThis badge was earned on \n \(seven_fivePCDate) \n from losing 7.5% of your initial body weight."
                                            popUpWindow(screenWidth: screenWidth)
                                        }, label: {
                                            Image("7_5pc")
                                        })
                                        .buttonStyle(.plain)
                                    }
                                    else {
                                        Image("badge-empty")
                                    }
                                    
                                }
                                
                                HStack{
                                    if(has10PC) {
                                        Button(action: {
                                            message = "10% Weight Loss\n\nThis badge was earned on \n \(tenPCDate) \n from losing 10% of your initial body weight."
                                            popUpWindow(screenWidth: screenWidth)
                                        }, label: {
                                            Image("10pc")
                                        })
                                        .buttonStyle(.plain)
                                        
                                    }
                                    else {
                                        Image("badge-empty")
                                    }
                                    
                                    if(has12_5PC) {
                                        Button(action: {
                                            message = "12.5% Weight Loss\n\nThis badge was earned on \n \(twelve_fivePCDate) \n from losing 12.5% of your initial body weight."
                                            popUpWindow(screenWidth: screenWidth)
                                        }, label: {
                                            Image("12_5pc")
                                        })
                                        .buttonStyle(.plain)
                                    }
                                    else {
                                        Image("badge-empty")
                                    }
                                    
                                    if(has15PC) {
                                        Button(action: {
                                            message = "15% Weight Loss\n\nThis badge was earned on \n \(fifteenPCDate) \n from losing 15% of your initial body weight."
                                            popUpWindow(screenWidth: screenWidth)
                                        }, label: {
                                            Image("15pc")
                                        })
                                        .buttonStyle(.plain)
                                    }
                                    else {
                                        Image("badge-empty")
                                    }
                                }
                                
                                // % initial weight loss category
                                Button(action: {
                                    message = "Percent Initial Weight Loss\n\nThis badge category is for percent weight loss goals of 5 to 15%. Losing 5 to 15% of your initial body weight can result in lowered blood pressure and cholesterol levels, better heart health, and decreased risks for diabetes and various types of cancer."
                                    popUpWindow(screenWidth: screenWidth)
                                }, label: {
                                    Text("Percent Initial Weight Loss")
                                        .font(.system(size: 20, weight: Font.Weight.bold))
                                        .padding(7.0)
                                        .padding(.horizontal, 10.0)
                                        .background(Color(red: 200/255, green: 135/255, blue: 35/255))
                                        .foregroundColor(Color.white)
                                        .cornerRadius(30.0)
                                    
                                })
                                .padding(.top, 10.0)
                                .padding(.bottom, 30.0)
                            }
                        }
                        
                        Spacer()
                        
                        //daily streak
                        VStack{
                            Group {
                                HStack{
                                    
                                    if(has1WStr) {
                                        Button(action: {
                                            message = "1 Week Streak\n\nThis badge was earned on \n \(oneWStrDate) \n from logging your progress into the app for a week straight."
                                        }, label: {
                                            Image("1week")
                                        })
                                        .buttonStyle(.plain)
                                    }
                                    else {
                                        Image("badge-empty")
                                    }
                                    
                                    if(has1MStr) {
                                        Button(action: {
                                            message = "1 Month Streak\n\nThis badge was earned on \n \(oneMStrDate) \n from logging your progress into the app for a month straight."
                                        }, label: {
                                            Image("1month")
                                        })
                                        .buttonStyle(.plain)
                                    }
                                    else {
                                        Image("badge-empty")
                                    }
                                    
                                    if(has3MStr) {
                                        Button(action: {
                                            message = "3 Month Streak\n\nThis badge was earned on \n \(threeMStrDate) \n from logging your progress into the app for 3 months straight."
                                            popUpWindow(screenWidth: screenWidth)
                                        }, label: {
                                            Image("3month")
                                        })
                                        .buttonStyle(.plain)
                                    }
                                    else {
                                        Image("badge-empty")
                                    }
                                }
                                
                                HStack{
                                    
                                    if(has6MStr) {
                                        Button(action: {
                                            message = "6 Month Streak\n\nThis badge was earned on \n \(sixMStrDate) \n from logging your progress into the app for 6 months straight."
                                            popUpWindow(screenWidth: screenWidth)
                                        }, label: {
                                            Image("6month")
                                        })
                                        .buttonStyle(.plain)
                                    }
                                    else {
                                        Image("badge-empty")
                                    }
                                    
                                    if(has9MStr) {
                                        Button(action: {
                                            message = "9 Month Streak\n\nThis badge was earned on \n \(nineMStrDate) \n from logging your progress into the app for 9 months straight."
                                            popUpWindow(screenWidth: screenWidth)
                                        }, label: {
                                            Image("9month")
                                        })
                                        .buttonStyle(.plain)
                                    }
                                    else {
                                        Image("badge-empty")
                                    }
                                    
                                    if(has1YStr) {
                                        Button(action: {
                                            message = "1 Year Streak\n\nThis badge was earned on \n \(oneYStrDate) \n from logging your progress into the app for 1 year straight."
                                            popUpWindow(screenWidth: screenWidth)
                                        }, label: {
                                            Image("1year")
                                        })
                                        .buttonStyle(.plain)
                                    }
                                    else {
                                        Image("badge-empty")
                                    }
                                }
                                
                                // Daily streak category
                                Button(action: {
                                    message = "Daily Streak\n\nThis badge category is for your daily streak. If you log in and record your food and exercise every day, you can earn a badge for a streak."
                                    popUpWindow(screenWidth: screenWidth)
                                }, label: {
                                    Text("Daily Streak")
                                        .font(.system(size: 20, weight: Font.Weight.bold))
                                        .padding(7.0)
                                        .padding(.horizontal, 10.0)
                                        .background(Color(red: 200/255, green: 135/255, blue: 35/255))
                                        .foregroundColor(Color.white)
                                        .cornerRadius(30.0)
                                    
                                })
                                .padding(.top, 10.0)
                                .padding(.bottom, 30.0)
                                
                            }
                        }
                    }
                    .padding(.top, 20.0)
                    .padding(.bottom, 40.0)
                    
                    Spacer()
                }
                .onAppear {
                    loss()
                    countStreak()
                }
                if(popUpVisible == 100.0) {
                    popUp.badgePopUp(screenWidth: screenWidth, message: message)
                        .transition(.asymmetric(insertion: AnyTransition.scale.animation(.easeInOut(duration: 0.7)), removal: .opacity))
                        .position(x: screenWidth/2, y: screenHeight/2)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity) 
            .background(Color(UIColor(red: 0.957, green: 0.831, blue: 0.502, alpha: 1).cgColor))

        } else {
            MountainView()
        }
    }
    
    struct BadgeView_Previews: PreviewProvider {
        static var previews: some View {
            BadgeView(userStreak: .constant(1))
        }
    }
    
}
