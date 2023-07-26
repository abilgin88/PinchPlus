//
//  ConrolImageView.swift
//  PinchPlus
//
//  Created by Abdullah Bilgin on 7/26/23.
//

import SwiftUI

struct ConrolImageView: View {
    let icon: String
    
    var body: some View {
        Image(systemName: icon)
            .font(.system(size: 36))
    }
}

struct ConrolImageView_Previews: PreviewProvider {
    static var previews: some View {
        ConrolImageView(icon: "minus.magnifyingglass")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
