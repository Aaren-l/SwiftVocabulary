//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Aaren Lopez on 4/10/20.
//  Copyright © 2020 Aaren Lopez. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var text: UITextView!
    var vocabWord: VocabularyWord?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    func updateView() {
        if let unwrappedword = vocabWord {
            label.text = unwrappedword.word
            text.text = unwrappedword.definition
        }
    }
}
