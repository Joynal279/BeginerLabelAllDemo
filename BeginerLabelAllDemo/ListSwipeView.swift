//
//  ListSwipeView.swift
//  BeginerLabelAllDemo
//
//  Created by JOYNAL ABEDIN on 22/10/22.
//

import SwiftUI

struct ListSwipeView: View {
    
    @State var fruits = ["Apple", "Banana", "Orange"]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) { fruit in
                Text(fruit)
                    .swipeActions(edge: .trailing, allowsFullSwipe: false) { //left side swipe
                        Button {
                            //action here
                        } label: {
                            VStack {
                                Image(systemName: "trash.circle")
                                    .resizable()
                            }
                        }
                        .tint(.yellow)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: false) { //right side swipe
                        Button {
                            //action here
                        } label: {
                            VStack {
                                Text("Remove")
                                    .foregroundColor(.red)
                            }
                        }
                        .tint(.yellow)
                    }
            }
        }
    }
}

struct ListSwipeView_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeView()
    }
}
