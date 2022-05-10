//
//  ViewController.swift
//  ARQuickLook-UIKIt
//
//  Created by 蘇健豪 on 2022/5/10.
//

import UIKit
import QuickLook
import ARKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let previewController = QLPreviewController()
        previewController.dataSource = self
        present(previewController, animated: true, completion: nil)
    }

}

extension ViewController: QLPreviewControllerDataSource {
    func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
        1
    }
    
    func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
        guard let path = Bundle.main.path(forResource: "yuketen", ofType: "usdz") else { fatalError("Couldn't find the supported input file.") }
        let url = URL(fileURLWithPath: path)
        return url as QLPreviewItem
    }
}
