/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 1
 Author: Pham Thanh Dat
 ID: 3678437
 Created  date: 29/07/2022
 Last modified: 07/08/2022
 Acknowledgement: Acknowledge the resources that you use here.
 */

import SwiftUI

struct BackgroundColor: View {
    var body: some View {
        
        GeometryReader { geometry in
            Path { path in
                path.addRect(CGRect( x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
            }
            .fill(.linearGradient(Gradient (colors: [Color(red: 245/255.0, green: 130/255.0, blue: 130/255.0),Color(red: 240/255.0, green: 168/255.0, blue: 211/255.0)]),
                                  startPoint: UnitPoint(x:0, y:0), endPoint: UnitPoint(x:1, y:1)
                                 ))
            
        }
        .ignoresSafeArea()
    }
}
struct ButtonColor: View {
    var body: some View {
        
        GeometryReader { geometry in
            Path { path in
                path.addRect(CGRect( x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
            }
            .fill(.linearGradient(Gradient (colors: [Color(red: 240/255.0, green: 168/255.0, blue: 211/255.0),Color(red: 245/255.0, green: 130/255.0, blue: 130/255.0)]),
                                  startPoint: UnitPoint(x:0, y:0), endPoint: UnitPoint(x:1, y:1)
                                 ))
            
        }
        .ignoresSafeArea()
    }
}
struct WBackgroundColor_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundColor()
    }
}
