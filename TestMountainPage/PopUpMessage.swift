//
//  PopUpMessage.swift
//  TestMountainPage
//
//  Created by Chowdhury,Anika on 10/12/22


import SwiftUI

struct PopUpMessage: View {
    @Binding var todaysProgressPercent:Int
    
    func messageCalc() -> String {
        var message = ""
        
        if(todaysProgressPercent < 50){
            var randomInt = Int.random(in: 1..<9)
            
            switch(randomInt){
            case 1:
                message = "You can make better choices"
            case 2:
                message = "Tomorrow is a new day and a chance to make a better choice!"
            case 3:
                message = "What cancer fighting colors did you miss today?"
            case 4:
                message = "Start planning your next meal and plan to include 2 vegetables."
            default:
                message = "Preplan next time."
            }
        }else if(todaysProgressPercent >= 50 && todaysProgressPercent < 60){
            message = "50-60% message"
        }else if(todaysProgressPercent >= 60 && todaysProgressPercent < 70){
            message = "Think about how your energy levels are improving as you eat more anti-inflammatory foods"
        }else if(todaysProgressPercent >= 70 && todaysProgressPercent < 80){
            message = "Great food choices! These are promoting healthy, vibrant life!"
        }else{
            message = "80%+ message"
        }
        return message
    }
    
    func getBackgroundColor() -> Color{
        if(todaysProgressPercent < 50){
            return Color.red
        }else if(todaysProgressPercent >= 50 && todaysProgressPercent < 60){
            return Color.pink
        }else if(todaysProgressPercent >= 60 && todaysProgressPercent < 70){
            return Color.orange
        }else if(todaysProgressPercent >= 70 && todaysProgressPercent < 80){
            return Color.yellow
        }else{
            return Color.green
        }
    }
    
    func makePopUp(screenWidth:CGFloat) -> some View{
        return Text(messageCalc())
                .frame(width: screenWidth*0.85)
                .padding(20)
                .foregroundColor(Color.white)
                .font(.system(size: 33, weight: Font.Weight.bold) )
                .multilineTextAlignment(.center)
                .background(getBackgroundColor())
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(.black, lineWidth: 6)
                )
    }

    var body: some View{
        
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth:CGFloat = screenSize.width
        let screenHeight:CGFloat = screenSize.height

        makePopUp(screenWidth: screenWidth)
    }

    struct PopUpMessage_Previews: PreviewProvider {
        static var previews: some View {
            PopUpMessage(todaysProgressPercent: .constant(70))
        }
        
    }
}
