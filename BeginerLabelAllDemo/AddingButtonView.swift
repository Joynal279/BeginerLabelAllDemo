//
//  AddingButtonView.swift
//  BeginerLabelAllDemo
//
//  Created by JOYNAL ABEDIN on 21/10/22.
//

import SwiftUI

struct AddingButtonView: View {
    
    @State var title = "Here is my title"
    
    var body: some View {
        VStack {
            Text(title)
                .foregroundColor(Color.red)
            //button_1
            Button("Press me!"){
                self.title = "Press me Pressed!"
            }
            
            //button_2
            Button {
                self.title = "Button Number #2 pressed"
            } label: {
                Text("Button".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
                
            }
            
            //button_3
            Button {
                self.title = "Button Number #3 pressed"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            }
            
            //button_3
            Button {
                self.title = "Button Number #4 pressed"
            } label: {
                Text("Fnish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
                
            }



        }

    }
}

struct AddingButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddingButtonView()
    }
}
