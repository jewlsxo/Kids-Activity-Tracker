//
//  ContentView.swift
//  Activity Trackers
//
//  Created by Julissa Salinas on 4/11/22.
//



import SwiftUI
import FirebaseAuth
import Firebase
import FirebaseStorage
import FirebaseFirestore

class AppViewModel: ObservableObject {
    
    let auth = Auth.auth()
    
    @Published var signedIn = false
    
    var isSignedIn: Bool {
        return auth.currentUser != nil
    }
    
    func signIn(email: String, password: String) {
        auth.signIn(withEmail: email,
                    password: password) { [weak self] result, error in
            guard result != nil, error == nil else {
                return
            }
            DispatchQueue.main.async {
                //Success
                self?.signedIn = true
            }
            
        }
    }
    
    func signUp(email: String, password: String) {
        auth.createUser(withEmail: email, password: password) { [weak self] result, error in
            guard result != nil, error == nil else {
                return
            }
            DispatchQueue.main.async {
                //Success
                self?.signedIn = true
            }
        }
        
    }
    func signOut() {
        try? auth.signOut()
        
        self.signedIn = false
    }
}

struct ContentView: View {
    
    @EnvironmentObject var viewModel: AppViewModel
    
    @ObservedObject private var vm = AppViewModel()
    
    var body: some View {
        
        NavigationView{
            if viewModel.signedIn {
                VStack{
                    ScrollView{
                        NavigationView {
                            Image(systemName:"person")
                        }
                        .navigationTitle("Home")
                        
                        //NavigationLink(destination: HomeScreen(), label: { Text("Click Here") } )
                        
                        Spacer()
                        Button(action: {
                            viewModel.signOut()
                        }, label: {
                            Text("Sign Out")
                                .foregroundColor(Color.white)
                                .frame(width:200, height: 50)
                                .background(Color.blue)
                                .cornerRadius(10)
                        })
                    }
                }
            }
                
            else {
                SignInView()
            }
        }
        .onAppear{
            viewModel.signedIn = viewModel.isSignedIn
        }
        
    }
}

struct SignInView: View {
    @State var email = ""
    @State var password = ""
    @State var wrongPassword = 0
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        ZStack {
            Color.blue
                
            Circle()
                .scale(1.7)
                .foregroundColor(.white.opacity(0.15))
            Circle()
                .scale(1.35)
                .foregroundColor(.white)
            VStack {
                
                Text("Welcome")
                    .font(.largeTitle)
                
                HStack{
                    Image(systemName: "person.fill")
                    TextField("Email Address", text: $email)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        
                }
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10)
                HStack{
                    Image(systemName: "lock")
                    SecureField("Password", text: $password)
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        
                }
                .padding()
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10)
                Button(action: {
                    
                    guard !email.isEmpty, !password.isEmpty else {
                        
                        return
                    }
                    viewModel.signIn(email: email, password: password)
                    
                }, label: {
                    Text("Sign In")
                        .foregroundColor(Color.white)
                        .frame(width:200, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                
                NavigationLink("Create Account", destination: SignUpView())
                    .foregroundColor(Color.white)
                    .frame(width:200, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
               
            }
        }.edgesIgnoringSafeArea(.all)
        //.padding()
        .navigationTitle("Sign In")
        .navigationBarHidden(true)
        
        
    }
}

struct SignUpView: View {
    @State var email = ""
    @State var password = ""
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        
        VStack {
            
            Spacer()
            Text("Create Account")
                .font(.largeTitle)
            
            HStack{
                Image(systemName: "person.fill")
                TextField("Email Address", text: $email)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                
            }
            .padding()
            .background(Color(.secondarySystemBackground))
            .cornerRadius(10)
            
            HStack{
                Image(systemName: "lock")
                SecureField("Password", text: $password)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                
            }
            .padding()
            .background(Color(.secondarySystemBackground))
            .cornerRadius(10)
            
            Button(action: {
                
                guard !email.isEmpty, !password.isEmpty else {
                    return
                }
                viewModel.signUp(email: email, password: password)
                
            }, label: {
                Text("Create Account")
                    .padding()
                    .foregroundColor(Color.white)
                    .frame(width:200, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                
            })
            
            Spacer()
        }
        //.padding()
        .edgesIgnoringSafeArea(.all)
        //.navigationTitle("Create Account")
        //.navigationBarHidden(true)
        .navigationBarBackButtonHidden(false)
        
        
    }
    

}



struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




