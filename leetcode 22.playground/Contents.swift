//: Playground - noun: a place where people can play

import UIKit

//var str = "12:40:22AM"
//var str2 = str.components(separatedBy: ":")
//if str2[2].contains("P") {
//    str2[0] = "\(Int(str2[0])! + 12)"
//}
//str2[2] = String(str2[2].prefix(2))
//
//str = "\(str2[0]):\(str2[1]):\(str2[2])"
import Foundation



    func isValid(_ s: String) -> Bool {
        if ( s == nil ) {return false}
        if (s == ""){return true}
        var stack: [String] = []
        var temp = s.map{String($0)}
        for a in 0...temp.count - 1{
            if temp[a] == "(" {
                stack.append(")")
            }else if temp[a] == "[" {
                stack.append("]")
            }else if temp[a] == "{" {
                stack.append("}")
            }else{
                print(stack)
                if (stack.isEmpty == true || stack.last != temp[a]){
                    return false
                    stack.removeLast()
                }else{
                    stack.removeLast()
                }
            }
            
        }
        return stack.isEmpty
    }

 isValid("")


