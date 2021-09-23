//
//  SettingsCardView.swift
//  Fluently-UI
//
//  Created by Sawyer Cherry on 9/16/21.
//

import SwiftUI

struct SettingsCardView: View {
    
    @State private var isAnimating: Bool = false
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                //: TITLE
                Text("Installation Guide")
                    .foregroundColor(Color.black)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                
                //: IMAGE
                Image("sample")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 1), radius: 2, x: 2, y: 2)
                
                //: STEPS
                Group {
                    HStack{
                        Image(systemName: "arrowshape.turn.up.right.circle")
                        Text("Go to Settings")
                    }
                    .padding(10)
                    
                    HStack {
                        Image(systemName: "arrowshape.turn.up.right.circle")
                        Text("Action: General->Keyboard")
                    }
                    .padding(10)
                    
                    HStack {
                        Image(systemName: "arrowshape.turn.up.right.circle")
                        Text("Action: Keyboards->Add New Keyboard")
                    }
                    .padding(10)
                   
                    HStack {
                        Image(systemName: "arrowshape.turn.up.right.circle")
                        Text("Action: Select Fluently, return to the app")
                        
                    }
                    .padding(10)
                }
            }
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        
        .background(LinearGradient(gradient: Gradient(colors: [Color("colorGreen"), Color("colorGreen")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

struct SettingsCardView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsCardView()
    }
}
