//
//  CustomObjects.swift
//  TrashMapBeta
//
//  Created by Daniel Inderwies on 8/6/19.
//  Copyright © 2019 Daniel Inderwies. All rights reserved.
//

import UIKit
import MapKit


class CustomMapView: MKMapView {
    
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var bordercolor: UIColor = UIColor.clear{
        didSet {
            self.layer.borderColor = bordercolor.cgColor
        }
    }
    
}




class CustomBTN: UIButton {
    
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var bordercolor: UIColor = UIColor.clear{
        didSet {
            self.layer.borderColor = bordercolor.cgColor
        }
    }
    
}
