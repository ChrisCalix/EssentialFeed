//
//  FeedLoaderPresentationAdapter.swift
//  EssentialFeediOS
//
//  Created by Sonic on 3/7/23.
//

import Combine
import EssentialFeed
import EssentialFeediOS

final class FeedLoaderPresentationAdapter: FeedViewControllerDelegate {
    private let feedLoader: () -> AnyPublisher<[FeedImage], Error>
    private var cancellable: Cancellable?
    var presenter: FeedPresenter?
    
    init(feedLoader: @escaping () -> AnyPublisher<[FeedImage], Error>) {
        self.feedLoader = feedLoader
    }
    
    func didRequestFeedRefresh() {
        presenter?.didStartLoadingFeed()
        cancellable = feedLoader().dispatchOnMainQueue().sink(
            receiveCompletion: { [weak self] completion in
                switch completion {
                case .finished: break
                case let .failure(error):
                    self?.presenter?.didFinishLoadingFeed(with: error)
                }
            }, receiveValue: { [weak self] feed in
                self?.presenter?.didFinishLoadingFeed(with: feed)
        })
    }
}
