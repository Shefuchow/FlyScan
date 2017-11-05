//
//  ViewController.swift
//  FlyScan
//
//  Created by Master Shefu Chow on 11/5/17.
//  Copyright © 2017 Master Shefu Chow. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var PhotoLibrary: UIButton!
    @IBOutlet weak var Camera: UIButton!
    @IBOutlet weak var ImageDisplay: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let topColor = UIColor(red: (185/225.0), green: (226/255.0), blue: (100/255.0), alpha: 1)
//        let bottomColor = UIColor(red: (156/225.0), green: (197/255.0), blue: (75/255.0), alpha: 1)
//        
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
//        gradientLayer.locations = [0.0, 1.0]
//        gradientLayer.startPoint = CGPoint(x: 0.5, y:1.0)
//        gradientLayer.endPoint = CGPoint(x:0.5, y:0.0)
//        
//        gradientLayer.frame = self.view.frame
//        self.view.layer.addSublayer(gradientLayer)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func PhotoLibraryAction(_ sender: UIButton) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present(picker, animated: true, completion: nil)
    }
    
    @IBAction func CameraAction(_ sender: UIButton) {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .camera
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        ImageDisplay.image = info[UIImagePickerControllerOriginalImage] as? UIImage; dismiss(animated: true, completion: nil)
    
    }


}

