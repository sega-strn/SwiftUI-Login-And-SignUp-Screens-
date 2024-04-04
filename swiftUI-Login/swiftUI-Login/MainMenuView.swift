//
//  ContentView.swift
//  swiftUI-Login
//
//  Created by Sergey on 01/06/2023.
//

import SwiftUI

struct MainMenuView: View {
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                Circle()
                    .strokeBorder(Color.pink, lineWidth: 4)
                    .background(Circle().foregroundColor(Color.pink))
                    .frame(width: 1000)
                    .frame(alignment: .centerLastTextBaseline)
                    .position(.init(x: 190, y: 80))
                
                VStack(spacing: 250) {
                    Text("WELCOME")
                        .bold()
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                        .position(.init(x: 195, y: 210))
                    VStack(spacing: 50) {
                        VStack(spacing: 10){
                            
                            NavigationLink(destination: LoginView()) {
                                Text("LOGIN IN")
                                    .frame(width: 270, height: 50)
                                    .font(.system(size: 25))
                                    .bold()
                                    .background(Color.gray)
                                    .foregroundColor(.white)
                                    .buttonStyle(.bordered)
                                    .controlSize(.mini)
                            }
                            NavigationLink(destination: RegisterMenuView()) {
                                Text("CREATE ACCOUNT")
                                    .frame(width: 270, height: 50)
                                    .font(.system(size: 25))
                                    .bold()
                                    .background(Color.pink)
                                    .foregroundColor(.white)
                                    .buttonStyle(.bordered)
                                    .controlSize(.mini)
                                
                            }
                            
                        }.position(.init(x: 195, y: 220))
                        
                    }
                    VStack(spacing: 20){
                        Text("OR LOGIN USING SOCIAL MEDIA")
                            .font(.system(size: 17))
                            .foregroundColor(.black)
                        HStack(spacing: 50){
                            Text("A")
                                .font(.system(size: 25))
                                .bold()
                                .background(Circle()
                                    .strokeBorder()
                                    .aspectRatio(1, contentMode: .fill))
                            Text("B")
                                .font(.system(size: 25))
                                .bold()
                                .background(Circle()
                                    .strokeBorder()
                                    .aspectRatio(1, contentMode: .fill))
                            Text("C")
                                .font(.system(size: 25))
                                .bold()
                                .background(Circle()
                                    .strokeBorder()
                                    .aspectRatio(1, contentMode: .fill))
                            
                            
                        }
                    }
                    
                    
                }
            }
        }
    }
    
}


struct RegisterMenuView: View {
    
    @State private var userName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var mobile = ""
    
    
    var body: some View{
        
        ZStack{
            Color.white.ignoresSafeArea().opacity(0.9)
            
            VStack(spacing: 190){
                Text("REGISTER")
                    .font(.system(size: 30))
                    .bold()
                    .foregroundColor(.black)
                VStack(spacing: 13){
                    TextField("USER NAME", text: $userName)
                        .frame(width: 300, height: 45)
                        .background(Color.gray.opacity(0.2))
                        .foregroundColor(.white)
                        .bold()
                    
                    
                    TextField("EMAIL" ,text: $email)
                        .frame(width: 300, height: 45)
                        .background(Color.gray.opacity(0.2))
                        .foregroundColor(.white)
                        .bold()
                    
                    TextField("PASSWORD",text: $password)
                        .frame(width: 300, height: 45)
                        .background(Color.gray.opacity(0.2))
                        .foregroundColor(.white)
                        .bold()
                    TextField("CONFIRM PASSWORD" ,text: $confirmPassword)
                        .frame(width: 300, height: 45)
                        .background(Color.gray.opacity(0.2))
                        .foregroundColor(.white)
                        .bold()
                    TextField("MOBILE" ,text: $mobile)
                        .frame(width: 300, height: 45)
                        .background(Color.gray.opacity(0.2))
                        .foregroundColor(.white)
                        .bold()
                    
                    Button(){
                        print("Button tapped")
                    } label: {
                        Text("REGISTER")
                            .frame(width: 280, height: 40)
                            .bold()
                    }
                    .font(.system(size: 25))
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .buttonStyle(.bordered)
                    .controlSize(.mini)
                }.padding(0)
            }
            
        }
        
    }
    
}

struct LoginView: View{
    
    @State private var userName: String = ""
    @State private var password: String = ""
    
    var body: some View{
        
        VStack(spacing: 130){
            Color.white
            Text("WELCOME BACK")
                .bold()
                .font(.system(size: 30))
//                .position(.init(x: 195, y: 0))
                .foregroundColor(Color.black)
            VStack(){
                Text("LOGIN IN")
                    .bold()
                    .font(.system(size: 30))
                    .foregroundColor(.pink)
                TextField("USER NAME", text: $userName)
                    .frame(width: 300, height: 45)
                    .background(Color.gray.opacity(0.2))
                    .foregroundColor(.white)
                    .bold()
                TextField("PASSWORD", text: $userName)
                    .frame(width: 300, height: 45)
                    .background(Color.gray.opacity(0.2))
                    .foregroundColor(.white)
                    .bold()
            }.padding()
            VStack(){
                Button(){
                    print("button tapped")
                } label: {
                    Text("LOGIN IN")
                        .frame(width: 250, height: 40)
                }
                .font(.system(size: 25))
                .bold()
                .background(Color.pink)
                .foregroundColor(.white)
                .buttonStyle(.bordered)
                .controlSize(.mini)
                VStack(spacing: 30){
                    Text("OR LOGIN USING SOCIAL MEDIA")
                        .font(.system(size: 17))
                        .foregroundColor(.black)
                    
                    HStack(spacing: 50){
                        Text("A")
                            .font(.system(size: 25))
                            .bold()
                            .background(Circle()
                                .strokeBorder()
                                .aspectRatio(1, contentMode: .fill))
                            .foregroundColor(Color.black)
                        
                        Text("B")
                            .font(.system(size: 25))
                            .bold()
                            .background(Circle()
                                .strokeBorder()
                                .aspectRatio(1, contentMode: .fill))
                            .foregroundColor(Color.black)
                        
                        Text("C")
                            .font(.system(size: 25))
                            .bold()
                            .background(Circle()
                                .strokeBorder()
                                .aspectRatio(1, contentMode: .fill))
                            .foregroundColor(Color.black)
                        
                    }
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}


