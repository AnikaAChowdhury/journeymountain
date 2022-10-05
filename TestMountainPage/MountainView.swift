//
//  ContentView.swift
//  TestMountainPage
//
//  Created by Michael Mendel on 9/28/22.
//

import SwiftUI

struct MountainView: View {
    
    
//    @State var mountain:Mountain = Mountain(worldColor: <#T##String#>, clouds: <#T##String#>, background: <#T##String#>, foreground: <#T##String#>, path: <#T##String#>, completedStep: <#T##String#>, uncompletedStep: <#T##String#>)
    @State var characterPosition:Int = 0
    @State var starMaker:Int = 0
    @State var hasStars:Bool = false

    // increments position of character
    func moveCharacter(){
        if(characterPosition < 154){
            characterPosition += 1
        }else{
            characterPosition = 0
        }
        print(characterPosition)
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
                            nextIteration()
                        }
                    }
                }
                nextIteration()
            }
            
            loop(times: 154)
            
            hasStars = true
        }
        // reset when back to 0
        if(characterPosition == 0){
            starMaker = 0
            hasStars = false
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
                    
                    StepsView(completedSteps: $characterPosition, starMaker: $starMaker)
                        .onChange(of: characterPosition){ newValue in
                            makeStars()
                        }
                        .animation(Animation.easeInOut.delay(1.0), value: starMaker)
                    
                    CharacterView(characterPosition: $characterPosition)

                }
                .animation(Animation.easeInOut, value: characterPosition)
            }
            Spacer()
            Button("Move Character", action: moveCharacter)
                .padding(10)
                .foregroundColor(Color.white)
                .font(.title)
                .background(Color.blue)
                .cornerRadius(30)
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
