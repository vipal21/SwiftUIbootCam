//
//  OnBoardView.swift
//  TextComponent
//
//  Created by Vipal on 18/09/22.
//

import SwiftUI

struct OnBoardView: View {
    // 0 - WelcomScreen
    //1 -Add Name
    //2- Add Age
    //3 - Add Gender
    @State var onBoardingState : Int = 0
    @State var textFiledname:String = ""
    @State var gender:String = ""
    @State var alertTitle:String = ""
    @State var showAlert:Bool = false

    @State var age:Double = 50
    let transition : AnyTransition = .asymmetric(insertion: .move(edge: .trailing),
                                                 removal: .move(edge: .leading))
    
    @AppStorage("name") var currentUserName : String?
    @AppStorage("age") var currentUserAge : Double?
    @AppStorage("gender") var currentGender : String?
    @AppStorage("isSignedIn") var isSignedIn :Bool = false
    
    var body: some View {
        ZStack{
            ZStack {
                switch onBoardingState {
                case  0:
                    welcomeSection
                        .transition(transition)
                case  1:
                    addNameSection
                        .transition(transition)
                case  2:
                    addAgeSection
                        .transition(transition)
                case  3:
                    addGenderSection
                        .transition(transition)
                    
                    
                default :
                    RoundedRectangle(cornerRadius: 2.0)
                        .foregroundColor(.green)

                }
            }
            VStack {
                Spacer()
                bottomButton
            }.padding(30)
            
        }
        .alert(isPresented: $showAlert) {
            Alert(title: Text (alertTitle))
        }
    }

}

struct OnBoardView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardView().background(Color.purple)
    }
}
//MARK: Components
extension OnBoardView {
    private var bottomButton : some View {
        Text(  onBoardingState == 0 ?  "Sign Up" :
                onBoardingState == 3 ? "Finish" :
                "Next"
         )
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .onTapGesture {
                
                handelNextButtonPress()
                
            }
    }
    private var welcomeSection : some View {
        VStack (spacing :40){
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200 , height: 200)
                .foregroundColor(.white)
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay (
                    Capsule(style: .continuous)
                        .frame(height :3)
                        .offset(y :5)
                   
                        .foregroundColor(.white)
                    ,alignment: .bottom
                    
                )
            Text("This is the# #1 app finding your match online! In this tutorial we are practicing using AooStorage an other SwiftUI techniques.")
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            Spacer()
            Spacer()
        }.padding(30)
    }
    
    private var addNameSection : some View {
        VStack (spacing :10){
            Spacer()
       
            Text("What is your name ?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
    
            TextField("Yourname here ..!", text: $textFiledname)
                .font(.headline)
                .frame(height: 30)
                .padding()
                .background(Color.white)
                .cornerRadius(20)
            Spacer()

        }.padding(30)
    }
    private var addAgeSection : some View {
        VStack (spacing :10){
            Spacer()
       
            Text("What is your age ?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
           
            Text(String(format: "%.0f",age))
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
    
            Slider(value:$age, in: 18...100 , step: 1)
                .accentColor(.white)
            Spacer()

        }.padding(30)
    }
    private var addGenderSection : some View {
        VStack (spacing :10){
            Spacer()
       
            Text("What is your gender ?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)

            Menu(gender.count > 0 ? "\(gender)" : "Select Gender")
            {
                    Picker(selection: $gender) {
                        Text("Male").tag("Male")
                        Text("Female").tag("Female")
                        Text("Non - Binary").tag("Non - Binary")
                    } label: {
                        Text("Select Gender")
                    
                    }
                      
                   
                   
            }
            .accentColor(.purple)
            .font(.headline)
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(Color.white)
            .cornerRadius(10)

            Spacer()

        }.padding(30)
    }
}
//MARK: Functions
extension OnBoardView {
    func handelNextButtonPress (){
        withAnimation(.spring()){
            //Check INPUT
            
            switch onBoardingState {
            case 1 :
                guard textFiledname.count >= 3 else {
                    showAlert(title: "Please Enter the name")
                    return
                }
            case 3 : guard gender.count >= 1 else {
                showAlert(title: "Please Select gender")
                return
            }
            default:
                break
            }
            //GO TO NEXT SECTION
            if(onBoardingState == 3){
                //Sign in
                signIn()
            }else{
                withAnimation(.spring()){
                    onBoardingState += 1
                }
               
            }
           
        }
    }
    func showAlert (title : String){
        alertTitle = title
        showAlert = true
    }
    func signIn (){
        currentUserName = textFiledname
        currentGender = gender
        currentUserAge = age
        withAnimation {
            isSignedIn = true
        }
        
    }
}
