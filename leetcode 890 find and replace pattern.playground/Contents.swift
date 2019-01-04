//: Playground - noun: a place where people can play
// this is a truly stupid enough solution, but works very well

import UIKit

func findAndReplacePattern(_ words: [String], _ pattern: String) -> [String] {
    var res:[String] = []
    var correct: Bool = true
    let p = Array(pattern)
    
    for word in words{
        var dict: [Character:Character] = [:]
        var dict2: [Character:Character] = [:]
        let characters = Array(word)
        for i in 0..<p.count{
            if dict[p[i]] == nil {
                dict[p[i]] = characters[i]
            }else{
                if characters[i] != dict[p[i]]{
                    correct = false
                }
            }
            
            if dict2[characters[i]] == nil {
                dict2[characters[i]] = p[i]
            }else{
                if p[i] != dict2[characters[i]]{
                    correct = false
                }
            }
        }
        
        if correct == true {res.append(word)}
        correct = true
    }
    return res
}

findAndReplacePattern(["abc","deq","mee","aqq","dkd","ccc"], "abb")

