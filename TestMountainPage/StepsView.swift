//
//  StepsView.swift
//  TestMountainPage
//
//  Created by1 Michael Mendel on 10/1/22.
//

import SwiftUI

let locations: [[Double]] = [[0.091, 0.217], [0.151, 0.217], [0.214, 0.215], [0.278, 0.215], [0.34, 0.214], [0.4, 0.214], [0.46, 0.2135], [0.523, 0.214], [0.585, 0.214], [0.651, 0.214], [0.714, 0.214], [0.775, 0.214], [0.835, 0.222], [0.888, 0.232], [0.836, 0.244], [0.776, 0.248], [0.716, 0.252], [0.656, 0.254], [0.5945, 0.254], [0.533, 0.255], [0.47, 0.255], [0.405, 0.258], [0.345, 0.258], [0.286, 0.261], [0.225, 0.266], [0.168, 0.272], [0.125, 0.285], [0.168, 0.298], [0.225, 0.306], [0.286, 0.309], [0.353, 0.308], [0.419, 0.307], [0.483, 0.308], [0.549, 0.308], [0.61, 0.309], [0.672, 0.309], [0.735, 0.308], [0.795, 0.312], [0.852, 0.319], [0.865, 0.338], [0.80, 0.345], [0.738, 0.348], [0.676, 0.350], [0.613, 0.353], [0.551, 0.353], [0.485, 0.354], [0.415, 0.355], [0.351, 0.358], [0.287, 0.361], [0.228, 0.365], [0.18, 0.378], [0.244, 0.385], [0.302, 0.39], [0.367, 0.394], [0.427, 0.395], [0.488, 0.395], [0.554, 0.395], [0.616, 0.3955], [0.68, 0.398], [0.74, 0.402], [0.799, 0.403], [0.799, 0.422], [0.738, 0.425], [0.6795, 0.428], [0.622, 0.429], [0.562, 0.430], [0.504, 0.431], [0.447, 0.434], [0.39, 0.436], [0.331, 0.439], [0.2735, 0.440], [0.215, 0.445], [0.173, 0.460], [0.231, 0.468], [0.291, 0.469], [0.351, 0.473], [0.411, 0.473], [0.472, 0.474], [0.533, 0.475], [0.591, 0.477], [0.651, 0.4775], [0.713, 0.478], [0.771, 0.4865], [0.82, 0.499], [0.761, 0.508], [0.70, 0.51], [0.642, 0.512], [0.583, 0.5125], [0.524, 0.512], [0.461, 0.512], [0.402, 0.515], [0.342, 0.518], [0.288, 0.527], [0.244, 0.5395], [0.288, 0.5515], [0.343, 0.556], [0.401, 0.558], [0.459, 0.558], [0.516, 0.5595], [0.573, 0.558], [0.631, 0.557], [0.689, 0.557], [0.748, 0.5595], [0.796, 0.571], [0.742, 0.579], [0.688, 0.587], [0.631, 0.591], [0.572, 0.593], [0.513, 0.595], [0.453, 0.597], [0.394, 0.599], [0.336, 0.605], [0.361, 0.6215], [0.418, 0.625], [0.4765, 0.628], [0.534, 0.629], [0.59, 0.632], [0.645, 0.637], [0.679, 0.652], [0.625, 0.6575], [0.568, 0.661], [0.51, 0.663], [0.454, 0.667], [0.398, 0.671], [0.358, 0.685], [0.410, 0.694], [0.468, 0.695], [0.526, 0.696], [0.584, 0.698], [0.634, 0.707], [0.627, 0.7246], [0.569, 0.724], [0.513, 0.725], [0.456, 0.726], [0.402, 0.732], [0.393, 0.75], [0.448, 0.754], [0.506, 0.753], [0.563, 0.754], [0.613, 0.763], [0.60, 0.7805], [0.544, 0.781], [0.487, 0.7815], [0.43, 0.783], [0.395, 0.797], [0.446, 0.805], [0.503, 0.805], [0.559, 0.809], [0.58, 0.826], [0.523, 0.829], [0.466, 0.831], [0.412, 0.8367], [0.454, 0.85], [0.506, 0.858], [0.48, 0.8755]]

