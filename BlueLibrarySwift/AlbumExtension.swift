//
//  AlbumExtension.swift
//  BlueLibrarySwift
//
//  Created by James O'Connor on 3/1/17.
//  Copyright © 2017 Raywenderlich. All rights reserved.
//

import Foundation

extension Album {
    func ae_tableRepresentation() -> (titles :[String], values :[String]) {
        return (["Artist", "Album", "Genre", "Year"], [artist, title, genre, year])
    }
}
