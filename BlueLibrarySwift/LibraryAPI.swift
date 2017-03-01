//
//  LibraryAPI.swift
//  BlueLibrarySwift
//
//  Created by James O'Connor on 3/1/17.
//  Copyright © 2017 Raywenderlich. All rights reserved.
//

import UIKit

class LibraryAPI: NSObject {
    
    class var sharedInstance :LibraryAPI {
        struct Singleton {
            static let instance = LibraryAPI()
            }
        return Singleton.instance
    }
    
    private let httpClient :HTTPClient
    private let persistenceManager :PersistenceManager
    private let isOnline :Bool
    
    override init() {
        httpClient = HTTPClient()
        persistenceManager = PersistenceManager()
        isOnline = false
        super.init()
    }
    
    func getAlbums() -> [Album] {
        return persistenceManager.getAlbums()
    }
    
    func addAlbum(album :Album, index :Int) {
        persistenceManager.addAlbum(album: album, index: index)
        if isOnline {
            httpClient.postRequest("/api/addAlbum", body: album.description)
            }
    }
    
    func deleteAlbum(index :Int) {
        persistenceManager.deleteAlbumAtIndex(index: index)
        if isOnline {
            httpClient.postRequest("/api/deleteAlbum", body: "\(index)")
            }
    }
    
}


