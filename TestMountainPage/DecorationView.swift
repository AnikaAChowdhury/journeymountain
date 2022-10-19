//
//  DecorationView.swift
//  TestMountainPage
//
//  Created by Michael Mendel on 10/17/22.
//

import SwiftUI

let outer_small_locations: [[Double]] = [
    [0.091, 0.217], [0.151, 0.217],
    [0.214, 0.215], [0.278, 0.215],
    [0.34, 0.214], [0.4, 0.214],
    [0.46, 0.2135], [0.523, 0.214]]

let inner_small_locations: [[Double]] = [
    [0.091, 0.217], [0.151, 0.217],
    [0.214, 0.215], [0.278, 0.215],
    [0.34, 0.214], [0.4, 0.214],
    [0.46, 0.2135], [0.523, 0.214]]

let outer_big_locations: [[Double]] = [
    [0.26, 0.64],
    [0.155, 0.53],
    [0.10, 0.40],
    [0.03, 0.28],
    [0.81, 0.62],
    [0.94, 0.40],
    [0.96, 0.273]]

let inner_big_locations: [[Double]] = [
    [0.32, 0.66],
    [0.22, 0.51],
    [0.17, 0.42],
    [0.09, 0.26],
    [0.74, 0.63],
    [0.88, 0.39],
    [0.89, 0.283]]


struct DecorationView: View {
    
    @State var inner_big_rotation:Int = 3
    @State var outer_big_rotation:Int = 3
    @State var inner_small_rotation:Int = 0
    @State var outer_small_rotation:Int = 0

    func makeInnerBigDecoration(decorationNumber:Int, screenWidth:CGFloat, screenHeight:CGFloat, imageName:String, imageSize:Double) -> some View{
        
        let x1 = inner_big_locations[decorationNumber][0]
        let y1 = inner_big_locations[decorationNumber][1]

        let d = Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .rotationEffect(Angle(degrees:Double(inner_big_rotation)), anchor: .bottom)
                    .frame(width: screenWidth * (imageSize))
                    .position(x: 0 + (x1)*(screenWidth),y: screenHeight - (y1)*screenHeight)
                    .animation(Animation.linear(duration: Double(Int.random(in: 2..<4))).repeatForever(autoreverses: true).speed(1.0), value: inner_big_rotation)
                    .onAppear {
                        let rotation = Int.random(in: 2..<5)
                        if (inner_big_rotation < 0){
                            inner_big_rotation = rotation
                        }else{
                            inner_big_rotation = rotation * -1
                        }
                    }
        return d
    }
    
    func makeOuterBigDecoration(decorationNumber:Int, screenWidth:CGFloat, screenHeight:CGFloat, imageName:String, imageSize:Double) -> some View{
        
        let x1 = outer_big_locations[decorationNumber][0]
        let y1 = outer_big_locations[decorationNumber][1]

        let d = Image(imageName)
                .resizable()
                .scaledToFit()
                .rotationEffect(Angle(degrees:Double(outer_big_rotation)), anchor: .bottom)
                .frame(width: screenWidth * (imageSize))
                .position(x: 0 + (x1)*(screenWidth),y: screenHeight - (y1)*screenHeight)
                .animation(Animation.linear(duration: Double(Int.random(in: 2..<4))).repeatForever(autoreverses: true).speed(1.0), value: outer_big_rotation)
                .onAppear {
                    let rotation = Int.random(in: 2..<5)
                    if (outer_big_rotation < 0){
                        outer_big_rotation = rotation
                    }else{
                        outer_big_rotation = rotation * -1
                    }
                }
        return d
    }
    
    var body: some View {
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth:CGFloat = screenSize.width
        let screenHeight:CGFloat = screenSize.height
        
        let imageName = "tree_1"
        let imageSize = 0.12
        
        return ZStack{
//            Image("Template")
//                .resizable()
//                .scaledToFill()
//                .position(x: screenWidth/2 ,y: screenHeight/2 - (0.026)*(screenHeight) )
//                .opacity(100.0)
            
            ForEach(0..<outer_big_locations.count) { i in
                makeOuterBigDecoration(decorationNumber: i, screenWidth: screenWidth, screenHeight: screenHeight, imageName: imageName, imageSize: imageSize)
                    .opacity(100.0)
            }
            ForEach(0..<inner_big_locations.count) { i in
                makeInnerBigDecoration(decorationNumber: i, screenWidth: screenWidth, screenHeight: screenHeight, imageName: imageName, imageSize: imageSize)
                    .opacity(100.0)
            }
//            ForEach(0..<outer_small_locations.count) { i in
//                makeOuterSmallDecoration(decorationNumber: i, screenWidth: screenWidth, screenHeight: screenHeight)
//            }
//            ForEach(0..<innere_small_locations.count) { i in
//                makeInnerSmallDecoration(decorationNumber: i, screenWidth: screenWidth, screenHeight: screenHeight)
//            }
        }
        
    }
}

struct DecorationView_Previews: PreviewProvider {
    static var previews: some View {
        DecorationView()
    }
}
