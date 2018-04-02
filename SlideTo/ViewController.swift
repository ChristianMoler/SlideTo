//
//  ViewController.swift
//  SlideTo
//
//  Created by Christian    Moler on 15.09.17.
//  Copyright © 2017 Christian Moler. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SlideToControlDelegate {
@IBOutlet weak var slider: SlideToControl!
  override func viewDidLoad() {
    super.viewDidLoad()
    slider.delegate = self
  }

  func sliderCameToEnd() {
    let alert: UIAlertController = UIAlertController(title: "Slider", message: "work", preferredStyle: .alert)
    let action: UIAlertAction = UIAlertAction(title: "OK", style: .cancel) { _ in
      alert.dismiss(animated: true, completion: nil)
    }
    alert.addAction(action)
    present(alert, animated: true, completion: nil)
  }

}
