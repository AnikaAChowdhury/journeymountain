//
//  ContentView.swift
//  TestMountainPage
//
//  Created by Michael Mendel on 9/28/22.
//

import SwiftUI

struct MountainView: View {

//    @State var mountain:Mountain = Mountain(worldColor: <#T##String#>, clouds: <#T##String#>, background: <#T##String#>, foreground: <#T##String#>, path: <#T##String#>, completedStep: <#T##String#>, uncompletedStep: <#T##String#>)
    
    @State var characterPosition:Int = UserDefaults.standard.integer(forKey: "characterPosition") != nil ? UserDefaults.standard.integer(forKey: "characterPosition") : -1
    @State var tempCharacterPosition:Int = UserDefaults.standard.integer(forKey: "tempCharacterPosition") != nil ? UserDefaults.standard.integer(forKey: "tempCharacterPosition") : -1
    @State var starMaker:Int = UserDefaults.standard.integer(forKey: "starMaker") != nil ? UserDefaults.standard.integer(forKey: "starMaker") : 0
    @State var hasStars:Bool = UserDefaults.standard.bool(forKey: "hasStars") != nil ? UserDefaults.standard.bool(forKey: "hasStars") : false
    @State var todaysProgress:Int = UserDefaults.standard.integer(forKey: "todaysProgress") != nil ? UserDefaults.standard.integer(forKey: "todaysProgress") : 0
    @State var todaysExercise:Bool = UserDefaults.standard.bool(forKey: "todaysExercise") != nil ? UserDefaults.standard.bool(forKey: "todaysExercise") : false
    @State var todaysSteps:Int = UserDefaults.standard.integer(forKey: "todaysSteps") != nil ? UserDefaults.standard.integer(forKey: "todaysSteps") : 0
    @State var day:Int = UserDefaults.standard.integer(forKey: "day") != nil ? UserDefaults.standard.integer(forKey: "day") : 0
    @State var confettiVisible:Double = 0.0
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
        print(tempCharacterPosition)
    }
    
    func subtract10(){
        if(todaysProgress >= 10){
            todaysProgress -= 10
        }else{
            todaysProgress = 0
        }
        calculateSteps()
        UserDefaults.standard.set(todaysProgress, forKey: "todaysProgress")
    }
    func add10(){
        if(todaysProgress <= 90){
            todaysProgress += 10
        }else{
            todaysProgress = 100
        }
        calculateSteps()
        UserDefaults.standard.set(todaysProgress, forKey: "todaysProgress")
    }
    func calculateSteps(){
        // calculate progress
        if(todaysProgress <= 50){
            todaysSteps = 0
        }else if(todaysProgress > 50 && todaysProgress <= 60){
            todaysSteps = 1
        }else if(todaysProgress > 60 && todaysProgress <= 70){
            todaysSteps = 2
        }else if(todaysProgress > 70 && todaysProgress <= 80){
            todaysSteps = 3
        }else if(todaysProgress > 80 && todaysProgress <= 100){
            todaysSteps = 4
        }
        
        if(todaysExercise){
            todaysSteps += 1
        }
        UserDefaults.standard.set(todaysSteps, forKey: "todaysSteps")
        
        moveCharacter()
    }
    func toggleExercise(){
        todaysExercise = !todaysExercise
        calculateSteps()
        UserDefaults.standard.set(todaysExercise, forKey: "todaysExercise")
    }
    
    func submitDay(){
        characterPosition = tempCharacterPosition
        todaysSteps = 0
        todaysExercise = false
        todaysProgress = 0
        UserDefaults.standard.set(characterPosition, forKey: "characterPosition")
        UserDefaults.standard.set(todaysSteps, forKey: "todaysSteps")
        UserDefaults.standard.set(todaysExercise, forKey: "todaysExercise")
        UserDefaults.standard.set(todaysProgress, forKey: "todaysProgress")
    }
    
    func resetMonth(){
        characterPosition = getStartIndex()
        tempCharacterPosition = getStartIndex()
        todaysSteps = 0
        todaysExercise = false
        todaysProgress = 0
        starMaker = 0
        hasStars = false
        UserDefaults.standard.set(characterPosition, forKey: "characterPosition")
        UserDefaults.standard.set(tempCharacterPosition, forKey: "tempCharacterPosition")
        UserDefaults.standard.set(todaysSteps, forKey: "todaysSteps")
        UserDefaults.standard.set(todaysExercise, forKey: "todaysExercise")
        UserDefaults.standard.set(todaysProgress, forKey: "todaysProgress")
        UserDefaults.standard.set(starMaker, forKey: "starMaker")
        UserDefaults.standard.set(hasStars, forKey: "hasStars")
    }
    func makePercentage() -> some View{
        let t = Text(String(todaysProgress)+"%")
                    .frame(maxWidth: .infinity)
                    .padding(7)
                    .foregroundColor(Color.white)
                    .font(.system(size: 20, weight: Font.Weight.bold))
        if(todaysProgress <= 50){
            return t
                    .background(Color.red)
                    .cornerRadius(30)
        }else if(todaysProgress > 50 && todaysProgress <= 60){
            return t
                    .background(Color.pink)
                    .cornerRadius(30)
        }else if(todaysProgress > 60 && todaysProgress <= 70){
            return t
                    .background(Color.orange)
                    .cornerRadius(30)
        }else if(todaysProgress > 70 && todaysProgress <= 80){
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
    
    func makePath(screenWidth:CGFloat, screenHeight:CGFloat) -> some View{
        let dimensions:String = "9:19.5"
        if (dimensions == "9:16"){
            return Image("path_1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: screenWidth * 0.905)
                    .position(x: (screenWidth/2 - (0.02)*(screenWidth)),y: screenHeight/2-(0.0455)*(screenHeight))
        }else if(dimensions == "9:19.5"){
            return Image("path_1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: screenWidth * 0.90)
                    .position(x: (screenWidth/2 - (0.02)*(screenWidth)),y: screenHeight/2-(0.043)*(screenHeight))
        }else if(dimensions == "3:4"){
            return Image("path_1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: screenWidth * 0.10)
                        .position(x: (screenWidth/2 - (0.02)*(screenWidth)),y: screenHeight/2-(0.043)*(screenHeight))
        }
        
        return Image("path_1")
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
                        
                        CloudView()
                            .opacity(100.0)
                        
                        Image("mountainBackground_1")
                            .resizable()
                            .scaledToFit()
                            .position(x: screenWidth/2 ,y: screenHeight/2 - (0.041)*(screenHeight) )
                            .opacity(100.0)
                        Image("mountainForeground_1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: screenWidth * 0.93)
                            .position(x: screenWidth/2 - (0.025)*(screenWidth),y: screenHeight/2-(0.002)*(screenHeight))
                            .opacity(100.0)
                        
                        makePath(screenWidth: screenWidth, screenHeight: screenHeight)
                            .opacity(100.0)
                        
                        StepsView(completedSteps: $tempCharacterPosition, starMaker: $starMaker)
                            .onChange(of: tempCharacterPosition){ newValue in
                                makeStars()
                            }
                            .opacity(100.0)
                        
                        CharacterView(characterPosition: $tempCharacterPosition)
                            .opacity(100.0)
                        
                        
                        GIFView("confetti1")
                            .scaleEffect(x: 2.0, y: 2.0, anchor: UnitPoint(x: 0.0, y: 0.0))
                            .position(x: screenWidth/2, y:screenHeight/2 - (0.1)*screenHeight)
                            .opacity(confettiVisible)
                            .onChange(of: tempCharacterPosition){ newValue in
                                showConfetti()
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
                        
                    }
                    .animation(Animation.easeInOut.speed(1), value: tempCharacterPosition)
                }
                .position(x: screenWidth/2 ,y: screenHeight/2 - (0.11)*(screenHeight) )
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
            }
            .background(Color(UIColor(red: 0.606, green: 0.898, blue: 0.962, alpha: 1).cgColor))
        }
        else{
            BadgeView()
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
