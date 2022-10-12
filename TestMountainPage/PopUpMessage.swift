//
//  PopUpMessage.swift
//  TestMountainPage
//
//  Created by Chowdhury,Anika on 10/12/22.
//



//


import SwiftUI



struct FoodChoicesPercent: Identifiable {
    var id: String { motivationalQuote}
    
    
    let motivationalQuote: String
    
}
struct BlueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color(red: 0, green: 0, blue: 0.5))
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}



struct PopUpMessage: View {
    
    

    @State private var showingPopUpMessage = false
    @State private var msg = ""
    @State private var todaysProgress: FoodChoicesPercent?
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text("Behavioral Prompts")
                .padding()
                .background(.yellow)
                .font(.headline)
            
            Button(">=60%")
            {
                msg = "Great Choice!"
                todaysProgress = FoodChoicesPercent(motivationalQuote:"You achieved >=60% from Blue Zone.Think about how your energy levels are improving as you eat more anti-inflammatory foods")
            }
            .buttonStyle(BlueButton())
            
            Button("<=50%")
            {
                msg = "You can do it!"
                todaysProgress = FoodChoicesPercent(motivationalQuote:"You achieved <=50% from Blue Zone.Tomorrow is a new day and a chance to make a better choice")
            }
            .buttonStyle(BlueButton())
            
            Button(">=70%")
            {
                msg = "Excellent!"
                todaysProgress = FoodChoicesPercent(motivationalQuote:"You achieved >=70% from Blue Zone.Great food choices! These are promoting healthy, vibrant life!")
            }
            .buttonStyle(BlueButton())
            
            Button("Weight_Loss_of_5%")
            {
                msg = "Keep going!"
                todaysProgress = FoodChoicesPercent(motivationalQuote:"Now that you're down 5% of your current weight, you're noticing a reduction in (Blood Glucose, Blood pressure, etc) and getting closer to talking with your physician about reducing your meds!")
            }
            .buttonStyle(BlueButton())
            
            Button("Weight_Loss_of_10%")
            {
                msg = "You are in the right path!"
                todaysProgress = FoodChoicesPercent(motivationalQuote:"Now that you're down 10%, I bet you're noticing more ease/energy (walking dog; enjoying jogging!")
            }
            .buttonStyle(BlueButton())
            
        }
        
        .alert(item: $todaysProgress) { show in
                    Alert(title: Text(show.motivationalQuote), message: Text(msg), dismissButton: .cancel(Text("Close")))
                }
        
    
    }
}


struct PopUpMessage_Previews: PreviewProvider {
    static var previews: some View {
        PopUpMessage()
    }
}