let locations2: [[Double]] = [[0.091, 0.217], [0.151, 0.217], [0.214, 0.215], [0.278, 0.215], [0.34, 0.214], [0.4, 0.214], [0.46, 0.2135], [0.523, 0.214], [0.585, 0.214], [0.651, 0.214], [0.714, 0.214], [0.775, 0.214], [0.835, 0.222], [0.888, 0.232], [0.836, 0.244], [0.776, 0.248], [0.716, 0.252], [0.656, 0.254], [0.5945, 0.254], [0.533, 0.255], [0.47, 0.255], [0.405, 0.258], [0.345, 0.258], [0.286, 0.261], [0.225, 0.266], [0.168, 0.272], [0.125, 0.285], [0.168, 0.298], [0.225, 0.306], [0.286, 0.309], [0.353, 0.308], [0.419, 0.307], [0.483, 0.308], [0.549, 0.308], [0.61, 0.309], [0.672, 0.309], [0.735, 0.308], [0.795, 0.312], [0.852, 0.319], [0.865, 0.338], [0.80, 0.345], [0.738, 0.348], [0.676, 0.350], [0.613, 0.353], [0.551, 0.353], [0.485, 0.354], [0.415, 0.355], [0.351, 0.358], [0.287, 0.361], [0.228, 0.365], [0.18, 0.378], [0.244, 0.385], [0.302, 0.39], [0.367, 0.394], [0.427, 0.395], [0.488, 0.395], [0.554, 0.395], [0.616, 0.3955], [0.68, 0.398], [0.74, 0.402], [0.799, 0.403], [0.799, 0.422], [0.738, 0.425], [0.6795, 0.428], [0.622, 0.429], [0.562, 0.430], [0.504, 0.431], [0.447, 0.434], [0.39, 0.436], [0.331, 0.439], [0.2735, 0.440], [0.215, 0.445], [0.173, 0.460], [0.231, 0.468], [0.291, 0.469], [0.351, 0.473], [0.411, 0.473], [0.472, 0.474], [0.533, 0.475], [0.591, 0.477], [0.651, 0.4775], [0.713, 0.478], [0.771, 0.4865], [0.82, 0.499], [0.761, 0.508], [0.70, 0.51], [0.642, 0.512], [0.583, 0.5125], [0.524, 0.512], [0.461, 0.512], [0.402, 0.515], [0.342, 0.518], [0.288, 0.527], [0.244, 0.5395], [0.288, 0.5515], [0.343, 0.556], [0.401, 0.558], [0.459, 0.558], [0.516, 0.5595], [0.573, 0.558], [0.631, 0.557], [0.689, 0.557], [0.748, 0.5595], [0.796, 0.571], [0.742, 0.579], [0.688, 0.587], [0.631, 0.591], [0.572, 0.593], [0.513, 0.595], [0.453, 0.597], [0.394, 0.599], [0.336, 0.605], [0.361, 0.6215], [0.418, 0.625], [0.4765, 0.628], [0.534, 0.629], [0.59, 0.632], [0.645, 0.637], [0.679, 0.652], [0.625, 0.6575], [0.568, 0.661], [0.51, 0.663], [0.454, 0.667], [0.398, 0.671], [0.358, 0.685], [0.410, 0.694], [0.468, 0.695], [0.526, 0.696], [0.584, 0.698], [0.634, 0.707], [0.627, 0.7246], [0.569, 0.724], [0.513, 0.725], [0.456, 0.726], [0.402, 0.732], [0.393, 0.75], [0.448, 0.754], [0.506, 0.753], [0.563, 0.754], [0.613, 0.763], [0.60, 0.7805], [0.544, 0.781], [0.487, 0.7815], [0.43, 0.783], [0.395, 0.797], [0.446, 0.805], [0.503, 0.805], [0.559, 0.809], [0.58, 0.826], [0.523, 0.829], [0.466, 0.831], [0.412, 0.8367], [0.454, 0.85], [0.506, 0.858], [0.48, 0.8755]]

func getFirstDay() -> Int{
    let days = getDaysInMonth()
    let startIndex = (31 - days) * 5
    return startIndex
}

func getDaysInMonth() -> Int{
    let calendar = Calendar.current
    let date = Date()
    // Calculate start and end of the current year (or month with `.month`):
    let interval = calendar.dateInterval(of: .month, for: date)! //change year it will no of days in a year , change it to month it will give no of days in a current month
    // Compute difference in days:
    let days = calendar.dateComponents([.day], from: interval.start, to: interval.end).day!
    return days
}

func getMonthNumber() -> Int{
    let date = Date()
    let calendarDate = Calendar.current.dateComponents([.day, .year, .month], from: date)
    return (Int(calendarDate.month ?? 1))
}

func getDayNumber() -> Int{
    let date = Date()
    let calendarDate = Calendar.current.dateComponents([.day, .year, .month], from: date)
    return (Int(calendarDate.day ?? 1))
}

