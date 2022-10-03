//
//  StepsView.swift
//  TestMountainPage
//
//  Created by1 Michael Mendel on 10/1/22.
//

import SwiftUI

func makeStep(stepNumber:Int, completedSteps:Int, screenWidth:CGFloat, screenHeight:CGFloat, stepSize:Double, x1:CGFloat, y1:CGFloat) -> some View{
    
    var stepName:String = ""
    if(stepNumber <= completedSteps){
        stepName = "completedStep_1"
    }else{
        stepName = "uncompletedStep_1"
    }
    
    let step = Image(stepName)
                .resizable()
                .scaledToFit()
                .frame(width: screenWidth * stepSize)
                .position(x: 0 + (x1)*(screenWidth),y: screenHeight - (y1)*screenHeight)
    return step
}

struct StepsView: View {
    
    @Binding var completedSteps:Int
        
    var body: some View {
        
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth:CGFloat = screenSize.width
        let screenHeight:CGFloat = screenSize.height
                
        let stepSize:Double = 0.053
        
        let locations: [[Double]] = [[0.091, 0.217], [0.151, 0.217], [0.214, 0.215], [0.278, 0.215], [0.34, 0.214], [0.4, 0.214], [0.46, 0.2135], [0.523, 0.214], [0.585, 0.214], [0.651, 0.214], [0.714, 0.214], [0.775, 0.214], [0.835, 0.222], [0.888, 0.232], [0.836, 0.244], [0.776, 0.248], [0.716, 0.252], [0.656, 0.254], [0.5945, 0.254], [0.533, 0.255], [0.47, 0.255], [0.405, 0.258], [0.345, 0.258], [0.286, 0.261], [0.225, 0.266], [0.168, 0.272], [0.125, 0.285], [0.168, 0.298], [0.225, 0.306], [0.286, 0.309], [0.353, 0.308], [0.419, 0.307], [0.483, 0.308], [0.549, 0.308], [0.61, 0.309], [0.672, 0.309], [0.735, 0.308], [0.795, 0.312], [0.852, 0.319], [0.865, 0.338], [0.80, 0.345], [0.738, 0.348], [0.676, 0.350], [0.613, 0.353], [0.551, 0.353], [0.485, 0.354], [0.415, 0.355], [0.351, 0.358], [0.287, 0.361], [0.228, 0.365], [0.18, 0.378], [0.244, 0.385], [0.302, 0.39], [0.367, 0.394], [0.427, 0.395], [0.488, 0.395], [0.554, 0.395], [0.616, 0.3955], [0.68, 0.398], [0.74, 0.402], [0.799, 0.403], [0.799, 0.422], [0.738, 0.425], [0.6795, 0.428], [0.622, 0.429], [0.562, 0.430], [0.504, 0.431], [0.447, 0.434], [0.39, 0.436], [0.331, 0.439], [0.2735, 0.440], [0.215, 0.445], [0.173, 0.460], [0.231, 0.468], [0.291, 0.469], [0.351, 0.473], [0.411, 0.473], [0.472, 0.474], [0.533, 0.475], [0.591, 0.477], [0.651, 0.4775], [0.713, 0.478], [0.771, 0.4865], [0.82, 0.499], [0.761, 0.508], [0.70, 0.51], [0.642, 0.512], [0.583, 0.5125], [0.524, 0.512], [0.461, 0.512], [0.402, 0.515], [0.342, 0.518], [0.288, 0.527], [0.244, 0.5395], [0.288, 0.5515], [0.343, 0.556], [0.401, 0.558], [0.459, 0.558], [0.516, 0.5595], [0.573, 0.558], [0.631, 0.557], [0.689, 0.557], [0.748, 0.5595], [0.796, 0.571], [0.742, 0.579], [0.688, 0.587], [0.631, 0.591], [0.572, 0.593], [0.513, 0.595], [0.453, 0.597], [0.394, 0.599], [0.336, 0.605], [0.361, 0.6215], [0.418, 0.625], [0.4765, 0.628], [0.534, 0.629], [0.59, 0.632], [0.645, 0.637], [0.679, 0.652], [0.625, 0.6575], [0.568, 0.661], [0.51, 0.663], [0.454, 0.667], [0.398, 0.671], [0.358, 0.685], [0.410, 0.694], [0.468, 0.695], [0.526, 0.696], [0.584, 0.698], [0.634, 0.707], [0.627, 0.7246], [0.569, 0.724], [0.513, 0.725], [0.456, 0.726], [0.402, 0.732], [0.393, 0.75], [0.448, 0.754], [0.506, 0.753], [0.563, 0.754], [0.613, 0.763], [0.60, 0.7805], [0.544, 0.781], [0.487, 0.7815], [0.43, 0.783], [0.395, 0.797], [0.446, 0.805], [0.503, 0.805], [0.559, 0.809], [0.58, 0.826], [0.523, 0.829], [0.466, 0.831], [0.412, 0.8367], [0.454, 0.85], [0.506, 0.858], [0.48, 0.8755]]
        
        return Group{
                //10
                Group{
                     makeStep(stepNumber: 0, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[0][0], y1: locations[0][1])
                     makeStep(stepNumber: 1, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[1][0], y1: locations[1][1])
                     makeStep(stepNumber: 2, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[2][0], y1: locations[2][1])
                     makeStep(stepNumber: 3, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[3][0], y1: locations[3][1])
                     makeStep(stepNumber: 4, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[4][0], y1: locations[4][1])
                     makeStep(stepNumber: 5, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[5][0], y1: locations[5][1])
                     makeStep(stepNumber: 6, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[6][0], y1: locations[6][1])
                     makeStep(stepNumber: 7, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[7][0], y1: locations[7][1])
                     makeStep(stepNumber: 8, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[8][0], y1: locations[8][1])
                     makeStep(stepNumber: 9, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[9][0], y1: locations[9][1])
                }
                //20
                Group{
                     makeStep(stepNumber: 10, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[10][0], y1: locations[10][1])
                     makeStep(stepNumber: 11, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[11][0], y1: locations[11][1])
                     makeStep(stepNumber: 12, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[12][0], y1: locations[12][1])
                     makeStep(stepNumber: 13, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[13][0], y1: locations[13][1])
                     makeStep(stepNumber: 14, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[14][0], y1: locations[14][1])
                     makeStep(stepNumber: 15, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[15][0], y1: locations[15][1])
                     makeStep(stepNumber: 16, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[16][0], y1: locations[16][1])
                     makeStep(stepNumber: 17, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[17][0], y1: locations[17][1])
                     makeStep(stepNumber: 18, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[18][0], y1: locations[18][1])
                     makeStep(stepNumber: 19, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[19][0], y1: locations[19][1])
                }
                //30
                Group{
                     makeStep(stepNumber: 20, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[20][0], y1: locations[20][1])
                     makeStep(stepNumber: 21, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[21][0], y1: locations[21][1])
                     makeStep(stepNumber: 22, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[22][0], y1: locations[22][1])
                     makeStep(stepNumber: 23, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[23][0], y1: locations[23][1])
                     makeStep(stepNumber: 24, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[24][0], y1: locations[24][1])
                     makeStep(stepNumber: 25, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[25][0], y1: locations[25][1])
                     makeStep(stepNumber: 26, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[26][0], y1: locations[26][1])
                     makeStep(stepNumber: 27, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[27][0], y1: locations[27][1])
                     makeStep(stepNumber: 28, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[28][0], y1: locations[28][1])
                     makeStep(stepNumber: 29, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[29][0], y1: locations[29][1])
                }
                //40
                Group{
                     makeStep(stepNumber: 30, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[30][0], y1: locations[30][1])
                     makeStep(stepNumber: 31, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[31][0], y1: locations[31][1])
                     makeStep(stepNumber: 32, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[32][0], y1: locations[32][1])
                     makeStep(stepNumber: 33, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[33][0], y1: locations[33][1])
                     makeStep(stepNumber: 34, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[34][0], y1: locations[34][1])
                     makeStep(stepNumber: 35, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[35][0], y1: locations[35][1])
                     makeStep(stepNumber: 36, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[36][0], y1: locations[36][1])
                     makeStep(stepNumber: 37, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[37][0], y1: locations[37][1])
                     makeStep(stepNumber: 38, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[38][0], y1: locations[38][1])
                     makeStep(stepNumber: 39, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[39][0], y1: locations[39][1])
                }
                //50
                Group{
                     makeStep(stepNumber: 40, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[40][0], y1: locations[40][1])
                     makeStep(stepNumber: 41, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[41][0], y1: locations[41][1])
                     makeStep(stepNumber: 42, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[42][0], y1: locations[42][1])
                     makeStep(stepNumber: 43, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[43][0], y1: locations[43][1])
                     makeStep(stepNumber: 44, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[44][0], y1: locations[44][1])
                     makeStep(stepNumber: 45, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[45][0], y1: locations[45][1])
                     makeStep(stepNumber: 46, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[46][0], y1: locations[46][1])
                     makeStep(stepNumber: 47, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[47][0], y1: locations[47][1])
                     makeStep(stepNumber: 48, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[48][0], y1: locations[48][1])
                     makeStep(stepNumber: 49, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[49][0], y1: locations[49][1])
                }
                //60
                Group{
                     makeStep(stepNumber: 50, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[50][0], y1: locations[50][1])
                     makeStep(stepNumber: 51, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[51][0], y1: locations[51][1])
                     makeStep(stepNumber: 52, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[52][0], y1: locations[52][1])
                     makeStep(stepNumber: 53, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[53][0], y1: locations[53][1])
                     makeStep(stepNumber: 54, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[54][0], y1: locations[54][1])
                     makeStep(stepNumber: 55, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[55][0], y1: locations[55][1])
                     makeStep(stepNumber: 56, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[56][0], y1: locations[56][1])
                     makeStep(stepNumber: 57, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[57][0], y1: locations[57][1])
                     makeStep(stepNumber: 58, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[58][0], y1: locations[58][1])
                     makeStep(stepNumber: 59, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[59][0], y1: locations[59][1])
                }
                //70
                Group{
                     makeStep(stepNumber: 60, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[60][0], y1: locations[60][1])
                     makeStep(stepNumber: 61, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[61][0], y1: locations[61][1])
                     makeStep(stepNumber: 62, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[62][0], y1: locations[62][1])
                     makeStep(stepNumber: 63, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[63][0], y1: locations[63][1])
                     makeStep(stepNumber: 64, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[64][0], y1: locations[64][1])
                     makeStep(stepNumber: 65, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[65][0], y1: locations[65][1])
                     makeStep(stepNumber: 66, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[66][0], y1: locations[66][1])
                     makeStep(stepNumber: 67, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[67][0], y1: locations[67][1])
                     makeStep(stepNumber: 68, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[68][0], y1: locations[68][1])
                     makeStep(stepNumber: 69, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[69][0], y1: locations[69][1])
                }
                //80
                Group{
                     makeStep(stepNumber: 70, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[70][0], y1: locations[70][1])
                     makeStep(stepNumber: 71, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[71][0], y1: locations[71][1])
                     makeStep(stepNumber: 72, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[72][0], y1: locations[72][1])
                     makeStep(stepNumber: 73, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[73][0], y1: locations[73][1])
                     makeStep(stepNumber: 74, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[74][0], y1: locations[74][1])
                     makeStep(stepNumber: 75, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[75][0], y1: locations[75][1])
                     makeStep(stepNumber: 76, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[76][0], y1: locations[76][1])
                     makeStep(stepNumber: 77, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[77][0], y1: locations[77][1])
                     makeStep(stepNumber: 78, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[78][0], y1: locations[78][1])
                     makeStep(stepNumber: 79, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[79][0], y1: locations[79][1])
                }
                //90
                Group{
                     makeStep(stepNumber: 80, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[80][0], y1: locations[80][1])
                     makeStep(stepNumber: 81, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[81][0], y1: locations[81][1])
                     makeStep(stepNumber: 82, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[82][0], y1: locations[82][1])
                     makeStep(stepNumber: 83, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[83][0], y1: locations[83][1])
                     makeStep(stepNumber: 84, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[84][0], y1: locations[84][1])
                     makeStep(stepNumber: 85, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[85][0], y1: locations[85][1])
                     makeStep(stepNumber: 86, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[86][0], y1: locations[86][1])
                     makeStep(stepNumber: 87, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[87][0], y1: locations[87][1])
                     makeStep(stepNumber: 88, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[88][0], y1: locations[88][1])
                     makeStep(stepNumber: 89, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[89][0], y1: locations[89][1])
                }
                // 100- 155
                Group{
                    //100
                    Group{
                         makeStep(stepNumber: 90, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[90][0], y1: locations[90][1])
                         makeStep(stepNumber: 91, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[91][0], y1: locations[91][1])
                         makeStep(stepNumber: 92, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[92][0], y1: locations[92][1])
                         makeStep(stepNumber: 93, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[93][0], y1: locations[93][1])
                         makeStep(stepNumber: 94, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[94][0], y1: locations[94][1])
                         makeStep(stepNumber: 95, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[95][0], y1: locations[95][1])
                         makeStep(stepNumber: 96, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[96][0], y1: locations[96][1])
                         makeStep(stepNumber: 97, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[97][0], y1: locations[97][1])
                         makeStep(stepNumber: 98, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[98][0], y1: locations[98][1])
                         makeStep(stepNumber: 99, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[99][0], y1: locations[99][1])
                    }
                    //110
                    Group{
                         makeStep(stepNumber: 100, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[100][0], y1: locations[100][1])
                         makeStep(stepNumber: 101, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[101][0], y1: locations[101][1])
                         makeStep(stepNumber: 102, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[102][0], y1: locations[102][1])
                         makeStep(stepNumber: 103, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[103][0], y1: locations[103][1])
                         makeStep(stepNumber: 104, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[104][0], y1: locations[104][1])
                         makeStep(stepNumber: 105, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[105][0], y1: locations[105][1])
                         makeStep(stepNumber: 106, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[106][0], y1: locations[106][1])
                         makeStep(stepNumber: 107, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[107][0], y1: locations[107][1])
                         makeStep(stepNumber: 108, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[108][0], y1: locations[108][1])
                         makeStep(stepNumber: 109, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[109][0], y1: locations[109][1])
                    }
                    //120
                    Group{
                         makeStep(stepNumber: 110, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[110][0], y1: locations[110][1])
                         makeStep(stepNumber: 111, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[111][0], y1: locations[111][1])
                         makeStep(stepNumber: 112, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[112][0], y1: locations[112][1])
                         makeStep(stepNumber: 113, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[113][0], y1: locations[113][1])
                         makeStep(stepNumber: 114, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[114][0], y1: locations[114][1])
                         makeStep(stepNumber: 115, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[115][0], y1: locations[115][1])
                         makeStep(stepNumber: 116, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[116][0], y1: locations[116][1])
                         makeStep(stepNumber: 117, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[117][0], y1: locations[117][1])
                         makeStep(stepNumber: 118, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[118][0], y1: locations[118][1])
                         makeStep(stepNumber: 119, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[119][0], y1: locations[119][1])
                    }
                    //130
                    Group{
                         makeStep(stepNumber: 120, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[120][0], y1: locations[120][1])
                         makeStep(stepNumber: 121, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[121][0], y1: locations[121][1])
                         makeStep(stepNumber: 122, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[122][0], y1: locations[122][1])
                         makeStep(stepNumber: 123, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[123][0], y1: locations[123][1])
                         makeStep(stepNumber: 124, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[124][0], y1: locations[124][1])
                         makeStep(stepNumber: 125, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[125][0], y1: locations[125][1])
                         makeStep(stepNumber: 126, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[126][0], y1: locations[126][1])
                         makeStep(stepNumber: 127, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[127][0], y1: locations[127][1])
                         makeStep(stepNumber: 128, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[128][0], y1: locations[128][1])
                         makeStep(stepNumber: 129, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[129][0], y1: locations[129][1])
                    }
                    //140
                    Group{
                         makeStep(stepNumber: 130, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[130][0], y1: locations[130][1])
                         makeStep(stepNumber: 131, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[131][0], y1: locations[131][1])
                         makeStep(stepNumber: 132, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[132][0], y1: locations[132][1])
                         makeStep(stepNumber: 133, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[133][0], y1: locations[133][1])
                         makeStep(stepNumber: 134, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[134][0], y1: locations[134][1])
                         makeStep(stepNumber: 135, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[135][0], y1: locations[135][1])
                         makeStep(stepNumber: 136, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[136][0], y1: locations[136][1])
                         makeStep(stepNumber: 137, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[137][0], y1: locations[137][1])
                         makeStep(stepNumber: 138, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[138][0], y1: locations[138][1])
                         makeStep(stepNumber: 139, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[139][0], y1: locations[139][1])
                    }
                    //150
                    Group{
                         makeStep(stepNumber: 140, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[140][0], y1: locations[140][1])
                         makeStep(stepNumber: 141, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[141][0], y1: locations[141][1])
                         makeStep(stepNumber: 142, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[142][0], y1: locations[142][1])
                         makeStep(stepNumber: 143, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[143][0], y1: locations[143][1])
                         makeStep(stepNumber: 144, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[144][0], y1: locations[144][1])
                         makeStep(stepNumber: 145, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[145][0], y1: locations[145][1])
                         makeStep(stepNumber: 146, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[146][0], y1: locations[146][1])
                         makeStep(stepNumber: 147, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[147][0], y1: locations[147][1])
                         makeStep(stepNumber: 148, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[148][0], y1: locations[148][1])
                         makeStep(stepNumber: 149, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[149][0], y1: locations[149][1])
                    }
                    //155
                    Group{
                         makeStep(stepNumber: 150, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[150][0], y1: locations[150][1])
                         makeStep(stepNumber: 151, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[151][0], y1: locations[151][1])
                         makeStep(stepNumber: 152, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[152][0], y1: locations[152][1])
                         makeStep(stepNumber: 153, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[153][0], y1: locations[153][1])
                         makeStep(stepNumber: 154, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize, x1: locations[154][0], y1: locations[154][1])
                    }
                }
        }
    }
}

struct StepsView_Previews: PreviewProvider {
    static var previews: some View {
        StepsView(completedSteps: .constant(0))
            .previewDevice("iPhone 12 mini")
    }
}
