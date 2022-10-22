//
//  SheetsView.swift
//  BeginerLabelAllDemo
//
//  Created by JOYNAL ABEDIN on 21/10/22.
//

import SwiftUI

struct SheetsView: View {
    
    @State private var showSheet = false
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
            .sheet(isPresented: $showSheet) {
                SecondScreen()
            }

        }
    }
}

struct SecondScreen: View {
    
    @Environment (\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(20)
            }

        }
    }
}

struct SheetsView_Previews: PreviewProvider {
    static var previews: some View {
       SheetsView()
    }
}
