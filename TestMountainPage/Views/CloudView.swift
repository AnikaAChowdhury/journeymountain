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
    
    @Binding var cloudName:String

    var body: some View {
        let screenSize: CGRect = UIScreen.main.bounds
//        let fixedWidth:CGFloat = screenSize.width
//        let fixedHeight:CGFloat = screenSize.height
        let fixedHeight = 19.5 * 50
        let fixedWidth = 9.0 * 50
        
        return ZStack{
                Image(cloudName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: fixedWidth * 0.45)
                    .position(x: cloud1X ,y: 0 + (0.05)*(fixedHeight))
                    .opacity(100.0)
                    .animation(Animation.linear(duration: 130.0).repeatForever(autoreverses: true).speed(1.0), value: cloud1X)
                    .onAppear {
                        if(cloud1X < fixedWidth){
                            cloud1X = fixedWidth
                        }else{
                            cloud1X = 0.0
                        }
                    }
                Image(cloudName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: fixedWidth * 0.45)
                    .position(x: fixedWidth - cloud2X ,y: 0 + (0.12)*(fixedHeight) )
                    .opacity(100.0)
                    .animation(Animation.linear(duration: 80.0).repeatForever(autoreverses: true).speed(1.0), value: cloud2X)
                    .onAppear {
                        if(cloud2X < fixedWidth){
                            cloud2X = fixedWidth
                        }else{
                            cloud2X = 0.0
                        }
                    }
                Image(cloudName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: fixedWidth * 0.45)
                    .position(x: cloud3X ,y: 0 + (0.19)*(fixedHeight) )
                    .opacity(110.0)
                    .animation(Animation.linear(duration: 70.0).repeatForever(autoreverses: true).speed(1.0), value: cloud3X)
                    .onAppear {
                        if(cloud3X < fixedWidth){
                            cloud3X = fixedWidth
                        }else{
                            cloud3X = 0.0
                        }
                    }
        }
    }
}

struct CloudView_Previews: PreviewProvider {
    static var previews: some View {
        CloudView(cloudName: .constant("cloud"))
    }
}
