//
//  ContentView.swift
//  TestMountainPage
//
//  Created by Michael Mendel on 9/28/22.
//

import SwiftUI

let mountain_1 = Mountain(monthNumber: 1, worldColor: Color(UIColor(red: 0.871, green: 0.977, blue: 1, alpha: 1).cgColor), clouds: "cloud", hasClouds: true,  decoration1: "tree_snowy_1", decoration2: "tree_snowy_1", decoration3: "snowman", decoration4: "", showDecoration1: true, showDecoration2: true, showDecoration3: true, showDecoration4: false, hasSnow: true, sizeDecoration1: 0.1, sizeDecoration2: 0.07, sizeDecoration3: 0.09, sizeDecoration4: 0.08)
let mountain_2 = Mountain(monthNumber: 2, worldColor: Color(UIColor(red: 1, green: 0.721, blue: 0.721, alpha: 1).cgColor), clouds: "cloud", hasClouds: true,  decoration1: "heart_balloons", decoration2: "teddy_bear", decoration3: "roses", decoration4: "", showDecoration1: true, showDecoration2: true, showDecoration3: true, showDecoration4: false, hasSnow: true, sizeDecoration1: 0.15, sizeDecoration2: 0.11, sizeDecoration3: 0.1, sizeDecoration4: 0.15)
let mountain_3 = Mountain(monthNumber: 3, worldColor: Color(UIColor(red: 0.871, green: 0.977, blue: 1, alpha: 1).cgColor), clouds: "cloud", hasClouds: true,  decoration1: "tree_3", decoration2: "tree_3", decoration3: "skis", decoration4: "", showDecoration1: true, showDecoration2: true, showDecoration3: true, showDecoration4: false, hasSnow: true, sizeDecoration1: 0.11, sizeDecoration2: 0.075, sizeDecoration3: 0.08, sizeDecoration4: 0.08)
let mountain_4 = Mountain(monthNumber: 4, worldColor: Color(UIColor(red: 0.604, green: 0.898, blue: 0.961, alpha: 1).cgColor), clouds: "cloud", hasClouds: true,  decoration1: "spring_tree", decoration2: "spring_tree", decoration3: "orange_flower", decoration4: "flower_bush", showDecoration1: true, showDecoration2: false, showDecoration3: true, showDecoration4: true, hasSnow: false, sizeDecoration1: 0.17, sizeDecoration2: 0.17, sizeDecoration3: 0.07, sizeDecoration4: 0.1)
let mountain_5_not_done = Mountain(monthNumber: 1, worldColor: Color(UIColor(red: 0.871, green: 0.977, blue: 1, alpha: 1).cgColor), clouds: "cloud", hasClouds: true,  decoration1: "tree_snowy_1", decoration2: "tree_snowy_1", decoration3: "snowman", decoration4: "", showDecoration1: true, showDecoration2: true, showDecoration3: true, showDecoration4: false, hasSnow: false, sizeDecoration1: 0.1, sizeDecoration2: 0.1, sizeDecoration3: 0.1, sizeDecoration4: 0.1)
let mountain_6 = Mountain(monthNumber: 6, worldColor: Color(UIColor(red: 0.604, green: 0.898, blue: 0.961, alpha: 1).cgColor), clouds: "cloud", hasClouds: true,  decoration1: "palm_tree", decoration2: "palm_tree", decoration3: "umbrella", decoration4: "beach_ball", showDecoration1: true, showDecoration2: false, showDecoration3: true, showDecoration4: true, hasSnow: false, sizeDecoration1: 0.19, sizeDecoration2: 0.17, sizeDecoration3: 0.11, sizeDecoration4: 0.07)
let mountain_7 = Mountain(monthNumber: 7, worldColor: Color(UIColor(red: 0.508, green: 0.793, blue: 1, alpha: 1).cgColor), clouds: "cloud", hasClouds: false,  decoration1: "algae", decoration2: "algae", decoration3: "coral", decoration4: "coral", showDecoration1: true, showDecoration2: true, showDecoration3: true, showDecoration4: true, hasSnow: false, sizeDecoration1: 0.17, sizeDecoration2: 0.15, sizeDecoration3: 0.15, sizeDecoration4: 0.12)
let mountain_8 = Mountain(monthNumber: 8, worldColor: Color(UIColor(red: 0.604, green: 0.898, blue: 0.961, alpha: 1).cgColor), clouds: "cloud", hasClouds: true,  decoration1: "tree_8", decoration2: "tree_8", decoration3: "rock_large", decoration4: "rock_small", showDecoration1: true, showDecoration2: true, showDecoration3: true, showDecoration4: true, hasSnow: false, sizeDecoration1: 0.14, sizeDecoration2: 0.12, sizeDecoration3: 0.1, sizeDecoration4: 0.08)
let mountain_9 = Mountain(monthNumber: 9, worldColor: Color(UIColor(red: 1, green: 0.987, blue: 0.683, alpha: 1).cgColor), clouds: "cloud", hasClouds: true,  decoration1: "tree_9", decoration2: "tree_9", decoration3: "pumpkin_9", decoration4: "leaves_9", showDecoration1: true, showDecoration2: true, showDecoration3: true, showDecoration4: true, hasSnow: false, sizeDecoration1: 0.15, sizeDecoration2: 0.1, sizeDecoration3: 0.1, sizeDecoration4: 0.12)
let mountain_10 = Mountain(monthNumber: 10, worldColor: Color(UIColor(red: 0.612, green: 0.153, blue: 0.686, alpha: 1).cgColor), clouds: "cloud_grey", hasClouds: true,  decoration1: "tree_halloween", decoration2: "tree_halloween", decoration3: "ghost", decoration4: "pumpkin_halloween", showDecoration1: true, showDecoration2: false, showDecoration3: true, showDecoration4: true, hasSnow: false, sizeDecoration1: 0.19, sizeDecoration2: 0.17, sizeDecoration3: 0.1, sizeDecoration4: 0.075)
let mountain_11 = Mountain(monthNumber: 11, worldColor: Color(UIColor(red: 1, green: 0.987, blue: 0.683, alpha: 1).cgColor), clouds: "cloud", hasClouds: true,  decoration1: "tree_11", decoration2: "tree_11", decoration3: "turkey", decoration4: "", showDecoration1: true, showDecoration2: true, showDecoration3: true, showDecoration4: false, hasSnow: false, sizeDecoration1: 0.17, sizeDecoration2: 0.11, sizeDecoration3: 0.1, sizeDecoration4: 0.1)
let mountain_12 = Mountain(monthNumber: 12, worldColor: Color(UIColor(red: 0.871, green: 0.977, blue: 1, alpha: 1).cgColor), clouds: "cloud", hasClouds: true,  decoration1: "christmas_tree", decoration2: "presents_1", decoration3: "reindeer", decoration4: "presents_2", showDecoration1: true, showDecoration2: true, showDecoration3: true, showDecoration4: true, hasSnow: true, sizeDecoration1: 0.14, sizeDecoration2: 0.12, sizeDecoration3: 0.09, sizeDecoration4: 0.12)

