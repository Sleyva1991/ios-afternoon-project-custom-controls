//
//  CustomControl.swift
//  CustomControl
//
//  Created by Steven Leyva on 9/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class CustomControl: UIControl {
    
    var value: Int = 1
    var rating: Array<UILabel> = []
    
    private let componentDimension: CGFloat = 40.0, componentCount = 5, componentActiveColor = UIColor.black, componentInactiveColor = UIColor.gray
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        for allLabels in 1...componentCount {
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: componentDimension, height: componentDimension))
            label.text = "✯"
            label.tag = allLabels
            
            rating.append(label)
        }
    }
    override var intrinsicContentSize: CGSize {
        let componentsWidth = CGFloat(componentCount) * componentDimension
        let componentsSpacing = CGFloat(componentCount + 1) * 8.0
        let width = componentsWidth + componentsSpacing
        return CGSize(width: width, height: componentDimension)
    }
}

