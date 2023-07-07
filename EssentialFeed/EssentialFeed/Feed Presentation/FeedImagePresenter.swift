//
//  FeedImagePresenter.swift
//  EssentialFeed
//
//  Created by Sonic on 3/7/23.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location
        )
    }
}
