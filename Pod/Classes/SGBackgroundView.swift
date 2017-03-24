//
//  SGBackgroundView.swift
//  SGBackgroundView
//
//  Created by Spiros Gerokostas on 15/10/15.
//  Copyright © 2015 Spiros Gerokostas. All rights reserved.
//

import UIKit

open class SGBackgroundView: UIView {
    var _width:CGFloat?
    var _height:CGFloat?
    var _color:NSString?
    var _bgColor:UIColor?
    var _topLine:Bool?
    var _xPosLine:CGFloat?
    var _lineColor:UIColor?
    
    open var xPosLine:CGFloat {
        set {
            _xPosLine = newValue
            self.setNeedsDisplay()
        }
        get {
            return _xPosLine!
        }
    }
    
    open var topLine:Bool {
        set {
            _topLine = newValue
            self.setNeedsDisplay()
        }
        get {
            return _topLine!
        }
    }
    
    open var width:CGFloat {
        set {
            _width = newValue
            self.setNeedsDisplay()
        }
        get {
            return _width!
        }
    }
    
    open var height:CGFloat {
        set {
            _height = newValue
            self.setNeedsDisplay()
        }
        get {
            return _height!
        }
    }
    
    open var color:NSString {
        set {
            _color = newValue
            self.setNeedsDisplay()
        }
        get {
            return _color!
        }
    }
    
    open var lineColor:UIColor {
        set {
            _lineColor = newValue
            self.setNeedsDisplay()
        }
        get {
            return _lineColor!
        }
    }
    
    open var bgColor:UIColor {
        set {
            _bgColor = newValue
            self.setNeedsDisplay()
        }
        get {
            return _bgColor!
        }
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        bgColor = UIColor.white
        topLine = false
        xPosLine = 0.0
        width = frame.width
        height = frame.height
        self.contentMode = UIViewContentMode.redraw
    }
    
    required public init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override open func draw(_ rect: CGRect) {
        let context:CGContext = UIGraphicsGetCurrentContext()!
        let backgroundColor:UIColor =  UIColor.white
        backgroundColor.set()
        context.fill(rect);
        
        context.saveGState();
        let rectangle:CGRect = CGRect(x: 0.0 , y: 0.0, width: _width!, height: _height!);
        context.addRect(rectangle);
        context.setFillColor(_bgColor!.cgColor);
        context.fill(rectangle);
        context.restoreGState();
        
        if _topLine! {
            context.setLineWidth(1.0);
            context.setStrokeColor(_lineColor!.cgColor);
            context.move(to: CGPoint(x: 0.0, y: 0.0));
            context.addLine(to: CGPoint(x: _width!, y: 0.0));
            context.strokePath();
        }
        
        context.setLineWidth(1.0);
        context.setStrokeColor(_lineColor!.cgColor);
        context.move(to: CGPoint(x: _xPosLine!, y: floor(rectangle.origin.y + rectangle.size.height)));
        context.addLine(to: CGPoint(x: _width!, y: floor(rectangle.origin.y + rectangle.size.height)));
        context.strokePath();
    }
}
