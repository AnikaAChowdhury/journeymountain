//
//  ContentView.swift
//  TestMountainPage
//
//  Created by Michael Mendel on 9/28/22.
//

import SwiftUI

struct MountainView: View {

//    @State var mountain:Mountain = Mountain(worldColor: <#T##String#>, clouds: <#T##String#>, background: <#T##String#>, foreground: <#T##String#>, path: <#T##String#>, completedStep: <#T##String#>, uncompletedStep: <#T##String#>)
    @State var characterPosition:Int = UserDefaults.standard.integer(forKey: "characterPosition") != nil ? UserDefaults.standard.integer(forKey: "characterPosition") : 0
    @State var starMaker:Int = UserDefaults.standard.integer(forKey: "starMaker") != nil ? UserDefaults.standard.integer(forKey: "starMaker") : 0
    @State var hasStars:Bool = UserDefaults.standard.bool(forKey: "hasStars") != nil ? UserDefaults.standard.bool(forKey: "hasStars") : false
    @State var todaysProgress:Int = UserDefaults.standard.integer(forKey: "todaysProgress") != nil ? UserDefaults.standard.integer(forKey: "todaysProgress") : 0
    @State var todaysExercise:Bool = UserDefaults.standard.bool(forKey: "todaysExercise") != nil ? UserDefaults.standard.bool(forKey: "todaysExercise") : false
    @State var todaysSteps:Int = UserDefaults.standard.integer(forKey: "todaysSteps") != nil ? UserDefaults.standard.integer(forKey: "todaysSteps") : 0
    @State var tempCharacterPosition:Int = UserDefaults.standard.integer(forKey: "tempCharacterPosition") != nil ? UserDefaults.standard.integer(forKey: "tempCharacterPosition") : 0
    @State var day:Int = UserDefaults.standard.integer(forKey: "day") != nil ? UserDefaults.standard.integer(forKey: "day") : 0
    
    // increments position of character
    func moveCharacter(){
        let amountToMove = todaysSteps
        if(tempCharacterPosition + amountToMove <= 154){
            tempCharacterPosition = characterPosition + amountToMove
        }else{
            tempCharacterPosition = 154
        }
        UserDefaults.standard.set(tempCharacterPosition, forKey: "tempCharacterPosition")
        print(tempCharacterPosition)
    }
    func subtract20(){
        if(todaysProgress >= 20){
            todaysProgress -= 20
        }else{
            todaysProgress = 0
        }
        calculateSteps()
        UserDefaults.standard.set(todaysProgress, forKey: "todaysProgress")
    }
    func add20(){
        if(todaysProgress <= 80){
            todaysProgress += 20
        }else{
            todaysProgress = 100
        }
        calculateSteps()
        UserDefaults.standard.set(todaysProgress, forKey: "todaysProgress")
    }
    func calculateSteps(){
        // calculate progress
        if(todaysProgress <= 20){
            todaysSteps = 0
        }else if(todaysProgress > 20 && todaysProgress <= 40){
            todaysSteps = 1
        }else if(todaysProgress > 40 && todaysProgress <= 60){
            todaysSteps = 2
        }else if(todaysProgress > 60 && todaysProgress <= 80){
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
        characterPosition = 0
        tempCharacterPosition = 0
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
        var t = Text(String(todaysProgress)+"%")
                    .padding(5)
                    .foregroundColor(Color.white)
                    .font(.subheadline)
        if(todaysProgress <= 20){
            return t
                    .background(Color.red)
                    .cornerRadius(30)
        }else if(todaysProgress > 20 && todaysProgress <= 40){
            return t
                    .background(Color.pink)
                    .cornerRadius(30)
        }else if(todaysProgress > 40 && todaysProgress <= 60){
            return t
                    .background(Color.orange)
                    .cornerRadius(30)
        }else if(todaysProgress > 60 && todaysProgress <= 80){
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
                .padding(5)
                .foregroundColor(Color.white)
                .font(.subheadline)
                .background(Color.green)
                .cornerRadius(30)
        }
        return Button("Exercise", action: toggleExercise)
                .padding(5)
                .foregroundColor(Color.white)
                .font(.subheadline)
                .background(Color.red)
                .cornerRadius(30)
    }
    
    func makeStars(){
        if(characterPosition > 124 - 1 && !hasStars){
            
            func loop(times: Int) {
                var i = 0

                func nextIteration() {
                    if i < times {
                        print("i is \(i)")

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
    
    
    var body: some View {
        
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth:CGFloat = screenSize.width
        let screenHeight:CGFloat = screenSize.height
                
        VStack {
            withAnimation{
                ZStack{
                    Image("Template")
                        .resizable()
                        .scaledToFill()
                        .position(x: screenWidth/2 ,y: screenHeight/2 - (0.026)*(screenHeight) )
                        .opacity(0.0)
                    Image("mountainBackground_1")
                        .resizable()
                        .scaledToFit()
                        .position(x: screenWidth/2 ,y: screenHeight/2 - (0.038)*(screenHeight) )
                    Image("mountainForeground_1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: screenWidth * 0.93)
                        .position(x: screenWidth/2 - (0.025)*(screenWidth),y: screenHeight/2+(0.001)*(screenHeight))
                    Image("path_1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: screenWidth * 0.90)
                        .position(x: (screenWidth/2 - (0.02)*(screenWidth)),y: screenHeight/2-(0.043)*(screenHeight))
                    
                    StepsView(completedSteps: $tempCharacterPosition, starMaker: $starMaker)
                        .onChange(of: tempCharacterPosition){ newValue in
                            makeStars()
                        }
                    
                    CharacterView(characterPosition: $tempCharacterPosition)
                }
                .animation(Animation.easeInOut.speed(1), value: tempCharacterPosition)
            }
            Spacer()
            VStack{
                HStack{
                    Button("-20",action: subtract20)
                        .padding(5)
                        .foregroundColor(Color.white)
                        .font(.subheadline)
                        .background(Color.blue)
                        .cornerRadius(30)
                    makePercentage()
                    Button("+20", action: add20)
                        .padding(5)
                        .foregroundColor(Color.white)
                        .font(.subheadline)
                        .background(Color.blue)
                        .cornerRadius(30)
                    makeExerciseButton()
                }
                HStack{
                    Button("Submit day", action: submitDay)
                        .padding(10)
                        .foregroundColor(Color.white)
                        .font(.subheadline)
                        .background(Color.blue)
                        .cornerRadius(30)
                    Button("Reset Month", action: resetMonth)
                        .padding(10)
                        .foregroundColor(Color.white)
                        .font(.subheadline)
                        .background(Color.blue)
                        .cornerRadius(30)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MountainView()
            .previewDevice("iPhone 12 mini")
//        ContentView()
//            .previewDevice("iPhone 8 Plus")
//        ContentView()
//            .previewDevice("iPad (9th generation)")
    }
}
