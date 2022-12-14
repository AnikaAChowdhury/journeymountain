//
//  ContentView.swift
//  TestMountainPage
//
//  Created by Michael Mendel on 9/28/22.
//

import SwiftUI
import UserNotifications

let mountain_1 = Mountain(monthNumber: 1, worldColor: Color(UIColor(red: 0.871, green: 0.977, blue: 1, alpha: 1).cgColor), clouds: "cloud", hasClouds: true,  decoration1: "tree_snowy_1", decoration2: "tree_snowy_1", decoration3: "snowman", decoration4: "", showDecoration1: true, showDecoration2: true, showDecoration3: true, showDecoration4: false, hasSnow: true, sizeDecoration1: 0.1, sizeDecoration2: 0.07, sizeDecoration3: 0.09, sizeDecoration4: 0.08)
let mountain_2 = Mountain(monthNumber: 2, worldColor: Color(UIColor(red: 1, green: 0.721, blue: 0.721, alpha: 1).cgColor), clouds: "cloud", hasClouds: true,  decoration1: "heart_balloons", decoration2: "teddy_bear", decoration3: "roses", decoration4: "", showDecoration1: true, showDecoration2: true, showDecoration3: true, showDecoration4: false, hasSnow: true, sizeDecoration1: 0.15, sizeDecoration2: 0.11, sizeDecoration3: 0.1, sizeDecoration4: 0.15)
let mountain_3 = Mountain(monthNumber: 3, worldColor: Color(UIColor(red: 0.871, green: 0.977, blue: 1, alpha: 1).cgColor), clouds: "cloud", hasClouds: true,  decoration1: "tree_3", decoration2: "tree_3", decoration3: "skis", decoration4: "", showDecoration1: true, showDecoration2: true, showDecoration3: true, showDecoration4: false, hasSnow: true, sizeDecoration1: 0.11, sizeDecoration2: 0.075, sizeDecoration3: 0.08, sizeDecoration4: 0.08)
let mountain_4 = Mountain(monthNumber: 4, worldColor: Color(UIColor(red: 0.604, green: 0.898, blue: 0.961, alpha: 1).cgColor), clouds: "cloud", hasClouds: true,  decoration1: "spring_tree", decoration2: "spring_tree", decoration3: "orange_flower", decoration4: "flower_bush", showDecoration1: true, showDecoration2: false, showDecoration3: true, showDecoration4: true, hasSnow: false, sizeDecoration1: 0.17, sizeDecoration2: 0.17, sizeDecoration3: 0.07, sizeDecoration4: 0.1)
let mountain_5 = Mountain(monthNumber: 5, worldColor: Color(UIColor(red: 0.604, green: 0.898, blue: 0.961, alpha: 1).cgColor), clouds: "cloud", hasClouds: true,  decoration1: "cactus", decoration2: "cactus", decoration3: "tumbleweed", decoration4: "tumbleweed", showDecoration1: true, showDecoration2: false, showDecoration3: true, showDecoration4: true, hasSnow: false, sizeDecoration1: 0.13, sizeDecoration2: 0.09, sizeDecoration3: 0.1, sizeDecoration4: 0.08)
let mountain_6 = Mountain(monthNumber: 6, worldColor: Color(UIColor(red: 0.604, green: 0.898, blue: 0.961, alpha: 1).cgColor), clouds: "cloud", hasClouds: true,  decoration1: "palm_tree", decoration2: "palm_tree", decoration3: "umbrella", decoration4: "beach_ball", showDecoration1: true, showDecoration2: false, showDecoration3: true, showDecoration4: true, hasSnow: false, sizeDecoration1: 0.19, sizeDecoration2: 0.17, sizeDecoration3: 0.11, sizeDecoration4: 0.07)
let mountain_7 = Mountain(monthNumber: 7, worldColor: Color(UIColor(red: 0.508, green: 0.793, blue: 1, alpha: 1).cgColor), clouds: "cloud", hasClouds: false,  decoration1: "algae", decoration2: "algae", decoration3: "coral", decoration4: "coral", showDecoration1: true, showDecoration2: true, showDecoration3: true, showDecoration4: true, hasSnow: false, sizeDecoration1: 0.17, sizeDecoration2: 0.15, sizeDecoration3: 0.15, sizeDecoration4: 0.12,hasFish: true, fish1: "fish1", fish2: "fish2")
let mountain_8 = Mountain(monthNumber: 8, worldColor: Color(UIColor(red: 0.604, green: 0.898, blue: 0.961, alpha: 1).cgColor), clouds: "cloud", hasClouds: true,  decoration1: "tree_8", decoration2: "tree_8", decoration3: "rock_large", decoration4: "rock_small", showDecoration1: true, showDecoration2: true, showDecoration3: true, showDecoration4: true, hasSnow: false, sizeDecoration1: 0.14, sizeDecoration2: 0.12, sizeDecoration3: 0.1, sizeDecoration4: 0.08)
let mountain_9 = Mountain(monthNumber: 9, worldColor: Color(UIColor(red: 1, green: 0.987, blue: 0.683, alpha: 1).cgColor), clouds: "cloud", hasClouds: true,  decoration1: "tree_9", decoration2: "tree_9", decoration3: "pumpkin_9", decoration4: "leaves_9", showDecoration1: true, showDecoration2: true, showDecoration3: true, showDecoration4: true, hasSnow: false, sizeDecoration1: 0.15, sizeDecoration2: 0.1, sizeDecoration3: 0.1, sizeDecoration4: 0.12)
let mountain_10 = Mountain(monthNumber: 10, worldColor: Color(UIColor(red: 0.612, green: 0.153, blue: 0.686, alpha: 1).cgColor), clouds: "cloud_grey", hasClouds: true,  decoration1: "tree_halloween", decoration2: "tree_halloween", decoration3: "ghost", decoration4: "pumpkin_halloween", showDecoration1: true, showDecoration2: false, showDecoration3: true, showDecoration4: true, hasSnow: false, sizeDecoration1: 0.19, sizeDecoration2: 0.17, sizeDecoration3: 0.1, sizeDecoration4: 0.075)
let mountain_11 = Mountain(monthNumber: 11, worldColor: Color(UIColor(red: 1, green: 0.987, blue: 0.683, alpha: 1).cgColor), clouds: "cloud", hasClouds: true,  decoration1: "tree_11", decoration2: "tree_11", decoration3: "turkey", decoration4: "", showDecoration1: true, showDecoration2: true, showDecoration3: true, showDecoration4: false, hasSnow: false, sizeDecoration1: 0.17, sizeDecoration2: 0.11, sizeDecoration3: 0.1, sizeDecoration4: 0.1)
let mountain_12 = Mountain(monthNumber: 12, worldColor: Color(UIColor(red: 0.871, green: 0.977, blue: 1, alpha: 1).cgColor), clouds: "cloud", hasClouds: true,  decoration1: "christmas_tree", decoration2: "presents_1", decoration3: "reindeer", decoration4: "presents_2", showDecoration1: true, showDecoration2: true, showDecoration3: true, showDecoration4: true, hasSnow: true, sizeDecoration1: 0.14, sizeDecoration2: 0.12, sizeDecoration3: 0.09, sizeDecoration4: 0.12)