func makeStep(starMaker:Int, stepNumber:Int, completedSteps:Int, screenWidth:CGFloat, screenHeight:CGFloat, stepSize:Double) -> some View{
    
    let x1 = locations[stepNumber][0]
    let y1 = locations[stepNumber][1]
    
    var completedName:String = ""
    if(stepNumber <= completedSteps){
        completedName = "completed"
    }else{
        completedName = "uncompleted"
    }
    
    var visible = 100.0
    if(stepNumber < getFirstDay()){
        visible = 0.0
    }
    
    if(completedSteps > 12-1 && stepNumber <= starMaker){
        let starVersion = ((stepNumber+1) % 3) + 1
        let starStep = Image(completedName + "StarStep_1_" + String(starVersion))
                    .resizable()
                    .scaledToFit()
                    .frame(width: screenWidth * stepSize)
                    .position(x: 0 + (x1)*(screenWidth),y: screenHeight - (y1)*screenHeight)
                    .opacity(visible)
        return starStep
    }
    
    let step = Image(completedName + "Step_1")
                .resizable()
                .scaledToFit()
                .frame(width: screenWidth * stepSize)
                .position(x: 0 + (x1)*(screenWidth),y: screenHeight - (y1)*screenHeight)
                .opacity(visible)
    return step
}

struct StepsView: View {
    
    @Binding var completedSteps:Int
    @Binding var starMaker:Int

    var body: some View {
        
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth:CGFloat = screenSize.width
        let screenHeight:CGFloat = screenSize.height
        let stepSize:Double = 0.053

        return Group{
            //10
            Group{
                makeStep(starMaker: starMaker, stepNumber: 0, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 1, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 2, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 3, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 4, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 5, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 6, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 7, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 8, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 9, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
            }
            //20
            Group{
                makeStep(starMaker: starMaker, stepNumber: 10, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 11, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 12, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 13, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 14, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 15, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 16, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 17, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 18, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 19, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
            }
            //30
            Group{
                makeStep(starMaker: starMaker, stepNumber: 20, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 21, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 22, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 23, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 24, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 25, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 26, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 27, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 28, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 29, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
            }
            //40
            Group{
                makeStep(starMaker: starMaker, stepNumber: 30, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 31, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 32, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 33, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 34, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 35, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 36, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 37, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 38, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 39, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
            }
            //50
            Group{
                makeStep(starMaker: starMaker, stepNumber: 40, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 41, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 42, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 43, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 44, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 45, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 46, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 47, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 48, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 49, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
            }
            //60
            Group{
                makeStep(starMaker: starMaker, stepNumber: 50, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 51, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 52, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 53, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 54, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 55, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 56, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 57, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 58, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 59, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
            }
            //70
            Group{
                makeStep(starMaker: starMaker, stepNumber: 60, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 61, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 62, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 63, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 64, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 65, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 66, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 67, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 68, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 69, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
            }
            //80
            Group{
                makeStep(starMaker: starMaker, stepNumber: 70, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 71, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 72, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 73, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 74, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 75, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 76, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 77, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 78, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 79, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
            }
            //90
            Group{
                makeStep(starMaker: starMaker, stepNumber: 80, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 81, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 82, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 83, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 84, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 85, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 86, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 87, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 88, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                makeStep(starMaker: starMaker, stepNumber: 89, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
            }
            Group{
                //100
                Group{
                    makeStep(starMaker: starMaker, stepNumber: 90, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 91, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 92, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 93, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 94, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 95, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 96, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 97, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 98, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 99, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                }
                //110
                Group{
                    makeStep(starMaker: starMaker, stepNumber: 100, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 101, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 102, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 103, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 104, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 105, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 106, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 107, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 108, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 109, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                }
                //120
                Group{
                    makeStep(starMaker: starMaker, stepNumber: 110, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 111, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 112, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 113, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 114, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 115, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 116, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 117, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 118, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 119, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                }
                //130
                Group{
                    makeStep(starMaker: starMaker, stepNumber: 120, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 121, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 122, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 123, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 124, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 125, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 126, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 127, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 128, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 129, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                }
                //140
                Group{
                    makeStep(starMaker: starMaker, stepNumber: 130, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 131, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 132, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 133, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 134, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 135, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 136, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 137, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 138, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 139, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                }
                //150
                Group{
                    makeStep(starMaker: starMaker, stepNumber: 140, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 141, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 142, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 143, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 144, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 145, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 146, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 147, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 148, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 149, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                }
                //155
                Group{
                    makeStep(starMaker: starMaker, stepNumber: 150, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 151, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 152, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 153, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                    makeStep(starMaker: starMaker, stepNumber: 154, completedSteps: completedSteps, screenWidth: screenWidth, screenHeight: screenHeight, stepSize:stepSize)
                }
            }
        }
    }
}

struct StepsView_Previews: PreviewProvider {
    static var previews: some View {
        MountainView()
            .previewDevice("iPhone 12 mini")
    }
}
