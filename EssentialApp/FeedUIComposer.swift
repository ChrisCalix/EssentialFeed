//
//  FeedUIComposer.swift
//  EssentialFeediOS
//
//  Created by Sonic on 1/7/23.
//

import UIKit
import Combine
import EssentialFeed
import EssentialFeediOS

public final class FeedUIComposer {
    private init() {}
    
    public static func feedComposedWith(
             feedLoader: @escaping () -> AnyPublisher<[FeedImage], Error>,
             imageLoader: @escaping (URL) -> FeedImageDataLoader.Publisher
        ) -> FeedViewController {
        let presentationAdapter = FeedLoaderPresentationAdapter(feedLoader: feedLoader)

        let feedController = makeFeedViewController(
         delegate: presentationAdapter,
        title: FeedPresenter.title)
        presentationAdapter.presenter = LoadResourcePresenter(
        resourceView: FeedViewAdapter(
            controller: feedController,
            imageLoader: imageLoader),
        loadingView: WeakRefVirtualProxy(feedController),
        errorView: WeakRefVirtualProxy(feedController),
        mapper: FeedPresenter.map)

        return feedController
    }

    private static func makeFeedViewController(delegate: FeedViewControllerDelegate, title: String) -> FeedViewController {
         let bundle = Bundle(for: FeedViewController.self)
        let storyboard = UIStoryboard(name: "Feed", bundle: bundle)
        let feedController = storyboard.instantiateInitialViewController() as! FeedViewController
        feedController.delegate = delegate
        feedController.title = title
        return feedController
    }
}
