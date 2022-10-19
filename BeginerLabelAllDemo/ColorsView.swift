//
//  ColorsView.swift
//  BeginerLabelAllDemo
//
//  Created by JOYNAL ABEDIN on 19/10/22.
//

import SwiftUI

struct ColorsView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.primary)
                .frame(width: 300, height: 200)
        }
    }
}

struct ColorsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorsView()
    }
}
