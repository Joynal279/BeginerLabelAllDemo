//
//  AddTextView.swift
//  BeginerLabelAllDemo
//
//  Created by JOYNAL ABEDIN on 19/10/22.
//

import SwiftUI

struct AddTextView: View {
    var body: some View {
        Text("Hello, World! Hello, World! Hello, World!  Hello, World! Hello, World! Hello, World! Hello, World!")
            .font(.body)
            .fontWeight(.semibold)
            .bold()
            .underline(true, color: Color.red)
            .italic()
            .strikethrough()
            .font(.system(size: 24, weight: .semibold, design: .serif))
            .baselineOffset(-20)
            .kerning(10)
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.9)
    }
}

struct AddTextView_Previews: PreviewProvider {
    static var previews: some View {
        AddTextView()
    }
}
