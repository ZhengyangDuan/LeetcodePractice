//: Playground - noun: a place where people can play

import UIKit

func addStrings(_ num1: String, _ num2: String) -> String {
    var res: String = ""
    var char1 = Array(num1)
    var char2 = Array(num2)
    var i = (num1.count-1)
    var j = (num2.count-1)
    var temp = 0
    var sum = 0
    while i >= 0 || j >= 0{
        var x = 0
        var y = 0
        if i >= 0{
            x = get(char1[i])
        }
        if j >= 0{
            y = get(char2[j])
        }
        sum = x+y+temp
        temp = x+y+temp>=10 ? 1 : 0
        res = "\(sum%10)" + res
        i -= 1
        j -= 1
    }
    if temp == 1{
        res = "1" + res
        temp = 0
    }
    return res
}

func get(_ c: Character) -> Int{
    switch c {
    case "1":
        return 1
    case "2":
        return 2
    case "3":
        return 3
    case "4":
        return 4
    case "5":
        return 5
    case "6":
        return 6
    case "7":
        return 7
    case "8":
        return 8
    case "9":
        return 9
    case "0":
        return 0
    default:
        return 0
    }
}

print(addStrings("34923289472384729", "3442442425252"))




