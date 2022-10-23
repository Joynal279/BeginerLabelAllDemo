//
//  ViewDidLoadView.swift
//  BeginerLabelAllDemo
//
//  Created by JOYNAL ABEDIN on 22/10/22.
//

import SwiftUI

struct ViewDidLoadView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onViewDidLoad { //use this modifier
                print("view did load")
            }
    }
}

//View Did Load Modifier
struct ViewDidLoadModifier: ViewModifier {
    @State private var viewDidLoad = false
    let action: () -> ()
    func body(content: Content) -> some View {
        content
            .onAppear {
                if viewDidLoad == false {
                    viewDidLoad = true
                    action()
                }
            }
    }
}

extension View {
    func onViewDidLoad(perform action: @escaping () -> ()) -> some View {
        self.modifier(ViewDidLoadModifier(action: action))
    }
}
