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
    
    // increments position of character
    func moveCharacter(){
        if(characterPosition < 154){
            characterPosition += 1
        }else{
            characterPosition = 0
        }
        print(characterPosition)
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
                    
                    StepsView(completedSteps: $characterPosition)
                    CharacterView(characterPosition: $characterPosition)

                }
                .animation(Animation.easeInOut, value: characterPosition)
            }
            Button("Move Character", action: moveCharacter)
                .padding(10)
                .foregroundColor(Color.white)
                .font(.headline)
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
