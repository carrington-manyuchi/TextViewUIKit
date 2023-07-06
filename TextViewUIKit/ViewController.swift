//  ViewController.swift
//  TextViewUIKit
//  Created by DA MAC M1 157 on 2023/07/06.

import UIKit

class ViewController: UIViewController {
    
    private let myTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "TextView Programmatically"
        textView.font = UIFont.boldSystemFont(ofSize: 17)
        textView.textColor = .red
        textView.textAlignment = NSTextAlignment.left
        
        textView.isEditable = true
        textView.isSelectable = true
        textView.allowsEditingTextAttributes = true
        textView.clearsOnInsertion = false
        
        textView.layer.cornerRadius = 20
//        textView.layer.shadowOffset = CGSize(width: 1, height: 2)
//        textView.layer.shadowColor = UIColor.black.cgColor
//        textView.layer.shadowOpacity = 0.4
//        textView.layer.shadowRadius = 18
        
        textView.returnKeyType = UIReturnKeyType.done
        
        textView.dataDetectorTypes = [ .address, .calendarEvent, .flightNumber, .phoneNumber, .link]
        textView.backgroundColor = .yellow
        return textView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
        configureConstraints()
    }
    
    private func configureViews() {
        view.addSubview(myTextView)
    }
    
    private func configureConstraints() {
        let myTextViewConstraints = [
            myTextView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            myTextView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            myTextView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            myTextView.heightAnchor.constraint(equalToConstant: 120)
        ]
        
        NSLayoutConstraint.activate(myTextViewConstraints)
    }

}

