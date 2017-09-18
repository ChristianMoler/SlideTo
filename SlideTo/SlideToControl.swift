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
  
  @IBInspectable var thumbColor: UIColor? {
    set(color){
      thumbView.backgroundColor = color
    }
    get{
      return thumbView.backgroundColor
    }
  }
  @IBInspectable var bgColor: UIColor? {
    set(color){
      view?.backgroundColor = color
    }
    get{
      return view?.backgroundColor
    }
  }
  @IBInspectable var labelColor: UIColor? {
    set(color){
      textLabel.textColor = color
    }
    get{
      return textLabel.textColor
    }
  }
  @IBInspectable var labelText: String? {
    set(text){
      textLabel.text = text
    }
    get{
      return textLabel.text
    }
  }
  @IBInspectable var labelFontSize: CGFloat {
    set(size){
      textLabel.font = UIFont.systemFont(ofSize: size)
    }
    get{
      return textLabel.font.pointSize
    }
  }

  
  
  //MARK: Initializers
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    xibSetup()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    xibSetup()
  }
  
  
  //MARK: Internal methods
  
  private func xibSetup() {
    view = loadViewFromNib()
    view?.frame = bounds
    view?.autoresizingMask = [.flexibleWidth,.flexibleHeight]
    layoutSubviews()
    guard let resultView = view else {  return  }
    addSubview(resultView)
  }
  
  private func loadViewFromNib() -> UIView {
    let bundle = Bundle(for: type(of: self))
    let nib = UINib(nibName: "SlideToControl", bundle: bundle)
    let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
    return view
  }
  
  private func roundOutViewWith(height: CGFloat){

  }
  
  override func layoutSubviews() {
    guard let height = view?.frame.height else { return }
    thumbView.layer.cornerRadius = (height * 0.8)/2
    thumbView.layer.masksToBounds = true
    view?.layer.cornerRadius = height/2
    view?.layer.masksToBounds = true
  }
    

}





