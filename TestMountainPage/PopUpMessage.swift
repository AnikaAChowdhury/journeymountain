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
            let randomInt = Int.random(in: 1..<12)
            
            switch(randomInt){
            case 1:
                message = "You can make better choices!"
            case 2:
                message = "Tomorrow is a new day and a chance to make a better choice!"
            case 3:
                message = "What cancer fighting colors did you miss today?"
                
            //Category 1:  <40% in blue zone >60% in yellow red zone for case 4 to 8
            case 4:
                message = "Start planning your next meal and try to include 2 vegetables."
            case 5:
                message = "Stop and THINK, what is a better food choice!"
            case 6:
                message = "You CAN do better! "
            case 7:
                message = "Start with 2-3  better choices each day. "
            case 8:
                message = "Choose 2 fruits and 2 vegetables that you’ll make!"
            default:
                message = "Preplan next time."
            }
        }else if(todaysProgressPercent >= 50 && todaysProgressPercent < 60){
            
            //message = "50-60% message"
            
            //Category 2:  50% in the blue zone and 50% in the red and yellow zone
            
            let randomInt = Int.random(in: 1..<10)
            
            switch(randomInt){
            case 1:
                message = "I’ll try a new recipe each week getting more vegetables."
            case 2:
                message = "My diet should include more variety from the blue zone!"
            case 3:
                message = "Plant based diets are my key to weight loss and good health!"
                
            case 4:
                message = "Clean out your kitchen cabinets and frig of poor food choices!"
            default:
                message = "I will make better food choices starting with my next meal!"
            }
        
        }else if(todaysProgressPercent >= 60 && todaysProgressPercent < 70){
            let randomInt = Int.random(in: 1..<10)
            
            //Category 3: >60% in blue zone and <40% in red and yellow zone
        
            switch(randomInt){
            case 1:
                message = "I’m making better choices and getting more exercise."
            case 2:
                message = "I want to decrease inflammation in my body with plant-based foods."
            case 3:
                message = "I’m starting to like foods from the blue zone."
            case 4:
                message = "Remember this is a process and it will get better!"
            case 5:
                message = "Improving my health through good food choices and exercise"
            default:
                message = "Think about how your energy levels are improving as you eat more anti-inflammatory foods."
                
            }
        }else if(todaysProgressPercent >= 70 && todaysProgressPercent < 80){
            
            let randomInt = Int.random(in: 1..<10)
            
            switch(randomInt){
                //Category 4: >70% in the blue zone and <30% in the red and yellow zone
            case 1:
                message = "I’m steadily making better choices weekly."
            case 2:
                message = "You’ll like the new recipes that you’ll try."
            case 3:
                message = "I’m not going to quit this is a lifetime commitment."
            case 4:
                message = "My health is the single most important goal for me. "
            case 5:
                message = "I WILL continue this Life changing program"
            default:
                message = "Great food choices! These are promoting a healthy and vibrant life!"
        }
            
        }else{
            //message = "80%+ message"
            //Category 5 >80% in the blue zone and <20% in the red and yellow zone
            
            let randomInt = Int.random(in: 1..<10)
            switch(randomInt){
            case 1:
                message = "I am feeling better with this lifestyle change!"
            case 2:
                message = "How wonderful it is to be getting healthy!"
            case 3:
                message = "I’m decreasing inflammation and pain with good food choices and exercise."
            case 4:
                message = "It’s important that I stay consistent."
                
            default:
                message = "I will encourage others to make changes to improve their health"
            }
            
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
    
    func badgePopUp(screenWidth:CGFloat, message:String) -> some View {
        return Text(message)
            .frame(width: screenWidth*0.85)
            .padding(20)
            .foregroundColor(Color.white)
            .font(.system(size: 25, weight: Font.Weight.bold) )
            .multilineTextAlignment(.center)
            .background(Color.yellow)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.black, lineWidth: 6)
            )
    }
    
    func badgeEarnedPopUp(screenWidth:CGFloat, message:String, badge:String) -> some View {
        return Text("\(Image(badge))\n\(message)")
            .frame(width: screenWidth*0.85)
            .padding(20)
            .foregroundColor(Color.white)
            .font(.system(size: 25, weight: Font.Weight.bold) )
            .multilineTextAlignment(.center)
            .background(Color.yellow)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.black, lineWidth: 6)
            )
    }

    var body: some View{
        
        let screenSize:CGRect = UIScreen.main.bounds
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
