//
//  AreaAPIResponse.swift
//  MyCTStore
//
//  Created by Rakshil Dudhat on 31/03/23.
//

import Foundation

struct AreaAPIResponse: Decodable{
    var error: Bool
    var data: [Area]
}
