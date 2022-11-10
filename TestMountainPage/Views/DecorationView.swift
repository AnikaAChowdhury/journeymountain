//
//  DecorationView.swift
//  TestMountainPage
//
//  Created by Michael Mendel on 10/17/22.
//

import SwiftUI

let outer_small_locations: [[Double]] = [
    [0.26, 0.59],
    [0.80, 0.54],
    [0.82, 0.46],
    [0.11, 0.34]]

let inner_small_locations: [[Double]] = [
    [0.34, 0.717],
    [0.66, 0.684],
    [0.22, 0.34],
    [0.72, 0.455],
    [0.76, 0.28]]


let outer_big_locations: [[Double]] = [
    [0.27, 0.68],
    [0.17, 0.54],
    [0.11, 0.41],
    [0.06, 0.27],
    [0.78, 0.645],
    [0.90, 0.42],
    [0.92, 0.30]]

let inner_big_locations: [[Double]] = [
    [0.32, 0.66],
    [0.225, 0.51],
    [0.18, 0.42],
    [0.12, 0.26],
    [0.71, 0.63],
    [0.84, 0.39],
    [0.85, 0.283]]


struct DecorationView: View {
    
    @State var inner_big_rotation:Int = 3
    @State var outer_big_rotation:Int = 3
    
    @Binding var decoration1:String
    @Binding var showDecoration1:Bool
    @Binding var sizeDecoration1:Double
    @Binding var decoration2:String
    @Binding var showDecoration2:Bool
    @Binding var sizeDecoration2:Double
    @Binding var decoration3:String
    @Binding var showDecoration3:Bool
    @Binding var sizeDecoration3:Double
    @Binding var decoration4:String
    @Binding var showDecoration4:Bool
    @Binding var sizeDecoration4:Double

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
        let fixedHeight = 19.5 * 50
        let fixedWidth = 9.0 * 50
        
        return ZStack{
           
            if(showDecoration1){
                ForEach(0..<outer_big_locations.count) { i in
                    makeOuterBigDecoration(decorationNumber: i, screenWidth: fixedWidth, screenHeight: fixedHeight, imageName: decoration1, imageSize: sizeDecoration1)
                        .opacity(100.0)
                }
            }
            
            if(showDecoration2){
                ForEach(0..<inner_big_locations.count) { i in
                    makeInnerBigDecoration(decorationNumber: i, screenWidth: fixedWidth, screenHeight: fixedHeight, imageName: decoration2, imageSize: sizeDecoration2)
                        .opacity(100.0)
                }
            }
            
            if(showDecoration3){
                ForEach(0..<outer_small_locations.count) { i in
                    makeOuterSmallDecoration(decorationNumber: i, screenWidth: fixedWidth, screenHeight: fixedHeight, imageName: decoration3, imageSize: sizeDecoration3)
                }
            }
            
            if(showDecoration4){
                ForEach(0..<inner_small_locations.count) { i in
                    makeInnerSmallDecoration(decorationNumber: i, screenWidth: fixedWidth, screenHeight: fixedHeight, imageName: decoration4, imageSize: sizeDecoration4)
                }
            }
        }
        
    }
}

struct DecorationView_Previews: PreviewProvider {
    static var previews: some View {
//        DecorationView(decoration1: .constant("tree_8"), showDecoration1: .constant(true), sizeDecoration1: .constant(0.12), decoration2: .constant("tree_8"), showDecoration2: .constant(true), sizeDecoration2: .constant(0.12), decoration3: .constant("rock_large"), showDecoration3: .constant(true), sizeDecoration3: .constant(0.1), decoration4: .constant("rock_small"), showDecoration4: .constant(true), sizeDecoration4: .constant(0.08))
        MountainView().previewDevice("iPhone 14")
    }
}
