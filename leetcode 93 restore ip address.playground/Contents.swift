//: Playground - noun: a place where people can play

import UIKit

func restoreIpAddresses(_ s: String) -> [String] {
    var res: [String] = []
    
    helper(&res, 0, "", 0, s)
    
    return res
}

func helper(_ res: inout [String], _ pos: Int, _ result: String, _ group: Int, _ s: String){
    print(result)
    if (group > 4) {return}
    if (group == 4 && pos == s.count) {
        res.append(result)
        return
    }
    for i in 1...3{
        if (pos + i > s.count){break}
        let temp = s[pos...(pos+i-1)]
        if ((temp.first! == "0" && temp.count>1) || (i == 3 && (Int(temp)!) > 255)){continue}
        helper(&res, pos+i, (result + temp + (group == 3 ? "" : ".")) ,group+1 ,s)
    }
    
}
extension String {
    subscript (bounds: CountableClosedRange<Int>) -> String {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start...end])
    }
    subscript (bounds: CountableRange<Int>) -> String {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start..<end])
    }
}
print(restoreIpAddresses("25525517134"))

