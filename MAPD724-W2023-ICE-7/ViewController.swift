//
//  ViewController.swift
//  MAPD724-W2023-ICE-7
//
//  Created by Muhammad Bilal Dilbar on 2023-03-15.
//

import UIKit
import GLKit

class ViewController: UIViewController
{
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let rotateMe = GLKMathDegreesToRadians(45)
        
        //Sliding animation for the Label, TextField & ImageView
        UIView.animate(withDuration: 1.5)
        {
            self.myLabel.center.x += self.view.bounds.width
            self.myTextField.center.x += self.view.bounds.width
            self.myImageView.center.x += self.view.bounds.width
        }
        
        //Rotating the Label with animation
        UIView.animate(withDuration: 3.4, delay: 2.3, options: [.repeat, .autoreverse], animations:
        {
           self.myLabel.transform = CGAffineTransform(rotationAngle: CGFloat(rotateMe))
        }, completion: nil)
        
        //Rotating the TextField with animation
        UIView.animate(withDuration: 3.5, delay: 0.45, options: [.repeat, .autoreverse], animations:
        {
           self.myTextField.transform = CGAffineTransform(rotationAngle: CGFloat(-rotateMe))
        }, completion: nil)
        
        //Rotating the ImageView with animation
        UIView.animate(withDuration: 2.5, delay: 1.5, options: [.repeat, .autoreverse], animations:
        {
           self.myImageView.transform = CGAffineTransform(rotationAngle: CGFloat(rotateMe))
        }, completion: nil)
        
        //Changing the transparency of Label with animation
        UIView.animate(withDuration: 2.0, delay: 0.0, options: [.repeat, .autoreverse], animations:
        {
            self.myLabel.alpha = 0.0
            self.myLabel.backgroundColor = UIColor.lightGray
        }, completion: nil)
        
        //Changing the transparency of TextField with animation
        UIView.animate(withDuration: 2.0, delay: 0.0, options: [.repeat, .autoreverse], animations:
        {
            self.myTextField.alpha = 0.0
            self.myTextField.backgroundColor = UIColor.darkGray
        }, completion: nil)
        
        //Changing the transparency of ImageView with animation
        UIView.animate(withDuration: 2.0, delay: 0.0, options: [.repeat, .autoreverse], animations:
        {
            self.myImageView.alpha = 0.0
            self.myImageView.backgroundColor = UIColor.black
        }, completion: nil)
    }

    override func viewWillAppear(_ animated: Bool)
    {
        myLabel.center.x -= view.bounds.width
        myTextField.center.x -= view.bounds.width
        myImageView.center.x -= view.bounds.width
    }
}

