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
            VocabularyWord(word: "Array", definition: "A data type that stores multiple Values of the same type on an ordered list."),
            VocabularyWord(word: "nil", definition: "The adsence of a value or no value."),
            VocabularyWord(word: "Structure", definition: "A data type that’s similar to a class, but doesn’t support inheritance and is passed by value instead of by reference."),
            VocabularyWord(word: "Enumeration", definition: "A data type that defines a group of related values and enables you to work with those values in a type-safe way within your code."),
            VocabularyWord(word: "Instance", definition: "A specific occurrence of a class (that is, an object), structure, or enumeration."),
            VocabularyWord(word: "Optional", definition: "A value that contains either an underlying value or nil to indicate that the value is missing.")
            ]
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vocabWords.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let wordTitle = vocabWords[indexPath.row]
        cell.textLabel?.text = wordTitle.word
        return cell
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitonSegue" {
            if let controller = segue.destination as? DefinitionViewController,
                let indexPath = self.tableView.indexPathForSelectedRow {
                controller.vocabWords
            }
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    
}
