import SwiftUI

struct BadgeEarnedPopUp: View {
    @Binding var message:String
    @Binding var badge:String
    let fixedHeight = 19.5 * 50
    let fixedWidth = 9.0 * 50
    
    func badgeEarnedPopUp() -> some View {
        return Text("\(Image(badge))\n\(message)")
            .frame(width: fixedWidth*0.85)
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

        badgeEarnedPopUp()
        
    }

    struct BadgeEarnedPopUp_Previews: PreviewProvider {
        static var previews: some View {
            BadgeEarnedPopUp(message: .constant(""), badge: .constant(""))
        }
    }
    
}
