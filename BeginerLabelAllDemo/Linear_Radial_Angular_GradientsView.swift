//
//  Linear_Radial_Angular_GradientsView.swift
//  BeginerLabelAllDemo
//
//  Created by JOYNAL ABEDIN on 20/10/22.
//

import SwiftUI

struct Linear_Radial_Angular_GradientsView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    //linear gradient
                    //LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                    
                    //radial gradient
                    //RadialGradient(gradient: Gradient(colors: [Color.red, Color.green, Color.yellow]), center: .center, startRadius: 5, endRadius: 500)
                    
                    //Angular gradient
                    AngularGradient(gradient: Gradient(colors: [Color.red, Color.green, Color.yellow]), center: .center, angle: .degrees(45))
                    
                )
                .frame(width: 300, height: 200)
        }
    }
}

struct Linear_Radial_Angular_GradientsView_Previews: PreviewProvider {
    static var previews: some View {
        Linear_Radial_Angular_GradientsView()
    }
}
