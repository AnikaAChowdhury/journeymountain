//
//  CharacterView.swift
//  TestMountainPage
//
//  Created by Michael Mendel on 10/1/22.
//

import SwiftUI

struct CharacterView: View {
    
    let locations: [[Double]] = [[0.091, 0.217], [0.151, 0.217], [0.214, 0.215], [0.278, 0.215], [0.34, 0.214], [0.4, 0.214], [0.46, 0.2135], [0.523, 0.214], [0.585, 0.214], [0.651, 0.214], [0.714, 0.214], [0.775, 0.214], [0.835, 0.222], [0.888, 0.232], [0.836, 0.244], [0.776, 0.248], [0.716, 0.252], [0.656, 0.254], [0.5945, 0.254], [0.533, 0.255], [0.47, 0.255], [0.405, 0.258], [0.345, 0.258], [0.286, 0.261], [0.225, 0.266], [0.168, 0.272], [0.125, 0.285], [0.168, 0.298], [0.225, 0.306], [0.286, 0.309], [0.353, 0.308], [0.419, 0.307], [0.483, 0.308], [0.549, 0.308], [0.61, 0.309], [0.672, 0.309], [0.735, 0.308], [0.795, 0.312], [0.852, 0.319], [0.865, 0.338], [0.80, 0.345], [0.738, 0.348], [0.676, 0.350], [0.613, 0.353], [0.551, 0.353], [0.485, 0.354], [0.415, 0.355], [0.351, 0.358], [0.287, 0.361], [0.228, 0.365], [0.18, 0.378], [0.244, 0.385], [0.302, 0.39], [0.367, 0.394], [0.427, 0.395], [0.488, 0.395], [0.554, 0.395], [0.616, 0.3955], [0.68, 0.398], [0.74, 0.402], [0.799, 0.403], [0.799, 0.422], [0.738, 0.425], [0.6795, 0.428], [0.622, 0.429], [0.562, 0.430], [0.504, 0.431], [0.447, 0.434], [0.39, 0.436], [0.331, 0.439], [0.2735, 0.440], [0.215, 0.445], [0.173, 0.460], [0.231, 0.468], [0.291, 0.469], [0.351, 0.473], [0.411, 0.473], [0.472, 0.474], [0.533, 0.475], [0.591, 0.477], [0.651, 0.4775], [0.713, 0.478], [0.771, 0.4865], [0.82, 0.499], [0.761, 0.508], [0.70, 0.51], [0.642, 0.512], [0.583, 0.5125], [0.524, 0.512], [0.461, 0.512], [0.402, 0.515], [0.342, 0.518], [0.288, 0.527], [0.244, 0.5395], [0.288, 0.5515], [0.343, 0.556], [0.401, 0.558], [0.459, 0.558], [0.516, 0.5595], [0.573, 0.558], [0.631, 0.557], [0.689, 0.557], [0.748, 0.5595], [0.796, 0.571], [0.742, 0.579], [0.688, 0.587], [0.631, 0.591], [0.572, 0.593], [0.513, 0.595], [0.453, 0.597], [0.394, 0.599], [0.336, 0.605], [0.361, 0.6215], [0.418, 0.625], [0.4765, 0.628], [0.534, 0.629], [0.59, 0.632], [0.645, 0.637], [0.679, 0.652], [0.625, 0.6575], [0.568, 0.661], [0.51, 0.663], [0.454, 0.667], [0.398, 0.671], [0.358, 0.685], [0.410, 0.694], [0.468, 0.695], [0.526, 0.696], [0.584, 0.698], [0.634, 0.707], [0.627, 0.7246], [0.569, 0.724], [0.513, 0.725], [0.456, 0.726], [0.402, 0.732], [0.393, 0.75], [0.448, 0.754], [0.506, 0.753], [0.563, 0.754], [0.613, 0.763], [0.60, 0.7805], [0.544, 0.781], [0.487, 0.7815], [0.43, 0.783], [0.395, 0.797], [0.446, 0.805], [0.503, 0.805], [0.559, 0.809], [0.58, 0.826], [0.523, 0.829], [0.466, 0.831], [0.412, 0.8367], [0.454, 0.85], [0.506, 0.858], [0.48, 0.8755]]
    
    @Binding var characterPosition:Int
    
    var body: some View {
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
        
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth:CGFloat = screenSize.width
        let screenHeight:CGFloat = screenSize.height
        let fixedHeight = 19.5 * 50
        let fixedWidth = 9.0 * 50
        let firstDay = getFirstDay()

        func getDirection() -> String{
            var characterDirection:String = "right"
            if(characterPosition != -1 && characterPosition != 154){
                let x1 = locations[characterPosition][0]
                let x2 = locations[characterPosition+1][0]
                if(x1 < x2) {
                   characterDirection = "right"
                }else{
                    characterDirection = "left"
                }
            }
            if(characterPosition == 154){
                characterDirection = "left"
            }
            return characterDirection
        }

        let characterName = "character_" + getDirection()
        
        if(characterPosition == -1){
            return  Image(characterName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: fixedWidth * 0.1)
                        .position(x: 0 + (locations[firstDay][0])*(fixedWidth) - (0.05)*(fixedWidth),y: fixedHeight - (locations[firstDay][1])*fixedHeight - (0.035)*fixedHeight)
            
        }
        return Image(characterName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: fixedWidth * 0.1)
                    .position(x: 0 + (locations[characterPosition][0])*(fixedWidth),y: fixedHeight - (locations[characterPosition][1])*fixedHeight - (0.035)*fixedHeight)
    
    }
}

struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView(characterPosition: .constant(0))
    }
}
