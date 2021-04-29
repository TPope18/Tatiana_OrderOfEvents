//
//  MiddleViewController.swift
//  Tatiana_OrderOfEvents
//
//  Created by Tatiana Pope on 4/27/21.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var eventNumber = 1
   
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from: "viewDidLoad")

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        addEvent(from: "viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        addEvent(from: "viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        addEvent(from: "viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        addEvent(from: "viewDidDisappear")
    }
    
    func addEvent(from: String) {
            if let existingText = label.text {
                label.text = "\(existingText)\nEvent number \(eventNumber) was \(from)"
                eventNumber += 1
            }
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
