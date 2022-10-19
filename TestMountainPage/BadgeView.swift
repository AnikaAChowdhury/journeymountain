//
//  BadgeView.swift
//  badgepage
//
//  Created by Monique Huang on 10/9/22.
//

import SwiftUI

struct BadgeView: View {
    
    @State private var showAlertPC = false
    @State private var showAlert5PC = false
    @State private var showAlert7_5PC = false
    @State private var showAlert10PC = false
    @State private var showAlert12_5PC = false
    @State private var showAlert15PC = false
    @State private var showAlertStr = false
    @State private var showAlert1WStr = false
    @State private var showAlert1MStr = false
    @State private var showAlert3MStr = false
    @State private var showAlert6MStr = false
    @State private var showAlert9MStr = false
    @State private var showAlert1YStr = false
    
    //change to userDefaults value
    @State var startWeight:Double = 200
    @State var currWeight:Double =  180
    @State private var lost5PC = false
    @State private var lost7_5PC = false
    @State private var lost10PC = false
    @State private var lost12_5PC = false
    @State private var lost15PC = false
    
    //pull from mountainview val
    @State var streak = 120
    @State private var oneWStr = false
    @State private var oneMStr = false
    @State private var threeMStr = false
    @State private var sixMStr = false
    @State private var nineMStr = false
    @State private var oneYStr = false
    
    @State private var showGame = false
    
    func loss() {
        if currWeight <= startWeight*0.95 {
            lost5PC = true
        }
        if currWeight <= startWeight*0.925 {
            lost7_5PC = true
        }
        if currWeight <= startWeight*0.9 {
            lost10PC = true
        }
        if currWeight <= startWeight*0.875 {
            lost12_5PC = true
        }
        if currWeight <= startWeight*0.85 {
            lost15PC = true
        }
    }
    
