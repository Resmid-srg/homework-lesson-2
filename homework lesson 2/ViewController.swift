//
//  ViewController.swift
//  homework lesson 2
//
//  Created by Dima on 18.06.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var statusRedLabel: UILabel!
    @IBOutlet var statusGreenLabel: UILabel!
    @IBOutlet var statusBlueLabel: UILabel!
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    @IBOutlet var mainView: UIView!
    @IBOutlet var nameLabelRed: UILabel!
    @IBOutlet var nameLabelGreen: UILabel!
    @IBOutlet var nameLabelBlue: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: label
        statusRedLabel.text = "  0  "
        statusGreenLabel.text = "  0  "
        statusBlueLabel.text = "  0  "
        
        statusRedLabel.backgroundColor = .systemGray5
        statusGreenLabel.backgroundColor = .systemGray5
        statusBlueLabel.backgroundColor = .systemGray5
        
        statusRedLabel.layer.masksToBounds = true
        statusGreenLabel.layer.masksToBounds = true
        statusBlueLabel.layer.masksToBounds = true
        
        statusRedLabel.layer.cornerRadius = 10
        statusGreenLabel.layer.cornerRadius = 10
        statusBlueLabel.layer.cornerRadius = 10
        
        //MARK: switchs
        let maxValue: Float = 255
        let minValue: Float = 0
        
        sliderRed.value = 0
        sliderGreen.value = 0
        sliderBlue.value = 0
        
        sliderRed.maximumValue = maxValue
        sliderGreen.maximumValue = maxValue
        sliderBlue.maximumValue = maxValue
        
        sliderRed.minimumValue = minValue
        sliderGreen.minimumValue = minValue
        sliderBlue.minimumValue = minValue
        
        sliderRed.minimumTrackTintColor = .red
        sliderGreen.minimumTrackTintColor = .green
        sliderBlue.minimumTrackTintColor = .blue
        
        //MARK: label frame
        nameLabelRed.backgroundColor = .systemGray5
        nameLabelGreen.backgroundColor = .systemGray5
        nameLabelBlue.backgroundColor = .systemGray5
        
        nameLabelRed.layer.masksToBounds = true
        nameLabelGreen.layer.masksToBounds = true
        nameLabelBlue.layer.masksToBounds = true
        
        nameLabelRed.layer.cornerRadius = 15
        nameLabelGreen.layer.cornerRadius = 15
        nameLabelBlue.layer.cornerRadius = 15

    }
    @IBAction func switchActionRed(_ sender: Any) {
        statusRedLabel.text = "  \(String(Int(sliderRed.value)))  "
        mainView.backgroundColor = UIColor(red: CGFloat(sliderRed.value)/255, green: CGFloat(sliderGreen.value)/255, blue: CGFloat(sliderBlue.value)/255, alpha: 1)
        
    }
    @IBAction func switchActionGreen(_ sender: Any) {
        statusGreenLabel.text = "  \(String(Int(sliderGreen.value)))  "
        
        mainView.backgroundColor = UIColor(red: CGFloat(sliderRed.value)/255, green: CGFloat(sliderGreen.value)/255, blue: CGFloat(sliderBlue.value)/255, alpha: 1)
    }
    @IBAction func switchActionBlue(_ sender: Any) {
        statusBlueLabel.text = "  \(String(Int(sliderBlue.value)))  "
        
        mainView.backgroundColor = UIColor(red: CGFloat(sliderRed.value)/255, green: CGFloat(sliderGreen.value)/255, blue: CGFloat(sliderBlue.value)/255, alpha: 1)
    }
    

}

