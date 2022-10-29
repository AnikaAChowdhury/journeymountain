//
//  FishView.swift
//  TestMountainPage
//
//  Created by Michael Mendel on 10/16/22.
//

import SwiftUI

struct FishView: View {
    
    @State var fish_locations: [Double] = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]
    
    @Binding var fishName1:String
    @Binding var fishName2:String
    
    func makeFish(screenWidth: CGFloat, screenHeight:CGFloat, fishName:String, startingHeight:Double, startingX:Double, fish_number:Int) -> some View{
        
        let fish1X:Double = fish_locations[fish_number]
        let speed:Double = Double(Int.random(in: 45..<70))
        
        if(fish_number % 2 == 0){
            return Image(fishName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: screenWidth * 0.08)
                    .position(x: fish1X + (startingX * screenWidth) ,y: 0 + (startingHeight)*(screenHeight))
                    .opacity(100.0)
                    .animation(Animation.linear(duration: speed).repeatForever(autoreverses: true).speed(1.0), value: fish1X)
                    .onAppear {
                        if(fish1X < screenWidth){
                            let start:Int = Int(screenWidth) / 2
                            let end:Int = Int(screenWidth)
                            fish_locations[fish_number] = Double(Int.random(in: start..<end))
                        }else{
                            let start:Int = 0
                            let end:Int = Int(screenWidth) / 2
                            fish_locations[fish_number] = Double(Int.random(in: start..<end))
                        }
                    }
        }else{
            return Image(fishName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: screenWidth * 0.08)
                    .position(x: screenWidth - (fish1X + (startingX * screenWidth)), y: 0 + (startingHeight)*(screenHeight))
                    .opacity(100.0)
                    .animation(Animation.linear(duration: speed).repeatForever(autoreverses: true).speed(1.0), value: fish1X)
                    .onAppear {
                        if(fish1X < screenWidth){
                            let start:Int = Int(screenWidth) / 2
                            let end:Int = Int(screenWidth)
                            fish_locations[fish_number] = Double(Int.random(in: start..<end))
                        }else{
                            let start:Int = 0
                            let end:Int = Int(screenWidth) / 2
                            fish_locations[fish_number] = Double(Int.random(in: start..<end))
                        }
                    }
        }
    }
    
    var body: some View {
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth:CGFloat = screenSize.width
        let screenHeight:CGFloat = screenSize.height
        
        return ZStack{
            
            Group{
                makeFish(screenWidth: screenWidth, screenHeight: screenHeight, fishName: fishName1, startingHeight: 0.05, startingX: 0.1, fish_number: 0)
                makeFish(screenWidth: screenWidth, screenHeight: screenHeight, fishName: fishName1, startingHeight: 0.10, startingX: 0.2, fish_number: 1)
                makeFish(screenWidth: screenWidth, screenHeight: screenHeight, fishName: fishName1, startingHeight: 0.15, startingX: 0.3, fish_number: 2)
                makeFish(screenWidth: screenWidth, screenHeight: screenHeight, fishName: fishName1, startingHeight: 0.17, startingX: 0.4, fish_number: 3)
                makeFish(screenWidth: screenWidth, screenHeight: screenHeight, fishName: fishName1, startingHeight: 0.20, startingX: 0.5, fish_number: 4)
                makeFish(screenWidth: screenWidth, screenHeight: screenHeight, fishName: fishName1, startingHeight: 0.05, startingX: 0.4, fish_number: 0)
                makeFish(screenWidth: screenWidth, screenHeight: screenHeight, fishName: fishName1, startingHeight: 0.23, startingX: 0.3, fish_number: 1)
                makeFish(screenWidth: screenWidth, screenHeight: screenHeight, fishName: fishName1, startingHeight: 0.26, startingX: 0.2, fish_number: 2)
                makeFish(screenWidth: screenWidth, screenHeight: screenHeight, fishName: fishName1, startingHeight: 0.28, startingX: 0.1, fish_number: 3)
                makeFish(screenWidth: screenWidth, screenHeight: screenHeight, fishName: fishName1, startingHeight: 0.31, startingX: 0.3, fish_number: 4)
            }
            
            Group{
                makeFish(screenWidth: screenWidth, screenHeight: screenHeight, fishName: fishName2, startingHeight: 0.05, startingX: 0.1, fish_number: 5)
                makeFish(screenWidth: screenWidth, screenHeight: screenHeight, fishName: fishName2, startingHeight: 0.12, startingX: 0.2, fish_number: 6)
                makeFish(screenWidth: screenWidth, screenHeight: screenHeight, fishName: fishName2, startingHeight: 0.14, startingX: 0.3, fish_number: 7)
                makeFish(screenWidth: screenWidth, screenHeight: screenHeight, fishName: fishName2, startingHeight: 0.18, startingX: 0.4, fish_number: 8)
                makeFish(screenWidth: screenWidth, screenHeight: screenHeight, fishName: fishName2, startingHeight: 0.21, startingX: 0.5, fish_number: 9)
                makeFish(screenWidth: screenWidth, screenHeight: screenHeight, fishName: fishName2, startingHeight: 0.24, startingX: 0.6, fish_number: 5)
                makeFish(screenWidth: screenWidth, screenHeight: screenHeight, fishName: fishName2, startingHeight: 0.27, startingX: 0.5, fish_number: 6)
                makeFish(screenWidth: screenWidth, screenHeight: screenHeight, fishName: fishName2, startingHeight: 0.30, startingX: 0.4, fish_number: 7)
                makeFish(screenWidth: screenWidth, screenHeight: screenHeight, fishName: fishName2, startingHeight: 0.31, startingX: 0.3, fish_number: 8)
                makeFish(screenWidth: screenWidth, screenHeight: screenHeight, fishName: fishName2, startingHeight: 0.33, startingX: 0.2, fish_number: 9)
            }
            
        }
    }
}

struct FishView_Previews: PreviewProvider {
    static var previews: some View {
        FishView(fishName1: .constant("fish1_right"), fishName2: .constant("fish2_right"))
    }
}
