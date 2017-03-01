//
//  AlbumView.swift
//  BlueLibrarySwift
//
//  Created by James O'Connor on 3/1/17.
//  Copyright © 2017 Raywenderlich. All rights reserved.
//

import UIKit

class AlbumView: UIView {

    private var coverImage :UIImageView!
    private var indicator :UIActivityIndicatorView!
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(frame :CGRect, albumCover :String) {
        super.init(frame: frame)
        commonInit()
    }
    
    func commonInit() {
        backgroundColor = UIColor.black
        coverImage = UIImageView(frame: CGRect(x: 5, y: 5, width: frame.size.width - 10, height: frame.size.width - 10))
        addSubview(coverImage)
        indicator = UIActivityIndicatorView()
        indicator.center = center
        indicator.activityIndicatorViewStyle = .whiteLarge
        indicator.startAnimating()
        addSubview(indicator)
    }
    
    func highlightAlbum(didHighlightView :Bool) {
        if didHighlightView == true {
            backgroundColor = UIColor.white
            }
        else {
            backgroundColor = UIColor.black
            }
    }
    
}
