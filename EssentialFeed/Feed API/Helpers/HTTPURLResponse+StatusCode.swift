//
//  HTTPURLResponse+StatusCode.swift
//  EssentialFeed
//
//  Created by Sonic on 3/7/23.
//

import Foundation

extension HTTPURLResponse {
    private static var OK_200: Int {
        return 200
    }
    
    var isOK: Bool {
        return statusCode == HTTPURLResponse.OK_200
    }
}
