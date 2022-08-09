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

struct WelcomeBackground: View {
    var body: some View {
        
        GeometryReader { geometry in
            Path { path in
                path.addRect(CGRect( x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
            }
            .fill(.linearGradient(Gradient (colors: [Color(red: 245/255.0, green: 204/255.0, blue: 204/255.0),Color(red: 154/255.0, green: 55/255.0, blue: 126/255.0)]),
                                  startPoint: UnitPoint(x:0, y:0), endPoint: UnitPoint(x:1, y:1)
                                 ))
            Path { path in
                path.move(to: CGPoint(x: 0, y:0))
                path.addLine(to: CGPoint(x: UIScreen.main.bounds.size.width, y:0))
                path.addLine(to: CGPoint(x: UIScreen.main.bounds.size.width, y:30))
                path.addQuadCurve(to: CGPoint(x:0, y:300 ), control: CGPoint(x: UIScreen.main.bounds.size.width/3, y:100))
            }
            .fill(Color(red: 245 / 255, green: 214 / 255, blue: 230 / 255))
            Path { path in
                path.addEllipse(in: CGRect(origin: CGPoint(x: 60, y: 50), size: CGSize(width: 70, height: 70)))
                
                
            }
            .fill(Color.white)
            .shadow(color:.gray.opacity(0.8), radius: 10, x: 1, y: 1)
            Path { path in
                path.move(to: CGPoint(x: 0, y:0))
                path.addLine(to: CGPoint(x: UIScreen.main.bounds.size.width, y:0))
                path.addLine(to: CGPoint(x: UIScreen.main.bounds.size.width, y:30))
                path.addQuadCurve(to: CGPoint(x:0, y:300 ), control: CGPoint(x: UIScreen.main.bounds.size.width/3, y:100))
            }
            .fill(Color(red: 245 / 255, green: 214 / 255, blue: 230 / 255))
            Path { path in
                path.addEllipse(in: CGRect(origin: CGPoint(x: 60, y: 50), size: CGSize(width: 70, height: 70)))
                
                
            }
            .fill(Color.white)
            .shadow(color:.gray.opacity(0.8), radius: 10, x: 1, y: 1)
        }
        .ignoresSafeArea()
    }
}

struct WelcomeBackground_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeBackground()
    }
}
