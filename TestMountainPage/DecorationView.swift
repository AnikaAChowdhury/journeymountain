//
//  DecorationView.swift
//  TestMountainPage
//
//  Created by Michael Mendel on 10/17/22.
//

import SwiftUI

let small_locations: [[Double]] = [[0.091, 0.217], [0.151, 0.217], [0.214, 0.215], [0.278, 0.215], [0.34, 0.214], [0.4, 0.214], [0.46, 0.2135], [0.523, 0.214]]

let big_locations: [[Double]] = [
    [0.26, 0.64], [0.32, 0.66],
    [0.155, 0.53], [0.22, 0.51],
    [0.10, 0.40], [0.17, 0.42],
    [0.06, 0.265], [0.523, 0.214]]


func makeSmallDecoration(decorationNumber:Int, screenWidth:CGFloat, screenHeight:CGFloat) -> some View{
    return Text("d")
}

func makeBigDecoration(decorationNumber:Int, screenWidth:CGFloat, screenHeight:CGFloat) -> some View{
    
    let x1 = big_locations[decorationNumber][0]
    let y1 = big_locations[decorationNumber][1]

    let d = Image("tree_1")
                .resizable()
                .scaledToFit()
                .frame(width: screenWidth * (0.12))
                .position(x: 0 + (x1)*(screenWidth),y: screenHeight - (y1)*screenHeight)
    return d
}

struct DecorationView: View {
    
    var body: some View {
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth:CGFloat = screenSize.width
        let screenHeight:CGFloat = screenSize.height
        
        return ZStack{
            makeBigDecoration(decorationNumber: 0, screenWidth:screenWidth, screenHeight:screenHeight)
            makeBigDecoration(decorationNumber: 1, screenWidth:screenWidth, screenHeight:screenHeight)
            makeBigDecoration(decorationNumber: 2, screenWidth:screenWidth, screenHeight:screenHeight)
            makeBigDecoration(decorationNumber: 3, screenWidth:screenWidth, screenHeight:screenHeight)
            makeBigDecoration(decorationNumber: 4, screenWidth:screenWidth, screenHeight:screenHeight)
            makeBigDecoration(decorationNumber: 5, screenWidth:screenWidth, screenHeight:screenHeight)
            makeBigDecoration(decorationNumber: 6, screenWidth:screenWidth, screenHeight:screenHeight)
        }
        
    }
}

struct DecorationView_Previews: PreviewProvider {
    static var previews: some View {
        DecorationView()
    }
}