let mountains: [Mountain] = [
    mountain_1, mountain_2, mountain_3, mountain_4, mountain_5, mountain_6,
    mountain_7, mountain_8, mountain_9, mountain_10, mountain_11, mountain_12
]

struct MountainView: View {
    @Environment(\.scenePhase) var scenePhase
    
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
    @State var userStreak:Int = UserDefaults.standard.integer(forKey: "userStreak") != nil ? UserDefaults.standard.integer(forKey: "userStreak") : 0
    @State var endOfStreak:Date = UserDefaults.standard.object(forKey: "endOfStreak") != nil ? UserDefaults.standard.object(forKey: "endOfStreak") as! Date : Date()
    @State var confettiVisible:Double = 0.0
    @State var popUpVisible:Double = 0.0
    @State var presentBadge:Double = 0.0
    @State var badge:String = ""
    @State var achievement:String = ""
    @State var str:String = ""
    @State var message:String = ""
    @State private var showGame = true
    let notificationCenter = UNUserNotificationCenter.current()
    
    let fixedHeight = 19.5 * 50
    let fixedWidth = 9.0 * 50
    
    // increments position of character
    func moveCharacter(){
        let amountToMove = todaysSteps
        if(tempCharacterPosition + amountToMove <= 154){
            tempCharacterPosition = characterPosition + amountToMove
        }else{
            tempCharacterPosition = 154
        }
        
        
        // if we made progress then play forward sound
        if(todaysSteps > prevTodaysSteps && todaysSteps > 0){
            var rand = Int.random(in: 1..<6)
            switch(rand){
                case 1:
                    playSound(sound: "forward", type: "wav")
                case 2:
                    playSound(sound: "forward2", type: "mp3")
                case 3:
                    playSound(sound: "yay1", type: "mp3")
                case 4:
                    playSound(sound: "yay2", type: "mp3")
                case 5:
                    playSound(sound: "yay3", type: "mp3")
                default:
                    playSound(sound: "forward", type: "wav")
            }
        //else play backwards sound
        }else if(todaysSteps < prevTodaysSteps && prevTodaysSteps > 0){
            playSound(sound: "backwards", type: "wav")
        }
        
        UserDefaults.standard.set(tempCharacterPosition, forKey: "tempCharacterPosition")
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
        print("Streak: \(getStreak())")
        
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
            badgeEarned()
            badgeEarned()
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
            return Button(action: {
                toggleExercise()
            }, label: {
                Text("Exercise")
            })
                .frame(maxWidth: .infinity)
                .padding(6)
                .foregroundColor(Color.white)
                .font(.system(size: 16, weight: Font.Weight.bold))
                .background(Color.green)
                .cornerRadius(30)
        }
        return Button(action: {
            toggleExercise()
        }, label: {
            Text("Exercise")
        })
            .frame(maxWidth: .infinity)
            .padding(6)
            .foregroundColor(Color.white)
            .font(.system(size: 16, weight: Font.Weight.bold))
            .background(Color.red)
            .cornerRadius(30)
    }
    
    func makeStars(){
        if(tempCharacterPosition > 12 - 1 && !hasStars){
            playSound(sound: "stars", type: "mp3")
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
        let end = calendar.startOfDay(for: endOfStreak)
        let today = calendar.startOfDay(for: Date())
        let gap = calendar.dateComponents([.day], from: end, to: today).day!
        
        if userStreak == 0 || gap >= 2 {
            userStreak = 1
            UserDefaults.standard.set(userStreak, forKey: "userStreak")
        }
        
        endOfStreak = Date()
        UserDefaults.standard.set(endOfStreak, forKey: "endOfStreak")
        
        if gap == 1 {
            userStreak = userStreak + 1
            UserDefaults.standard.set(userStreak, forKey: "userStreak")
        }
        
        return userStreak
    }
    
    func badgeEarned() {
        
        playSound(sound: "badge_earned", type: "wav")

        let badgePage = BadgeView(userStreak: self.$userStreak)
        
        badgePage.loss()
        
        if(badgePage.earnPCPopUp) {
            if(badgePage.has5PC) {
                badge = "5pc"
                achievement = "5"
            }
            if(badgePage.has7_5PC) {
                badge = "7_5pc"
                achievement = "7_5"
                
            }
            if(badgePage.has10PC) {
                badge = "10pc"
                achievement = "10"
            }
            if(badgePage.has12_5PC) {
                badge = "12_5pc"
                achievement = "12_5"
            }
            if(badgePage.has15PC) {
                badge = "15pc"
                achievement = "15"
            }
            message = "Congratulations! You've earned this badge for losing \(achievement)% of your initial body weight. Keep up the amazing work!"
            presentBadge = 100.0
        }
        
        badgePage.countStreak()
        
        if(badgePage.earnStrPopUp) {
            if(badgePage.has1DStr) {
                badge = "1day"
                achievement = "1 day"
            }
            if(badgePage.has3DStr) {
                badge = "3day"
                achievement = "3 days in a row"
            }
            if(badgePage.has1WStr) {
                badge = "1week"
                achievement = "1 week"
            }
            if(badgePage.has1MStr) {
                badge = "1month"
                achievement = "1 month"
            }
            if(badgePage.has3MStr) {
                badge = "3month"
                achievement = "3 months"
            }
            if(badgePage.has6MStr) {
                badge = "6month"
                achievement = "6 months"
            }
            if(badgePage.has9MStr) {
                badge = "9month"
                achievement = "9 months"
            }
            if(badgePage.has1YStr) {
                badge = "1year"
                achievement = "1 year"
            }
            message = "Congratulations! You've earned this badge for tracking your health journey for \(achievement). Keep up your daily streak!"
            presentBadge = 100.0
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4)) {
            presentBadge = 0.0
        }
         
    }
    
    func showConfetti(){
        if(tempCharacterPosition > 15 - 1){
            confettiVisible = 100.0
            playSound(sound: "confetti", type: "wav")
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
        print("mountain number: " + String(mountainNum))
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
    
    func makeButtons(screenWidth: CGFloat, screenHeight: CGFloat) -> some View{
        let proportion = calculateScreenProportion(screenWidth: screenWidth, screenHeight: screenHeight)
        
        var scaleX = 1.0
        var scaleY = 1.0
        var positionX = 0.0
        var positionY = 0.0
        
        if(proportion == "9:19.5"){
            scaleX = 1.0
            scaleY = 1.0
            positionX = 0.5
            positionY = 0.95
        }else if(proportion == "9:16"){
            scaleX = 1.0
            scaleY = 1.25
            positionX = 0.5
            positionY = 0.925
        }else if(proportion == "3:4"){
            scaleX = 1.0
            scaleY = 1.5
            positionX = 0.5
            positionY = 0.92
        }
        
        
        return VStack{
            HStack{
                Button(action: {
                    subtract10()
                }, label: {
                    Text("-10")
                })
                    .frame(maxWidth: .infinity)
                    .padding(7)
                    .foregroundColor(Color.white)
                    .font(.system(size: 20, weight: Font.Weight.bold))
                    .background(Color.blue)
                    .cornerRadius(30)
                makePercentage()
                Button(action: {
                    add10()
                }, label: {
                    Text("+10")
                })
                    .frame(maxWidth: .infinity)
                    .padding(7)
                    .foregroundColor(Color.white)
                    .font(.system(size: 20, weight: Font.Weight.bold))
                    .background(Color.blue)
                    .cornerRadius(30)
                makeExerciseButton()
            }
            HStack{
                Button(action: {
                    submitDay()
                }, label: {
                    Text("Submit Day")
                })
                    .frame(maxWidth: .infinity)
                    .padding(7)
                    .foregroundColor(Color.white)
                    .font(.system(size: 20, weight: Font.Weight.bold))
                    .background(Color.blue)
                    .cornerRadius(30)
                
                Button(action: {
                    resetMonth()
                }, label: {
                    Text("Reset Month")
                })
                    .frame(maxWidth: .infinity)
                    .padding(7)
                    .foregroundColor(Color.white)
                    .font(.system(size: 20, weight: Font.Weight.bold))
                    .background(Color.blue)
                    .cornerRadius(30)
            }
        }
        .padding(10)
        .frame(width: fixedWidth, height: fixedHeight * 0.15 * scaleY)
        .scaleEffect(x: scaleX, y: scaleY)
        .position(x:(positionX * fixedWidth),y: fixedHeight - (positionY * fixedHeight))
        .background(Color.black)
    }
    
    func makeMountain(screenWidth: CGFloat, screenHeight: CGFloat) -> some View{
        let proportion = calculateScreenProportion(screenWidth: screenWidth, screenHeight: screenHeight)
        
        var scaleX_decorations = 1.09
        var scaleY_decorations = 1.09
        
        var scaleX_character = 1.0
        var scaleY_character = 1.0
        var positionX_character = 0.005
        var positionY_character = 0.466
        
        var scaleX_clouds = 1.0
        var scaleY_clouds = 1.0
        var positionX_clouds = 0.52
        var positionY_clouds = 0.5
        
        
        var scaleX_fish = 1.0
        var scaleY_fish = 1.0
        var positionX_fish = 0.0
        var positionY_fish = 0.52
        
        var scaleX_buttons = 1.0
        var scaleY_buttons = 1.0
        var positionX_buttons = 0.15
        var positionY_buttons = 0.93
        
        var scaleX_mountain = 1.0
        var scaleY_mountain = 1.0
        var positionX_mountain = 0.0
        var positionY_mountain = 0.0
        
        var scaleX_popUp = 1.0
        var scaleY_popUp = 1.0


        if(proportion == "9:19.5"){
            scaleX_decorations = 1.09
            scaleY_decorations = 1.09
            scaleX_character = 1.0
            scaleY_character = 1.0
            positionX_character = 0.005
            positionY_character = 0.466
            scaleX_clouds = 1.0
            scaleY_clouds = 1.0
            positionX_clouds = 0.5
            positionY_clouds = 0.52
            positionX_fish = 0.0
            positionY_fish = 0.52
            scaleX_fish = 1.0
            scaleY_fish = 1.0
            scaleX_buttons = 1.0
            scaleY_buttons = 1.0
            positionX_buttons = 0.15
            positionY_buttons = 0.93
            scaleX_popUp = 1.0
            scaleY_popUp = 1.0
            
            scaleX_mountain = 1.0
            scaleY_mountain = 1.0
            positionX_mountain = 0.0
            positionY_mountain = 0.575
            
        }else if(proportion == "9:16"){
            scaleX_decorations = 1.09
            scaleY_decorations = 1.09
            scaleX_character = 1.0
            scaleY_character = 1.25
            positionX_character = 0.005
            positionY_character = 0.54
            scaleX_clouds = 1.0
            scaleY_clouds = 1.25
            positionX_clouds = 0.5
            positionY_clouds = 0.44
            scaleX_fish = 1.0
            scaleY_fish = 1.25
            positionX_fish = 0.0
            positionY_fish = 0.48
            scaleX_buttons = 1.0
            scaleY_buttons = 1.25
            positionX_buttons = 0.15
            positionY_buttons = 0.91
            scaleX_popUp = 1.0
            scaleY_popUp = 1.25
            
            scaleX_mountain = 1.0
            scaleY_mountain = 1.0
            positionX_mountain = 0.0
            positionY_mountain = 0.632
            
        }else if(proportion == "3:4"){
            scaleX_decorations = 1.09
            scaleY_decorations = 1.09
            scaleX_character = 1.0
            scaleY_character = 1.5
            positionX_character = 0.005
            positionY_character = 0.61
            scaleX_clouds = 1.00
            scaleY_clouds = 1.5
            positionX_clouds = 0.5
            positionY_clouds = 0.32
            scaleX_fish = 1.0
            scaleY_fish = 1.5
            positionX_fish = 0.0
            positionY_fish = 0.4
            scaleX_buttons = 1.0
            scaleY_buttons = 1.5
            positionX_buttons = 0.15
            positionY_buttons = 0.85
            scaleX_popUp = 1.0
            scaleY_popUp = 1.5
            
            scaleX_mountain = 1.0
            scaleY_mountain = 1.01
            positionX_mountain = 0.0
            positionY_mountain = 0.691
        }
        
        
        return withAnimation{
            ZStack{
                Image("Template")
                    .resizable()
                    .frame(width: fixedWidth * 1.0, height: fixedHeight * 1.0)
                    .position(x: fixedWidth/2 ,y: fixedHeight/2 - (0.017)*fixedHeight)
                    .opacity(0.0)
                
                // actual mountain
                Group {
                    if(mountain.hasClouds){
                        CloudView(cloudName: $mountain.clouds)
                            .scaleEffect(x: scaleX_clouds, y: scaleY_clouds)
                            .position(x: (positionX_clouds * fixedWidth),y: fixedHeight - (positionY_clouds * fixedHeight))
                            .opacity(100.0)
                    }
                    
                    if(mountain.hasFish){
                        FishView(fishName1: $mountain.fish1,fishName2: $mountain.fish2)
                            .scaleEffect(x: scaleX_fish, y: scaleY_fish)
                            .position(x: fixedWidth/2 + (positionX_fish * fixedWidth),y: fixedHeight - (positionY_fish * fixedHeight))
                            .opacity(100.0)
                    }
                    
                    Image(mountain.background)
                        .resizable()
                        .frame(width: fixedWidth * 1.0, height: fixedHeight * 0.756)
                        .position(x: fixedWidth/2 ,y: fixedHeight/2 - (0.028)*fixedHeight)
                        .opacity(100.0)
                    
                    Image(mountain.foreground)
                        .resizable()
                        .frame(width: fixedWidth * 0.93, height: fixedHeight * 0.675)
                        .position(x: fixedWidth/2 - (0.025 * fixedWidth),y: fixedHeight/2 + (0.01 * fixedHeight))
                        .opacity(100.0)
                    
                    Image(mountain.path)
                        .resizable()
                        .frame(width: fixedWidth * 0.93, height: fixedHeight * 0.742)
                        .position(x: fixedWidth/2 - (0.025 * fixedWidth),y: fixedHeight/2 - (0.035 * fixedHeight))
                        .opacity(100.0)
                    
                    
                    StepsView(completedStepsNum: $tempCharacterPosition, starMaker: $starMaker, hasStars: $hasStars,  completedStep: $mountain.completedStep, completedStarStep: $mountain.completedStarStep, uncompletedStep: $mountain.uncompletedStep, uncompletedStarStep: $mountain.uncompletedStarStep)
                        .onChange(of: tempCharacterPosition){ newValue in
                            makeStars()
                        }
                        .scaleEffect(x: 1.0, y: 1.077)
                        .frame(width: fixedWidth * 1.0, height: fixedHeight * 1.0)
                        .position(x: fixedWidth/2 - (0.0 * fixedWidth),y: fixedHeight/2 + (0.011 * fixedHeight))
                        .opacity(100.0)
                    
                    DecorationView(decoration1: $mountain.decoration1, showDecoration1: $mountain.showDecoration1, sizeDecoration1: $mountain.sizeDecoration1, decoration2: $mountain.decoration2, showDecoration2: $mountain.showDecoration2, sizeDecoration2: $mountain.sizeDecoration2, decoration3: $mountain.decoration3, showDecoration3: $mountain.showDecoration3, sizeDecoration3: $mountain.sizeDecoration3, decoration4: $mountain.decoration4, showDecoration4: $mountain.showDecoration4, sizeDecoration4: $mountain.sizeDecoration4)
                        .scaleEffect(x: scaleX_decorations, y: scaleY_decorations)
                        .frame(width: fixedWidth * 1.0, height: fixedHeight * 1.0)
                        .position(x: fixedWidth/2 + (0.01 * fixedWidth),y: fixedHeight/2 + (0.013 * fixedHeight))
                        .opacity(100.0)
                    
                    
                    CharacterView(characterPosition: $tempCharacterPosition)
                        .scaleEffect(x: scaleX_character, y: scaleY_character)
                        .frame(width: fixedWidth * 1.0, height: fixedHeight * 1.0)
                        .position(x: fixedWidth/2 + (positionX_character * fixedWidth),y: fixedHeight - (positionY_character * fixedHeight))
                        .opacity(100.0)
                    //
                    GIFView("confetti1")
                        .scaleEffect(x: 2.0, y: 3.0, anchor: UnitPoint(x: 0, y: 0))
                        .frame(width: fixedWidth * 1.0, height: fixedHeight * 1.0)
                        .position(x: fixedWidth/2 + (0.00 * fixedWidth),y: fixedHeight - (0.5 * fixedHeight))
                        .opacity(confettiVisible)
                        .onChange(of: tempCharacterPosition){ newValue in
                            if(todaysSteps >= prevTodaysSteps){
                                showConfetti()
                            }
                        }
                }
                Group {
                    if (popUpVisible == 100.0){
                        PopUpMessage(todaysProgressPercent: $todaysProgressPercent)
                            .scaleEffect(x: scaleX_popUp, y: scaleY_popUp)
                            .frame(width: fixedWidth * 1.0, height: fixedHeight * 1.0)
                            .position(x: (0.50 * fixedWidth),y: fixedHeight - (0.5 * fixedHeight))
                            .transition(.asymmetric(insertion: AnyTransition.scale.animation(.easeInOut(duration: 0.7)), removal: .opacity))
                    }
                    
                    if (presentBadge == 100.0) {
                        BadgeEarnedPopUp(message: $message, badge: $badge)
                            .scaleEffect(x: scaleX_popUp, y: scaleY_popUp)
                            .frame(width: fixedWidth * 1.0, height: fixedHeight * 1.0)
                            .position(x: (0.50 * fixedWidth),y: fixedHeight - (0.5 * fixedHeight))
                            .transition(.asymmetric(insertion: AnyTransition.scale.animation(.easeInOut(duration: 0.7)), removal: .opacity))
                        
                    }
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
                    .scaleEffect(x: scaleX_buttons, y: scaleY_buttons)
                    .frame(width: fixedWidth * 1.0, height: fixedHeight * 1.0)
                    .position(x: fixedWidth * (1.0 - positionX_buttons),y: fixedHeight - (positionY_buttons * fixedHeight))
                    .opacity(100.0)
                
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
                    .scaleEffect(x: scaleX_buttons, y: scaleY_buttons)
                    .frame(width: fixedWidth * 1.0, height: fixedHeight * 1.0)
                    .position(x: fixedWidth * positionX_buttons,y: fixedHeight - (positionY_buttons * fixedHeight))
                    .opacity(100.0)
                
            }
            .animation(Animation.easeInOut.speed(1), value: tempCharacterPosition)
        }
        .position(x: fixedWidth/2 - (positionX_mountain * fixedWidth),y: fixedHeight - (positionY_mountain * fixedHeight))
        .frame(width: fixedWidth, height: fixedHeight * (1.0 - (0.15 * scaleY_buttons)) )
        .scaleEffect(x: scaleX_mountain, y: scaleY_mountain)
        .background(mountain.worldColor)
    }
    
    func authorizeNotifications() {
        notificationCenter.requestAuthorization(options: [.sound , .alert , .badge ]) {
            success, error in
            if (success) {
                print("Success Authorizing notifications")
            }else{
                print("Error Authorizing notifications")
            }
        }
    }
    
    func scheduleNotification() {
        let content = UNMutableNotificationContent()
        
        content.title = "TestMountainPage"
        content.body = customizeNotification()
        content.sound = .default
        content.badge = 1
        
        notificationCenter.getNotificationSettings(){ (settings) in
            if(settings.authorizationStatus == .authorized) {
                
                let minutes = 1
                let date = Date().addingTimeInterval(TimeInterval(minutes * 60))

                let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
                
                let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
                
                let uuidString = UUID().uuidString
                
                let request = UNNotificationRequest(
                    identifier: uuidString,
                    content: content,
                    trigger: trigger
                )
                
                notificationCenter.add(request)
                print("Scheduled notification for: \(date.formatted())")
                    
            }
            else {
                print("Push notifications not authorized.")
            }
        }
        
    }
    
    func customizeNotification() -> String {
        let date = Date()
        let calendar = Calendar.current
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        let dayInWeek = dateFormatter.string(from: date)
        message = ""
        
        //weekend
        if calendar.isDateInWeekend(date) {
            let randomInt = Int.random(in: 1..<2)
            switch(randomInt) {
            case 1:
                message = "Busy week ahead? Save some time by preparing some healthy meals this weekend."
            case 2:
                message = "Happy \(dayInWeek)! Remember to track your progress for the day."
            default :
                message = "Happy \(dayInWeek)! Remember to track your progress for the day."
            }
        }
        else {
            let randomInt = Int.random(in: 1..<5)
            switch(randomInt) {
            case 1:
                message = "Don???t forget to finish logging your food choices and exercise today."
            case 2:
                message = "Make sure to update your food and exercise log for the day."
            case 3:
                message = "You haven???t logged your last meal, would you like to do that now?"
            case 4:
                message = "Reminder: most of today has passed and you haven't logged your progress in yet."
            case 5:
                message = "Don't lose your streak! Track your progress by logging your food and exercise for the day."
            default:
                message = "Don't lose your streak! Track your progress by logging your food and exercise for the day."
            }
        }
        
        return message
    }
    
    func clearNotifications() {
        notificationCenter.removeAllDeliveredNotifications()
        notificationCenter.removeAllPendingNotificationRequests()
        UIApplication.shared.applicationIconBadgeNumber = 0
    }
    
    init(){
        _mountain = State(initialValue: getMountain())
        if(characterPosition == 0 || characterPosition == -1){
            _characterPosition = State(initialValue: getStartIndex())
            _tempCharacterPosition = State(initialValue: getStartIndex())
            UserDefaults.standard.set(characterPosition, forKey: "characterPosition")
            UserDefaults.standard.set(tempCharacterPosition, forKey: "tempCharacterPosition")
        }
        playBackgroundSound(sound: "background", type: "wav")
        authorizeNotifications()
    }
    
    var body: some View {
        
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth:CGFloat = screenSize.width
        let screenHeight:CGFloat = screenSize.height

        if(showGame){
            VStack(spacing: 0) {
                makeMountain(screenWidth: screenWidth, screenHeight: screenHeight)
                
                makeButtons(screenWidth: screenWidth, screenHeight: screenHeight)
            }
            .frame(width: fixedWidth, height: fixedHeight)
            .scaleEffect(x: (1.0) * (screenWidth/fixedWidth) ,y: (1.0) * (screenHeight/fixedHeight))
            .onChange(of: scenePhase) { newPhase in
                if newPhase == .active {
                    clearNotifications()
                } else if newPhase == .inactive {
                    scheduleNotification()
                }
            }
            
        }
        else{
            BadgeView(userStreak: self.$userStreak)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
/*
            MountainView()
            .previewDevice("iPhone SE (3rd generation)")
 */
        MountainView()
            .previewDevice("iPhone 14")
/*
        MountainView()
            .previewDevice("iPad (10th generation)")
*/
            
    }
}
