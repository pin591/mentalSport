import SwiftUI

struct RegisterView: View {
    @State var mail = ""
    @State var username = ""
    @State var password = ""
    @State var confimPassword = ""
    @State var name = ""
    @State var surname = ""
    @State var phone = ""
    @State var country = ""
    @Binding var isPresented: Bool

    func customTextField(placeholder: String, binding: Binding<String>) -> some View {
        TextField(placeholder, text: binding)
            .border(.black, width: 1)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 20)
    }

    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 30) {
                Button {
                    self.isPresented = false
                } label: {
                    Image(systemName: "xmark.circle")
                }
                .padding(.leading, 200)
                .padding(.top, 10)
                Text("Register")
                    .font(.largeTitle)
                    .padding(.top, 10)
                customTextField(placeholder: "Email", binding: $mail)
                customTextField(placeholder: "Username", binding: $username)
                customTextField(placeholder: "Password", binding: $password)
                customTextField(placeholder: "Confirm password", binding: $confimPassword)
                HStack {
                    customTextField(placeholder: "Name", binding: $name)
                    customTextField(placeholder: "Surname", binding: $surname)
                }
                HStack {
                    customTextField(placeholder: "Phone", binding: $phone)
                    customTextField(placeholder: "Country", binding: $country)
                }
                NavigationLink(destination: MainView()) {
                    Text("Continuar")
                }
                Spacer()
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
   }
}

//struct RegisterView_Previews: PreviewProvider {
//    static var previews: some View {
//        RegisterView()
//    }
//}
