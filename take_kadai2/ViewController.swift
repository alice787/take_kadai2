//
//  ViewController.swift
//  take_kadai2
//
//  Created by take on 2021/11/08.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var topTextField: UITextField! // 上のtextField
    @IBOutlet private weak var bottomTextField: UITextField! // 下のtextField
    @IBOutlet private weak var segmentedControl: UISegmentedControl!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction private func tappedButton(_ sender: Any) {
        let num1 = Double(topTextField.text ?? "") ?? 0
        let num2 = Double(bottomTextField.text ?? "") ?? 0

        switch segmentedControl.selectedSegmentIndex {
        case 0:
            resultLabel.text = String(num1 + num2)
        case 1:
            resultLabel.text = String(num1 - num2)
        case 2:
            resultLabel.text = String(num1 * num2)
        case 3:
            if num2 == 0 {
                resultLabel.text = "割る数には0以外を入力してください"
            } else {
                resultLabel.text = String(num1 / num2)
            }
        default:
            resultLabel.text = String(num1 + num2)
        }
    }
}
