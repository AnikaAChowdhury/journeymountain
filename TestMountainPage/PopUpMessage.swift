//
//  PopUpMessage.swift
//  TestMountainPage
//
//  Created by Chowdhury,Anika on 10/12/22.
//



import SwiftUI

struct TextFieldClearButton: ViewModifier {
    @Binding var fieldText: String

    func body(content: Content) -> some View {
        content
            .overlay {
                if !fieldText.isEmpty {
                    HStack {
                        Spacer()
                        Button {
                            fieldText = ""
                        } label: {
                            Image(systemName: "multiply.circle.fill")
                       }
                        .foregroundColor(.secondary)
                        .padding(.trailing, 4)
                    }
                }
            }
    }
}

extension View {
    func showClearButton(_ text: Binding<String>)->some View {
        self.modifier(TextFieldClearButton(fieldText: text))
    }
}


struct PopUpMessage: View {
    @Binding var progressPercent:Int
    @State private var showPopUpMessage = false
    @State var randomInt = Int.random(in: 1..<5)
    
    @State private var msgs = ""
    @State private var fiftyPercent = false
    @State private var SixtyPercent = false
    @State private var SeventyPercent = false
    
    
    
    func messageCalc()
    {
        if(progressPercent < 50)
        {
            fiftyPercent = true
            
            randomInt = Int.random(in: 1..<9)
            
            if(randomInt == 1)
            {
                msgs = "You can make better choices"
            }
            else if(randomInt == 2)
            {
                msgs = "Tomorrow is a new day and a chance to make a better choice!"
            }
            
            else if(randomInt == 3)
            {
                msgs = "What cancer fighting colors did you miss today?"
                
            }
            else if(randomInt == 4)
            {
                msgs = "Start planning your next meal and plan to include 2 vegetables."
                
            }
            else
            {
                msgs = "Preplan next time."
                
            }
            
            
        }
        if(progressPercent >= 70){
            
            
  
            msgs = "Great food choices! These are promoting healthy, vibrant life!"
            
        }
        if(progressPercent <= 60 && progressPercent >= 50){
           
            
            msgs = "Think about how your energy levels are improving as you eat more anti-inflammatory foods"
            
            
            
        }
        UserDefaults.standard.set(progressPercent, forKey: "progressPercent")    }
    @FocusState private var isTextFieldFocused: Bool
    var body: some View
    {
    
        
        VStack(spacing: 20)
        {
            Text(msgs)
              .multilineTextAlignment(.leading)
              .textFieldStyle(.roundedBorder)
              .foregroundColor(.black)
                             .background(Color(red: 0.5, green: 0.8, blue: 0.2))

              
              .focused($isTextFieldFocused)              .showClearButton($msgs)
             
        }
        
        .onAppear{messageCalc()}
        .padding(0.4)
                                    
                              
    } 
    struct PopUpMessage_Previews: PreviewProvider {
        static var previews: some View {
            PopUpMessage(progressPercent: .constant(2))
            
        }
        
    }
}


