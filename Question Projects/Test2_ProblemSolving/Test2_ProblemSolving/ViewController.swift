//
//  ViewController.swift
//  Test2_ProblemSolving
//
//  Created by Softcake on 25/4/2561 BE.
//  Copyright © 2561 AppMan. All rights reserved.
//
import UIKit
import Foundation

class ViewController: UIViewController {
    
   @IBOutlet weak var boxView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPress(cameraButton: UIButton) {
        let vc = UIImagePickerController()
        vc.delegate = self as? UIImagePickerControllerDelegate & UINavigationControllerDelegate
        vc.sourceType = .camera
        vc.cameraCaptureMode = .photo
        present(vc, animated: true, completion: nil)
    }
}