    func countStreak() {
        if streak >= 7 {
            oneWStr = true
        }
        if streak >= 30 {
            oneMStr = true
        }
        if streak >= 90 {
            threeMStr = true
        }
        if streak > 180 {
            sixMStr = true
        }
        if streak > 270 {
            nineMStr = true
        }
        if streak > 365 {
            oneYStr = true;
        }
    }
    
    
    var body: some View {
        let screenSize: CGRect = UIScreen.main.bounds
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
                            
                            
                            HStack{
                                
                                if(lost5PC) {
                                    Button(action: {
                                        showAlert5PC = true
                                    }, label: {
                                        Image("5pc")
                                    })
                                    .buttonStyle(.plain)
                                    .alert(isPresented: $showAlert5PC) {
                                        Alert(
                                            title: Text("5% Weight Loss"),
                                            message: Text("This badge was earned on \n DD/MM/YYYY \n from losing 5% of your initial body weight."),
                                            dismissButton: .cancel(Text("Close"))
                                        )
                                    }
                                }
                                else {
                                    Image("badge-empty")
                                }
                                
                                if(lost7_5PC) {
                                    Button(action: {
                                        showAlert7_5PC = true
                                    }, label: {
                                        Image("7_5pc")
                                    })
                                    .buttonStyle(.plain)
                                    .alert(isPresented: $showAlert7_5PC) {
                                        Alert(
                                            title: Text("7.5% Weight Loss"),
                                            message: Text("This badge was earned on \n DD/MM/YYYY \n from losing 7.5% of your initial body weight."),
                                            dismissButton: .cancel(Text("Close"))
                                        )
                                    }
                                }
                                else {
                                    Image("badge-empty")
                                }
                                
                                if(lost10PC) {
                                    Button(action: {
                                        showAlert10PC = true
                                    }, label: {
                                        Image("10pc")
                                    })
                                    .buttonStyle(.plain)
                                    .alert(isPresented: $showAlert10PC) {
                                        Alert(
                                            title: Text("10% Weight Loss"),
                                            message: Text("This badge was earned on \n DD/MM/YYYY \n from losing 10% of your initial body weight."),
                                            dismissButton: .cancel(Text("Close"))
                                        )
                                    }
                                }
                                else {
                                    Image("badge-empty")
                                }
                                
                            }
                            
                            HStack{
                                
                                if(lost12_5PC) {
                                    Button(action: {
                                        showAlert12_5PC = true
                                    }, label: {
                                        Image("12_5pc")
                                    })
                                    .buttonStyle(.plain)
                                    .alert(isPresented: $showAlert12_5PC) {
                                        Alert(
                                            title: Text("12.5% Weight Loss"),
                                            message: Text("This badge was earned on \n DD/MM/YYYY \n from losing 12.5% of your initial body weight."),
                                            dismissButton: .cancel(Text("Close"))
                                        )
                                    }
                                }
                                else {
                                    Image("badge-empty")
                                }
                                
                                if(lost15PC) {
                                    Button(action: {
                                        showAlert15PC = true
                                    }, label: {
                                        Image("15pc")
                                    })
                                    .buttonStyle(.plain)
                                    .alert(isPresented: $showAlert12_5PC) {
                                        Alert(
                                            title: Text("15% Weight Loss"),
                                            message: Text("This badge was earned on \n DD/MM/YYYY \n from losing 15% of your initial body weight."),
                                            dismissButton: .cancel(Text("Close"))
                                        )
                                    }
                                }
                                else {
                                    Image("badge-empty")
                                }
                            }
                            
                            // % initial weight loss category
                            Button(action: {
                                showAlertPC = true
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
                            .alert(isPresented: $showAlertPC) {
                                Alert(title: Text("Percent Initial Weight Loss"),
                                      message: Text("This badge category is for percent weight loss goals of 5 to 15%. Losing 5 to 15% of your initial body weight can result in lower blood pressure and cholesterol levels, better heart health, and decreased risks for diabetes and various types of cancer."),
                                      dismissButton: .cancel(Text("Close"))
                                )
                            }
                            
                        }
                        
                        Spacer()
                        
                        //daily streak
                        VStack{
                            HStack{
                                if(oneWStr) {
                                    Button(action: {
                                        showAlert1WStr = true
                                    }, label: {
                                        Image("1week")
                                    })
                                    .buttonStyle(.plain)
                                    .alert(isPresented: $showAlert1WStr) {
                                        Alert(
                                            title: Text("1 Week Streak"),
                                            message: Text("This badge was earned on \n DD/MM/YYYY \n from logging your progress into the app for a week straight."),
                                            dismissButton: .cancel(Text("Close"))
                                        )
                                    }
                                }
                                else {
                                    Image("badge-empty")
                                }
                                
                                if(oneMStr) {
                                    Button(action: {
                                        showAlert1MStr = true
                                    }, label: {
                                        Image("1month")
                                    })
                                    .buttonStyle(.plain)
                                    .alert(isPresented: $showAlert1MStr) {
                                        Alert(
                                            title: Text("1 Month Streak"),
                                            message: Text("This badge was earned on \n DD/MM/YYYY \n from logging your progress into the app for a month straight."),
                                            dismissButton: .cancel(Text("Close"))
                                        )
                                    }
                                }
                                else {
                                    Image("badge-empty")
                                }
                                
                                if(threeMStr) {
                                    Button(action: {
                                        showAlert3MStr = true
                                    }, label: {
                                        Image("3month")
                                    })
                                    .buttonStyle(.plain)
                                    .alert(isPresented: $showAlert3MStr) {
                                        Alert(
                                            title: Text("3 Month Streak"),
                                            message: Text("This badge was earned on \n DD/MM/YYYY \n from logging your progress into the app for 3 months straight."),
                                            dismissButton: .cancel(Text("Close"))
                                        )
                                    }
                                }
                                else {
                                    Image("badge-empty")
                                }
                            }
                            
                            HStack{
                                
                                if(sixMStr) {
                                    Button(action: {
                                        showAlert6MStr = true
                                    }, label: {
                                        Image("6month")
                                    })
                                    .buttonStyle(.plain)
                                    .alert(isPresented: $showAlert6MStr) {
                                        Alert(
                                            title: Text("6 Month Streak"),
                                            message: Text("This badge was earned on \n DD/MM/YYYY \n from logging your progress into the app for 6 months straight."),
                                            dismissButton: .cancel(Text("Close"))
                                        )
                                    }
                                }
                                else {
                                    Image("badge-empty")
                                }
                                
                                if(nineMStr) {
                                    Button(action: {
                                        showAlert9MStr = true
                                    }, label: {
                                        Image("9month")
                                    })
                                    .buttonStyle(.plain)
                                    .alert(isPresented: $showAlert9MStr) {
                                        Alert(
                                            title: Text("9 Month Streak"),
                                            message: Text("This badge was earned on \n DD/MM/YYYY \n from logging your progress into the app for 9 months straight."),
                                            dismissButton: .cancel(Text("Close"))
                                        )
                                    }
                                }
                                else {
                                    Image("badge-empty")
                                }
                                
                                if(oneYStr) {
                                    Button(action: {
                                        showAlert1YStr = true
                                    }, label: {
                                        Image("1year")
                                    })
                                    .buttonStyle(.plain)
                                    .alert(isPresented: $showAlert1YStr) {
                                        Alert(
                                            title: Text("1 Year Streak"),
                                            message: Text("This badge was earned on \n DD/MM/YYYY \n from logging your progress into the app for 1 Year straight."),
                                            dismissButton: .cancel(Text("Close"))
                                        )
                                    }
                                }
                                else {
                                    Image("badge-empty")
                                }
                            }
                            
                            // Daily streak category
                            Button(action: {
                                showAlertStr = true
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
                            .alert(isPresented: $showAlertStr) {
                                Alert(title: Text("Daily Streak"),
                                      message: Text("This badge category is for your daily streak. If you log in and record your food and exercise every day, you can earn a badge for a streak."),
                                      dismissButton: .cancel(Text("Close"))
                                )
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
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity) 
            .background(Color(UIColor(red: 0.957, green: 0.831, blue: 0.502, alpha: 1).cgColor))

        } else {
            MountainView()
        }
    }
    
    struct BadgeView_Previews: PreviewProvider {
        static var previews: some View {
            BadgeView()
        }
    }
    
}
