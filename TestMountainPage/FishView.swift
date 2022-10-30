//
//  FishView.swift
//  TestMountainPage
//
//  Created by Michael Mendel on 10/16/22.
//

import SwiftUI

struct FishView: View {
    
    @State var fish_locations: [Double] = [
        -10.0, -10.0, -10.0, -10.0, -10.0,
         -10.0, -10.0, -10.0, -10.0, -10.0,
         -10.0, -10.0, -10.0, -10.0, -10.0,
         -10.0, -10.0, -10.0, -10.0, -10.0]

    @Binding var fishName1:String
    @Binding var fishName2:String
    
    func makeFish(fishName: String, screenWidth: CGFloat, screenHeight:CGFloat, startingHeight:Double, startingX:Double, fish_number:Int) -> some View{
        
        let fish1X:Double = fish_locations[fish_number]
        let speed:Double = Double(Int.random(in: 25..<80))
        
        // even start on left, odd on right
        if(fish_number % 2 == 0){
            return Image(fishName + "_right")
                    .resizable()
                    .scaledToFit()
                    .frame(width: screenWidth * 0.08)
                    .position(x: fish1X ,y: 0 + (startingHeight)*(screenHeight))
                    .animation(Animation.linear(duration: speed).repeatForever(autoreverses: false).speed(1.0), value: fish_locations[fish_number])
                    .onAppear {
                        fish_locations[fish_number] = (1.2) * screenWidth
                    }
        }else{
            return Image(fishName + "_left")
                    .resizable()
                    .scaledToFit()
                    .frame(width: screenWidth * 0.08)
                    .position(x: screenWidth - fish1X, y: 0 + (startingHeight)*(screenHeight))
                    .animation(Animation.linear(duration: speed).repeatForever(autoreverses: false).speed(1.0), value: fish_locations[fish_number])
                    .onAppear {
                        fish_locations[fish_number] = (1.2) * screenWidth
                    }
        }
    }
    
    var body: some View {
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth:CGFloat = screenSize.width
        let screenHeight:CGFloat = screenSize.height
        
        return ZStack{
            
            Group{
                makeFish(fishName: fishName1,  screenWidth: screenWidth, screenHeight: screenHeight, startingHeight: 0.05, startingX: 0.1, fish_number: 0)
                makeFish(fishName: fishName1,  screenWidth: screenWidth, screenHeight: screenHeight, startingHeight: 0.10, startingX: 0.2, fish_number: 1)
                makeFish(fishName: fishName1,  screenWidth: screenWidth, screenHeight: screenHeight, startingHeight: 0.15, startingX: 0.3, fish_number: 2)
                makeFish(fishName: fishName1,  screenWidth: screenWidth, screenHeight: screenHeight, startingHeight: 0.17, startingX: 0.4, fish_number: 3)
                makeFish(fishName: fishName1,  screenWidth: screenWidth, screenHeight: screenHeight, startingHeight: 0.20, startingX: 0.5, fish_number: 4)
                makeFish(fishName: fishName1,  screenWidth: screenWidth, screenHeight: screenHeight, startingHeight: 0.05, startingX: 0.4, fish_number: 5)
                makeFish(fishName: fishName1,  screenWidth: screenWidth, screenHeight: screenHeight, startingHeight: 0.23, startingX: 0.3, fish_number: 6)
                makeFish(fishName: fishName1,  screenWidth: screenWidth, screenHeight: screenHeight, startingHeight: 0.26, startingX: 0.2, fish_number: 7)
                makeFish(fishName: fishName1,  screenWidth: screenWidth, screenHeight: screenHeight, startingHeight: 0.28, startingX: 0.1, fish_number: 8)
                makeFish(fishName: fishName1,  screenWidth: screenWidth, screenHeight: screenHeight, startingHeight: 0.31, startingX: 0.3, fish_number: 9)
            }
            
            Group{
                makeFish(fishName: fishName2,  screenWidth: screenWidth, screenHeight: screenHeight, startingHeight: 0.05, startingX: 0.1, fish_number: 10)
                makeFish(fishName: fishName2,  screenWidth: screenWidth, screenHeight: screenHeight, startingHeight: 0.12, startingX: 0.2, fish_number: 11)
                makeFish(fishName: fishName2,  screenWidth: screenWidth, screenHeight: screenHeight, startingHeight: 0.14, startingX: 0.3, fish_number: 12)
                makeFish(fishName: fishName2,  screenWidth: screenWidth, screenHeight: screenHeight, startingHeight: 0.18, startingX: 0.4, fish_number: 13)
                makeFish(fishName: fishName2,  screenWidth: screenWidth, screenHeight: screenHeight, startingHeight: 0.21, startingX: 0.5, fish_number: 14)
                makeFish(fishName: fishName2,  screenWidth: screenWidth, screenHeight: screenHeight, startingHeight: 0.24, startingX: 0.6, fish_number: 15)
                makeFish(fishName: fishName2,  screenWidth: screenWidth, screenHeight: screenHeight, startingHeight: 0.27, startingX: 0.5, fish_number: 16)
                makeFish(fishName: fishName2,  screenWidth: screenWidth, screenHeight: screenHeight, startingHeight: 0.30, startingX: 0.4, fish_number: 17)
                makeFish(fishName: fishName2,  screenWidth: screenWidth, screenHeight: screenHeight, startingHeight: 0.31, startingX: 0.3, fish_number: 18)
                makeFish(fishName: fishName2,  screenWidth: screenWidth, screenHeight: screenHeight, startingHeight: 0.33, startingX: 0.2, fish_number: 19)
            }
            
        }
    }
}

struct FishView_Previews: PreviewProvider {
    static var previews: some View {
        FishView(fishName1: .constant("fish1"), fishName2: .constant("fish2"))
    }
}
