//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Sonic on 1/7/23.
//

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}
