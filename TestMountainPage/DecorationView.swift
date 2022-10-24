//
//  DecorationView.swift
//  TestMountainPage
//
//  Created by Michael Mendel on 10/17/22.
//

import SwiftUI

let outer_small_locations: [[Double]] = [
    [0.26, 0.59],
    [0.84, 0.54],
    [0.86, 0.455],
    [0.08, 0.34]]

let inner_small_locations: [[Double]] = [
    [0.34, 0.717],
    [0.67, 0.684],
    [0.18, 0.335],
    [0.77, 0.45],
    [0.967, 0.32],
    [0.80, 0.28]]


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
                        let rotation = Int.random(in: 5..<10)
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
                    let rotation = Int.random(in: 5..<10)
                    if (outer_big_rotation < 0){
                        outer_big_rotation = rotation
                    }else{
                        outer_big_rotation = rotation * -1
                    }
                }
        return d
    }
    
    func makeOuterSmallDecoration(decorationNumber:Int, screenWidth:CGFloat, screenHeight:CGFloat, imageName:String, imageSize:Double) -> some View{
        
        let x1 = outer_small_locations[decorationNumber][0]
        let y1 = outer_small_locations[decorationNumber][1]

        let d = Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: screenWidth * (imageSize))
                .position(x: 0 + (x1)*(screenWidth),y: screenHeight - (y1)*screenHeight)
        return d
    }
    
    func makeInnerSmallDecoration(decorationNumber:Int, screenWidth:CGFloat, screenHeight:CGFloat, imageName:String, imageSize:Double) -> some View{
        
        let x1 = inner_small_locations[decorationNumber][0]
        let y1 = inner_small_locations[decorationNumber][1]

        let d = Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: screenWidth * (imageSize))
                .position(x: 0 + (x1)*(screenWidth),y: screenHeight - (y1)*screenHeight)
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
            
            ForEach(0..<outer_small_locations.count) { i in
                makeOuterSmallDecoration(decorationNumber: i, screenWidth: screenWidth, screenHeight: screenHeight, imageName: "rock_1", imageSize: 0.1)
            }
            
            ForEach(0..<inner_small_locations.count) { i in
                makeInnerSmallDecoration(decorationNumber: i, screenWidth: screenWidth, screenHeight: screenHeight, imageName: "rock_small_1", imageSize: 0.08)
            }
            
            ForEach(0..<outer_big_locations.count) { i in
                makeOuterBigDecoration(decorationNumber: i, screenWidth: screenWidth, screenHeight: screenHeight, imageName: imageName, imageSize: imageSize)
                    .opacity(100.0)
            }
            ForEach(0..<inner_big_locations.count) { i in
                makeInnerBigDecoration(decorationNumber: i, screenWidth: screenWidth, screenHeight: screenHeight, imageName: imageName, imageSize: imageSize)
                    .opacity(100.0)
            }
        }
        
    }
}

struct DecorationView_Previews: PreviewProvider {
    static var previews: some View {
        DecorationView()
    }
}
