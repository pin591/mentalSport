import SwiftUI

struct LoginView: View {

    @State var name = ""
    @State var pwd = ""
    @State private var selection : String? = nil
    @State private var isShow: Bool = false
    @State private var isModalViewPresented: Bool = false

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 16) {

                Image("userPicture")
                    .frame(width: 100, height: 100)
                VStack {
                    Text("Username")
                    TextField("Mlamolla", text: $name)
                        .border(.black, width: 1)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 70)
                }
                VStack {
                    Text("Passsword")
                    SecureField("123", text: $pwd)
                        .border(.black, width: 1)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 70)
                    Text("Nombre o contraseña incorrectos").opacity(isShow ? 1: 0)

                }
                HStack {
                    Button("Register") {
                        isModalViewPresented = true
                    }
                    .fullScreenCover(isPresented: $isModalViewPresented, content: {
                        RegisterView(isPresented: $isModalViewPresented)
                    })
                    Spacer()
                    VStack {
                        NavigationLink(destination: MainView(), tag: "A", selection: $selection) {
                            Button("Continuar") {
                                if self.name == "Mlamolla" && self.pwd == "123" {
                                    selection = "A"
                                    isShow = false
                                }
                                else {
                                    isShow = true
                                }
                                presentationMode.wrappedValue.dismiss()
                            }
                        }
                    }
                }.padding(50)
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
}

struct View_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