let mountains: [Mountain] = [
    mountain_1, mountain_2, mountain_3, mountain_4, mountain_5_not_done, mountain_6,
    mountain_7, mountain_8, mountain_9, mountain_10, mountain_11, mountain_12
]

struct MountainView: View {
    @State var mountainNum:Int = UserDefaults.standard.integer(forKey: "mountainNum") != nil ? UserDefaults.standard.integer(forKey: "mountainNum") : 8
    @State var mountain:Mountain = mountains[8-1]
    @State var characterPosition:Int = UserDefaults.standard.integer(forKey: "characterPosition") != nil ? UserDefaults.standard.integer(forKey: "characterPosition") : -1
    @State var tempCharacterPosition:Int = UserDefaults.standard.integer(forKey: "tempCharacterPosition") != nil ? UserDefaults.standard.integer(forKey: "tempCharacterPosition") : -1
    @State var starMaker:Int = UserDefaults.standard.integer(forKey: "starMaker") != nil ? UserDefaults.standard.integer(forKey: "starMaker") : 0
    @State var hasStars:Bool = UserDefaults.standard.bool(forKey: "hasStars") != nil ? UserDefaults.standard.bool(forKey: "hasStars") : false
    @State var todaysProgressPercent:Int = UserDefaults.standard.integer(forKey: "todaysProgressPercent") != nil ? UserDefaults.standard.integer(forKey: "todaysProgressPercent") : 0
    @State var todaysExercise:Bool = UserDefaults.standard.bool(forKey: "todaysExercise") != nil ? UserDefaults.standard.bool(forKey: "todaysExercise") : false
    @State var todaysSteps:Int = UserDefaults.standard.integer(forKey: "todaysSteps") != nil ? UserDefaults.standard.integer(forKey: "todaysSteps") : 0
    @State var prevTodaysSteps:Int = UserDefaults.standard.integer(forKey: "prevTodaysSteps") != nil ? UserDefaults.standard.integer(forKey: "prevTodaysSteps") : 0
    @State var day:Int = UserDefaults.standard.integer(forKey: "day") != nil ? UserDefaults.standard.integer(forKey: "day") : 0
    @State var userStreak:Int = UserDefaults.standard.integer(forKey: "userStreak") != nil ? UserDefaults.standard.integer(forKey: "userStreak") : 1
    @State var startStreak:Date = UserDefaults.standard.object(forKey: "startStreak") != nil ? UserDefaults.standard.object(forKey: "startStreak") as! Date : Date()
    @State var endStreak:Date = UserDefaults.standard.object(forKey: "endStreak") != nil ? UserDefaults.standard.object(forKey: "endStreak") as! Date : Date()
    @State var confettiVisible:Double = 0.0
    @State var popUpVisible:Double = 0.0
    @State private var showGame = true
    
    
    // increments position of character
    func moveCharacter(){
        if(characterPosition == -1){
            characterPosition = getStartIndex()
            UserDefaults.standard.set(characterPosition, forKey: "characterPosition")
        }
        if(tempCharacterPosition == -1){
            tempCharacterPosition = getStartIndex()
            UserDefaults.standard.set(tempCharacterPosition, forKey: "tempCharacterPosition")
        }
        
        let amountToMove = todaysSteps
        if(tempCharacterPosition + amountToMove <= 154){
            tempCharacterPosition = characterPosition + amountToMove
        }else{
            tempCharacterPosition = 154
        }
        UserDefaults.standard.set(tempCharacterPosition, forKey: "tempCharacterPosition")
        //print(tempCharacterPosition)
    }
    
