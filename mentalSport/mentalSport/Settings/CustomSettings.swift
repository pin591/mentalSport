import SwiftUI

struct CustomSettings: View {
    @State var mail = ""
    @State var username = ""
    @State var name = ""
    @State var surname = ""
    @State var phone = ""
    @State var country = ""
    

    func customTextField(placeholder: String, binding: Binding<String>) -> some View {
        TextField(placeholder, text: binding)
            .border(.black, width: 1)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 15)
    }

    var body: some View {
//        NavigationView {
            VStack {
                Text("Settings")
                HStack {
                    Image("userPicture")
                        .padding(.leading, 15)
                    VStack {
                        customTextField(placeholder: "Email", binding: $mail)
                        customTextField(placeholder: "Username", binding: $username)
                    }
                }
                VStack {
                    customTextField(placeholder: "Name", binding: $name)
                    customTextField(placeholder: "Surname", binding: $surname)
                    customTextField(placeholder: "Phone", binding: $phone)
                    customTextField(placeholder: "Country", binding: $country)
                }
//                HStack {
//                    VStack {
//                        NavigationLink (destination: LoginView()) {
//                            Text("Logout")
//                        }
//                        .navigationBarTitle("")
//                        .navigationBarBackButtonHidden(true)
//                        .navigationBarHidden(true)
//                        .statusBar(hidden: false)
//                    }.padding()
//                }
//                Spacer().frame(height: 20)
//                Spacer()
        }
    }
}

struct CustomSettings_Previews: PreviewProvider {
    static var previews: some View {
        CustomSettings()
    }
}
