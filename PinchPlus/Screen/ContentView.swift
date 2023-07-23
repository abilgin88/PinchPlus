//
//  ContentView.swift
//  PinchPlus
//
//  Created by Abdullah Bilgin on 7/23/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY
    
    @State private var isAnimation: Bool = false
    @State private var imageScale: CGFloat = 1
    
    // MARK: - FUNCTION
    
    // MARK: - CONTENT
    
    var body: some View {
        NavigationView {
            ZStack {
                // MARK: - PAGE IMAGE
                Image("magazine-front-cover")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: .black.opacity(0.1), radius: 12, x: 2, y: 2)
                    .opacity(isAnimation ? 1 : 0)
                    .animation(.linear(duration: 1), value: isAnimation)
                    .scaleEffect(imageScale)
                // MARK: 1. TAP GESTURE
                    .onTapGesture(count: 2, perform: {
                        if imageScale == 1 {
                            withAnimation(.spring()) {
                                imageScale = 5
                            }
                        } else {
                            withAnimation(.spring()) {
                                imageScale = 1
                            }
                        }
                    })
            } //: ZSTACK
            .navigationTitle("Pinch & Zoom")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear(perform: {
                isAnimation = true
            }
            )
        } //: NAVIGATION
        .navigationViewStyle(.stack)
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