    func subtract10(){
        if(todaysProgressPercent >= 10){
            todaysProgressPercent -= 10
        }else{
            todaysProgressPercent = 0
        }
        calculateSteps()
        UserDefaults.standard.set(todaysProgressPercent, forKey: "todaysProgressPercent")
    }
    
    func add10(){
        if(todaysProgressPercent <= 90){
            todaysProgressPercent += 10
        }else{
            todaysProgressPercent = 100
        }
        calculateSteps()
        UserDefaults.standard.set(todaysProgressPercent, forKey: "todaysProgressPercent")
    }
    
    func calculateSteps(){
        // set previous steps to know if we made progress or regressed
        prevTodaysSteps = todaysSteps
        
        // calculate progress
        if(todaysProgressPercent < 50){
            todaysSteps = 0
        }else if(todaysProgressPercent >= 50 && todaysProgressPercent < 60){
            todaysSteps = 1
        }else if(todaysProgressPercent >= 60 && todaysProgressPercent < 70){
            todaysSteps = 2
        }else if(todaysProgressPercent >= 70 && todaysProgressPercent < 80){
            todaysSteps = 3
        }else if(todaysProgressPercent >= 80){
            todaysSteps = 4
        }
        
        if(todaysExercise){
            todaysSteps += 1
        }
        UserDefaults.standard.set(todaysSteps, forKey: "todaysSteps")
        UserDefaults.standard.set(prevTodaysSteps, forKey: "prevTodaysSteps")
        
        moveCharacter()
    }
    
