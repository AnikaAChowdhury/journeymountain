//
//  CloudView.swift
//  TestMountainPage
//
//  Created by Michael Mendel on 10/16/22.
//

import SwiftUI

struct CloudView: View {
    @State var cloud1X:Double = 0.0
    @State var cloud2X:Double = 0.0
    @State var cloud3X:Double = 0.0

    
    var body: some View {
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth:CGFloat = screenSize.width
        let screenHeight:CGFloat = screenSize.height
        
        return ZStack{
                Image("cloud_1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: screenWidth * 0.45)
                    .position(x: cloud1X ,y: 0 + (0.05)*(screenHeight) )
                    .opacity(100.0)
                    .animation(Animation.linear(duration: 150.0).repeatForever(autoreverses: true).speed(1.0), value: cloud1X)
                    .onAppear {
                        if(cloud1X < screenWidth){
                            cloud1X = screenWidth
                        }else{
                            cloud1X = 0.0
                        }
                    }
                Image("cloud_1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: screenWidth * 0.45)
                    .position(x: screenWidth - cloud2X ,y: 0 + (0.12)*(screenHeight) )
                    .opacity(100.0)
                    .animation(Animation.linear(duration: 90.0).repeatForever(autoreverses: true).speed(1.0), value: cloud2X)
                    .onAppear {
                        if(cloud2X < screenWidth){
                            cloud2X = screenWidth
                        }else{
                            cloud2X = 0.0
                        }
                    }
                Image("cloud_1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: screenWidth * 0.45)
                    .position(x: cloud3X ,y: 0 + (0.19)*(screenHeight) )
                    .opacity(110.0)
                    .animation(Animation.linear(duration: 80.0).repeatForever(autoreverses: true).speed(1.0), value: cloud3X)
                    .onAppear {
                        if(cloud3X < screenWidth){
                            cloud3X = screenWidth
                        }else{
                            cloud3X = 0.0
                        }
                    }
        }
    }
}

struct CloudView_Previews: PreviewProvider {
    static var previews: some View {
        CloudView()
    }
}
