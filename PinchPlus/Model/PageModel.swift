//
//  PageModel.swift
//  PinchPlus
//
//  Created by Abdullah Bilgin on 7/26/23.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
