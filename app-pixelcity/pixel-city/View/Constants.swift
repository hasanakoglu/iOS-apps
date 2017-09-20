//
//  Constants.swift
//  pixel-city
//
//  Created by DevPair11 on 20/09/2017.
//  Copyright © 2017 Caleb Stultz. All rights reserved.
//

import Foundation

let apiKey = "ab97563d6bff3203dc50ff69cbfcb18e"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"
    
    
    
    
}

