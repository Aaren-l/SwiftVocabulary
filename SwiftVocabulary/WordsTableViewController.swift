//
//  WordsTableViewController.swift
//  SwiftVocabulary
//
//  Created by Aaren Lopez on 4/10/20.
//  Copyright © 2020 Aaren Lopez. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {

        var vocabWords: [VocabularyWord] = [
        VocabularyWord(word: "array", definition: "A data type that stores multiple Values of the same type on an ordered list."),
        VocabularyWord(word: "", definition: "")
        ]

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "word", for: indexPath)

        // Configure the cell...

        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: ShowDefinitionSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
