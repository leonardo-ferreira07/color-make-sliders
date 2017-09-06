//
//  ViewController.swift
//  ColorMakeSliders
//
//  Created by Leonardo Vinicius Kaminski Ferreira on 06/09/17.
//  Copyright © 2017 Leonardo Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum Color: Int {
        case red = 0
        case green
        case blue
    }
    
    struct RGB {
        var redColor: CGFloat = 0.0
        var greenColor: CGFloat = 0.0
        var blueColor: CGFloat = 0.0
    }
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorView: UIView!
    
    var rgbColors = RGB()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Actions
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        
        switch Color(rawValue: sender.tag)! {
        case .red:
            rgbColors.redColor = CGFloat(redSlider.value)
            break
        case .green:
            rgbColors.greenColor = CGFloat(greenSlider.value)
            break
        case .blue:
            rgbColors.blueColor = CGFloat(blueSlider.value)
            break
        }
        
        colorView.backgroundColor = UIColor(red: rgbColors.redColor, green: rgbColors.greenColor, blue: rgbColors.blueColor, alpha: 1.0)
    }
    

}

