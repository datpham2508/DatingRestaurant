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
struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 20, weight: .bold, design: .default))
            .padding()
            .frame(width: 300, height:50.0)
            .background(ButtonColor())
            .foregroundColor(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
struct BookingView: View {
    @State var selection: String = "1"
    @State private var textFieldSelection = ""
    @State private var phoneFieldSelection = ""
    @State private var noteFieldSelection = ""
    @State private var isShowingDetailView = false
    @State private var isToggleOn = false
    @State private var datePickerSelection = Date()
    
    var body: some View {
        
        VStack{
            Form {
                
                Section(header: Text("Your name:")){
                    TextField("Ex: Pham Thanh Dat", text: $textFieldSelection)
                }
                Section(header: Text("Your phone number:")){
                    TextField("Ex: 0938938958", text: $phoneFieldSelection)
                }
                DatePicker("Date", selection: $datePickerSelection)
                
                Section(header: Text("Number of seats")){
                    Picker(selection:.constant(1),
                           label: Text ("Picker"),
                           content: {
                        Text("1").tag(1)
                        Text("2").tag(2)
                        Text("4").tag(3)
                        Text("7").tag(4)
                        Text("More than 7").tag(5)
                    }
                    ).pickerStyle(MenuPickerStyle())
                }
                
                Toggle(isOn: $isToggleOn) {
                    Text("Go with children (We will set up children's chair)")
                }
                Section(header: Text("Other note for the restaurant:")){
                    TextField("Ex: Can not eat spicy food", text: $noteFieldSelection)
                }
            }.foregroundColor(Color.blue)
            NavigationLink(destination: SubmitView(), isActive: $isShowingDetailView)
            { EmptyView()
            }
            Button("Tap to submit") {
                self.isShowingDetailView = true
            }.buttonStyle(GrowingButton())
            Spacer(minLength: 50)
        }
   }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}
