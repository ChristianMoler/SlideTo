//
//  SlideToControl.swift
//  SlideTo
//
//  Created by Christian    Moler on 15.09.17.
//  Copyright © 2017 Christian Moler. All rights reserved.
//

import UIKit

@IBDesignable
class SlideToControl: UIControl {

  //MARK: Outlets
  @IBOutlet private weak var thumbView: UIView!
  @IBOutlet private weak var textLabel: UILabel!
  var view: UIView?
  
  //Inspectable
  
  @IBInspectable var thumbViewColor: UIColor?{
    set{
      thumbView.backgroundColor = thumbViewColor
    }
    get{
      return thumbView.backgroundColor
    }
  }
  
  //MARK: Internal methods
  
  private func xibSetup() {
    
  }
  
  func loadViewFromNib() -> UIView {
    let bundle = Bundle(for: type(of: self))
    let nib = UINib(nibName: "SlideToControl", bundle: bundle)
    let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
    return view
  }
}





