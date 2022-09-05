//
//  RollerViewController.swift
//  roller
//
//  Created by WonDongHyun on 2022/09/05.
//

import UIKit



class RollerViewController: UIViewController {
    
    let symbols: [String] = [
        "sun.min",
    "moon",
        "cloud",
    "wind",
    "snowflake"]

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //TO-DO

        // Do any additional setup after loading the view.
        
        reload()
        button.tintColor = UIColor.systemPink
    }
    
    func reload(){
        
        let symbol = symbols.randomElement()! // 확실히 있으니까 언래핑
        imageView.image = UIImage(systemName: symbol)
        label.text = symbol
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        
       reload()
        
    }
    

}
