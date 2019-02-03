//
//  ViewController.swift
//  My camera and Gallary
//
//  Created by mhr on 11/20/18.
//  Copyright © 2018 mhr. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var Photos: UIButton!
    @IBOutlet weak var camera: UIButton!
    @IBOutlet weak var ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

@IBAction func PhotoAction (_ sender: UIButton) {
    
    let picker = UIImagePickerController()
    picker.delegate = self
    picker.sourceType = .photoLibrary
    present(picker, animated: true, completion: nil)
    
    
}
    @IBAction func CameraAction  (_ sender: UIButton) {
        
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .camera
        present(picker, animated: true, completion: nil)
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        let image = info[UIImagePickerControllerEditedImage] as! UIImage
        ImageView.image = image
        
        [UIImagePickerControllerOriginalImage]as?UIImage;
        dismiss(animated: true, completion: nil)
    }
    }

