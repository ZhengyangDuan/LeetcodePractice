//: Playground - noun: a place where people can play

import UIKit

var test = ["step", "steps", "stripe", "stepple"]
var plate = "1s3 PSt"

func shortestCompletingWord(_ licensePlate: String, _ words: [String]) -> String {
    let words = helper(licensePlate)
    
    
    return ""
}


func helper(_ s: String) -> [String]{
    var res: [String] = []
    var c = Array(s)
    for i in 0..<c.count{
        if String(c[i])>="A" && String(c[i])<="z"{
            res.append(String(c[i]).lowercased())
        }
    }
    return res
    
}
shortestCompletingWord(plate, test)

