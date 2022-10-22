//
//  PopOverUsingTransitionOffsets.swift
//  BeginerLabelAllDemo
//
//  Created by JOYNAL ABEDIN on 21/10/22.
//

import SwiftUI

struct PopOverUsingTransitionOffsets: View {
    
    @State private var showSheet = false
    @State private var showNewScreen = false
    
    var body: some View {
        ZStack {
            Color.yellow
                .edgesIgnoringSafeArea(.all)
            VStack {
                Button {
                    showNewScreen.toggle()
                } label: {
                    Text("Button")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
                //Method_1_Sheet
                .sheet(isPresented: $showSheet) {
                    //AnotherScreen()
                }
                
                //Mehtod_2_Transition
                ZStack {
                    if showNewScreen {
                        AnotherScreen(showNewScreen: $showNewScreen)
                            .padding(.top, 100)
                            .transition(.move(edge: .bottom))
                            .animation(.spring())
                    }
                }
                .zIndex(2.0)
                
                //Method_3_Animation offset
                AnotherScreen(showNewScreen: $showNewScreen)
                    .padding(.top, 100)
                    .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                    .animation(.spring())
            }
            

        }
    }
}

struct AnotherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            Button {
                //presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            }

        }
    }
}

struct PopOverUsingTransitionOffsets_Previews: PreviewProvider {
    static var previews: some View {
        PopOverUsingTransitionOffsets()
    }
}
