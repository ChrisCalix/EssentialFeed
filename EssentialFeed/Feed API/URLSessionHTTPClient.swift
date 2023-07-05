//
//  URLSessionHTTPClient.swift
//  EssentialFeed
//
//  Created by Sonic on 26/6/23.
//

import Foundation

public final class URLSessionHTTPClient: HTTPClient {
    private let session: URLSession

    public init(session: URLSession) {
         self.session = session
     }
    
    private struct UnexpectedValuesRepresentation: Error {}
    
    private struct URLSEssionTaskWrapper: HTTPClientTask {
        let wrapper: URLSessionTask
        
        func cancel() {
            wrapper.cancel()
        }
    }
    
    public func get(from url: URL, completion: @escaping (HTTPClient.Result) -> Void) -> HTTPClientTask {
        let task = session.dataTask(with: url) { data, response, error in
            completion(Result {
                if let error {
                    throw error
                } else if let data, let response = response as? HTTPURLResponse {
                    return (data, response)
                } else {
                    throw UnexpectedValuesRepresentation()
                }
            })
        }
        
        task.resume()
        
        return URLSEssionTaskWrapper(wrapper: task)
    }
}