    func toggleExercise(){
        todaysExercise = !todaysExercise
        calculateSteps()
        UserDefaults.standard.set(todaysExercise, forKey: "todaysExercise")
    }
    
    func submitDay(){
        popUpVisible = 100.0
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
            popUpVisible = 0.0
            characterPosition = tempCharacterPosition
            todaysSteps = 0
            prevTodaysSteps = 0
            todaysExercise = false
            todaysProgressPercent = 0
            UserDefaults.standard.set(characterPosition, forKey: "characterPosition")
            UserDefaults.standard.set(todaysSteps, forKey: "todaysSteps")
            UserDefaults.standard.set(prevTodaysSteps, forKey: "prevTodaysSteps")
            UserDefaults.standard.set(todaysExercise, forKey: "todaysExercise")
            UserDefaults.standard.set(todaysProgressPercent, forKey: "todaysProgressPercent")
            
            print("Streak: \(getStreak())")
        }
    }
    
    func resetMonth(){
        characterPosition = getStartIndex()
        tempCharacterPosition = getStartIndex()
        todaysSteps = 0
        prevTodaysSteps = 0
        todaysExercise = false
        todaysProgressPercent = 0
        starMaker = 0
        hasStars = false
        UserDefaults.standard.set(characterPosition, forKey: "characterPosition")
        UserDefaults.standard.set(tempCharacterPosition, forKey: "tempCharacterPosition")
        UserDefaults.standard.set(todaysSteps, forKey: "todaysSteps")
        UserDefaults.standard.set(prevTodaysSteps, forKey: "prevTodaysSteps")
        UserDefaults.standard.set(todaysExercise, forKey: "todaysExercise")
        UserDefaults.standard.set(todaysProgressPercent, forKey: "todaysProgressPercent")
        UserDefaults.standard.set(starMaker, forKey: "starMaker")
        UserDefaults.standard.set(hasStars, forKey: "hasStars")
    }
    
    func makePercentage() -> some View{
        let t = Text(String(todaysProgressPercent)+"%")
                    .frame(maxWidth: .infinity)
                    .padding(7)
                    .foregroundColor(Color.white)
                    .font(.system(size: 20, weight: Font.Weight.bold))
        
        if(todaysProgressPercent < 50){
            return t
                    .background(Color.red)
                    .cornerRadius(30)
        }else if(todaysProgressPercent >= 50 && todaysProgressPercent < 60){
            return t
                    .background(Color.pink)
                    .cornerRadius(30)
        }else if(todaysProgressPercent >= 60 && todaysProgressPercent < 70){
            return t
                    .background(Color.orange)
                    .cornerRadius(30)
        }else if(todaysProgressPercent >= 70 && todaysProgressPercent < 80){
            return t
                    .background(Color.yellow)
                    .cornerRadius(30)
        }else{
            return t
                    .background(Color.green)
                    .cornerRadius(30)
        }
    }
    
    func makeExerciseButton() -> some View{
        if(todaysExercise){
            return Button("Exercise", action: toggleExercise)
                .frame(maxWidth: .infinity)
                .padding(6)
                .foregroundColor(Color.white)
                .font(.system(size: 20, weight: Font.Weight.bold))
                .background(Color.green)
                .cornerRadius(30)
        }
        return Button("Exercise", action: toggleExercise)
                .frame(maxWidth: .infinity)
                .padding(6)
                .foregroundColor(Color.white)
                .font(.system(size: 20, weight: Font.Weight.bold))
                .background(Color.red)
                .cornerRadius(30)
    }
    
    func makeStars(){
        if(tempCharacterPosition > 12 - 1 && !hasStars){
            
            func loop(times: Int) {
                var i = 0

                func nextIteration() {
                    if i < times {
                        i += 1
                        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(50)) {
                            starMaker += 1
                            UserDefaults.standard.set(starMaker, forKey: "starMaker")
                            nextIteration()
                        }
                    }
                }
                nextIteration()
            }
            loop(times: 154)
            hasStars = true
            UserDefaults.standard.set(hasStars, forKey: "hasStars")
        }
        // reset when back to 0
        if(characterPosition == 0){
            starMaker = 0
            hasStars = false
            UserDefaults.standard.set(starMaker, forKey: "starMaker")
            UserDefaults.standard.set(hasStars, forKey: "hasStars")
        }
    }
    
    func getStartIndex() -> Int{
        let days = getDaysInMonth()
        let startIndex = ((31 - days) * 5) - 1
        return startIndex
    }
    
    func getDaysInMonth() -> Int{
        let calendar = Calendar.current
        let date = Date()
        // Calculate start and end of the current year (or month with `.month`):
        let interval = calendar.dateInterval(of: .month, for: date)! //change year it will no of days in a year , change it to month it will give no of days in a current month
        // Compute difference in days:
        let days = calendar.dateComponents([.day], from: interval.start, to: interval.end).day!
        return days
    }
    
    func getStreak() -> Int {
        let calendar = Calendar.current
        var start = calendar.startOfDay(for: startStreak)
        var end = calendar.startOfDay(for: endStreak)
        let today = calendar.startOfDay(for: Date())
        let gap = calendar.dateComponents([.day], from: end, to: today).day!
        let streak:Int
        
        
        // if missed a day, restart the streak
        if gap >= 2 {
            startStreak = UserDefaults.standard.object(forKey: "startStreak") != nil ? UserDefaults.standard.object(forKey: "startStreak") as! Date : Date()
            start = calendar.startOfDay(for: startStreak)
        }
        
        endStreak = UserDefaults.standard.object(forKey: "endStreak") != nil ? UserDefaults.standard.object(forKey: "endStreak") as! Date : Date()
        end = calendar.startOfDay(for: endStreak)
        
        streak = calendar.dateComponents([.day], from: start, to: end).day! + 1
        UserDefaults.standard.set(streak, forKey: "userStreak")
        userStreak = streak
        
        return userStreak
    }
    
    func showConfetti(){
        if(tempCharacterPosition > 15 - 1){
            confettiVisible = 100.0
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
                   confettiVisible = 0.0
           }
        }
    }

    func hideImageAfterTime(time: CFTimeInterval , imageView: UIImageView) {
        DispatchQueue.main.asyncAfter(deadline: .now() + time) {
          imageView.isHidden = true
        }
      }
    
    func makePath(imageName:String, screenWidth:CGFloat, screenHeight:CGFloat) -> some View{
        let dimensions:String = "9:19.5"
        if (dimensions == "9:16"){
            return Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: screenWidth * 0.905)
                    .position(x: (screenWidth/2 - (0.02)*(screenWidth)),y: screenHeight/2-(0.0455)*(screenHeight))
        }else if(dimensions == "9:19.5"){
            return Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: screenWidth * 0.90)
                    .position(x: (screenWidth/2 - (0.02)*(screenWidth)),y: screenHeight/2-(0.043)*(screenHeight))
        }else if(dimensions == "3:4"){
            return Image(imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: screenWidth * 0.10)
                        .position(x: (screenWidth/2 - (0.02)*(screenWidth)),y: screenHeight/2-(0.043)*(screenHeight))
        }
        
        return Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: screenWidth * 0.90)
                    .position(x: (screenWidth/2 - (0.02)*(screenWidth)),y: screenHeight/2-(0.043)*(screenHeight))
    }
    
    func calculateScreenProportion(screenWidth: CGFloat, screenHeight: CGFloat) -> String{
        let screen9_19:Double = 0.4615
        let screen9_16:Double = 0.5625
        let screen3_4:Double = 0.75
        let screenProportion = screenWidth/screenHeight
        var proportion = "9:19.5"
        if((abs(screenProportion - screen9_19) < abs(screenProportion - screen9_16))
           && (abs(screenProportion - screen9_19) < abs(screenProportion - screen3_4))){
            proportion = "9:19.5"
        }else if((abs(screenProportion - screen9_16) < abs(screenProportion - screen9_19))
                 && (abs(screenProportion - screen9_16) < abs(screenProportion - screen3_4))){
            proportion = "9:16"
        }else if((abs(screenProportion - screen3_4) < abs(screenProportion - screen9_19))
                 && (abs(screenProportion - screen3_4) < abs(screenProportion - screen9_16))){
            proportion = "3:4"
        }
        return proportion
    }
    
    func changeTheme(){
        if(mountainNum + 1 <= 12){
            mountainNum = mountainNum + 1
        }else{
            mountainNum = 1
        }
        UserDefaults.standard.set(mountainNum, forKey: "mountainNum")
        mountain = mountains[mountainNum - 1]
    }
    
    
    func getMonthNumber() -> Int{
        let date = Date()
        let calendarDate = Calendar.current.dateComponents([.day, .year, .month], from: date)
        let month = (Int(calendarDate.month ?? 1))
        mountainNum = month
        UserDefaults.standard.set(mountainNum, forKey: "mountainNum")
        return month
    }
    
    func getMountain() -> Mountain{
        let monthNum = getMonthNumber()
        return  mountains[monthNum - 1]
    }
    
    init(){
        _mountain = State(initialValue: getMountain())
    }
    
    var body: some View {
        
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth:CGFloat = screenSize.width
        let screenHeight:CGFloat = screenSize.height
        let screenProportion:String = calculateScreenProportion(screenWidth: screenWidth, screenHeight: screenHeight)
        
        if(showGame){
            VStack {
                withAnimation{
                    ZStack{
                        Image("Template")
                            .resizable()
                            .scaledToFill()
                            .position(x: screenWidth/2 ,y: screenHeight/2 - (0.026)*(screenHeight) )
                            .opacity(0.0)
                        
                        // actual mountain
                        Group{
                            if(mountain.hasClouds){
                                CloudView(cloudName: $mountain.clouds)
                                    .opacity(100.0)
                            }
                            
                            Image(mountain.background)
                                .resizable()
                                .scaledToFit()
                                .position(x: screenWidth/2 ,y: screenHeight/2 - (0.041)*(screenHeight) )
                                .opacity(100.0)
                            Image(mountain.foreground)
                                .resizable()
                                .scaledToFit()
                                .frame(width: screenWidth * 0.93)
                                .position(x: screenWidth/2 - (0.025)*(screenWidth),y: screenHeight/2-(0.002)*(screenHeight))
                                .opacity(100.0)

                            makePath(imageName: mountain.path, screenWidth: screenWidth, screenHeight: screenHeight)
                                .opacity(100.0)

                            StepsView(completedStepsNum: $tempCharacterPosition, starMaker: $starMaker, completedStep: $mountain.completedStep, completedStarStep: $mountain.completedStarStep, uncompletedStep: $mountain.uncompletedStep, uncompletedStarStep: $mountain.uncompletedStarStep)
                                .onChange(of: tempCharacterPosition){ newValue in
                                    makeStars()
                                }
                                .opacity(100.0)

                            DecorationView(decoration1: $mountain.decoration1, showDecoration1: $mountain.showDecoration1, sizeDecoration1: $mountain.sizeDecoration1, decoration2: $mountain.decoration2, showDecoration2: $mountain.showDecoration2, sizeDecoration2: $mountain.sizeDecoration2, decoration3: $mountain.decoration3, showDecoration3: $mountain.showDecoration3, sizeDecoration3: $mountain.sizeDecoration3, decoration4: $mountain.decoration4, showDecoration4: $mountain.showDecoration4, sizeDecoration4: $mountain.sizeDecoration4)

                            CharacterView(characterPosition: $tempCharacterPosition)
                                .opacity(100.0)
                        }
                        
                        GIFView("confetti1")
                            .scaleEffect(x: 2.0, y: 2.0, anchor: UnitPoint(x: 0.0, y: 0.0))
                            .position(x: screenWidth/2, y:screenHeight/2 - (0.1)*screenHeight)
                            .opacity(confettiVisible)
                            .onChange(of: tempCharacterPosition){ newValue in
                                if(todaysSteps >= prevTodaysSteps){
                                    showConfetti()
                                }
                            }
                        if (popUpVisible == 100.0){
                            PopUpMessage(todaysProgressPercent: $todaysProgressPercent)
                                .transition(.asymmetric(insertion: AnyTransition.scale.animation(.easeInOut(duration: 0.7)), removal: .opacity))
                        }

                        Button(action: {
                            showGame = false
                        }, label: {
                            Text("Badges")
                        })
                            .padding(7)
                            .background(Color(UIColor(red: 0.957, green: 0.831, blue: 0.502, alpha: 1).cgColor))
                            .foregroundColor(Color.white)
                            .font(.system(size: 20, weight: Font.Weight.bold))
                            .cornerRadius(30)
                            .position(x: (0.85)*screenWidth, y:(0.03)*screenHeight)
                        
                        Button(action: {
                            changeTheme()
                        }, label: {
                            Text("Theme")
                        })
                            .padding(7)
                            .background(Color.blue)
                            .foregroundColor(Color.white)
                            .font(.system(size: 20, weight: Font.Weight.bold))
                            .cornerRadius(30)
                            .position(x: (0.15)*screenWidth, y:(0.03)*screenHeight)
                        
                    }
                    .animation(Animation.easeInOut.speed(1), value: tempCharacterPosition)
                }
                .position(x: screenWidth/2 ,y: screenHeight/2 - (0.13)*(screenHeight) )
                
                VStack{
                    HStack{
                        Button("-10",action: subtract10)
                            .frame(maxWidth: .infinity)
                            .padding(7)
                            .foregroundColor(Color.white)
                            .font(.system(size: 20, weight: Font.Weight.bold))
                            .background(Color.blue)
                            .cornerRadius(30)
                        makePercentage()
                        Button("+10", action: add10)
                            .frame(maxWidth: .infinity)
                            .padding(7)
                            .foregroundColor(Color.white)
                            .font(.system(size: 20, weight: Font.Weight.bold))
                            .background(Color.blue)
                            .cornerRadius(30)
                        makeExerciseButton()
                    }
                    HStack{
                        Button("Submit day", action: submitDay)
                            .frame(maxWidth: .infinity)
                            .padding(7)
                            .foregroundColor(Color.white)
                            .font(.system(size: 20, weight: Font.Weight.bold))
                            .background(Color.blue)
                            .cornerRadius(30)
                        
                            Button("Reset Month", action: resetMonth)
                            .frame(maxWidth: .infinity)
                            .padding(7)
                            .foregroundColor(Color.white)
                            .font(.system(size: 20, weight: Font.Weight.bold))
                            .background(Color.blue)
                            .cornerRadius(30)
                    }
                }
                .padding(10)
                .background(Color.black)
            }
            .background(mountain.worldColor)
        }
        else{
            BadgeView(userStreak: self.$userStreak)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MountainView()
            .previewDevice("iPhone 12 mini")
//            .previewDevice("iPhone 8 Plus")
//            .previewDevice("iPad (9th generation)")
    }
}
