import SwiftUI

struct BadgePagePopUp: View {
    
    @Binding var message:String
    let fixedHeight = 19.5 * 50
    let fixedWidth = 9.0 * 50
    
    func badgePopUp() -> some View {
        return Text(message)
            .frame(width: fixedWidth*0.70)
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

        badgePopUp()
        
    }

    struct BadgePagePopUp_Previews: PreviewProvider {
        static var previews: some View {
            BadgePagePopUp(message: .constant(""))
        }
    }
    
}
