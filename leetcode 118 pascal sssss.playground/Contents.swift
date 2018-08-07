//: Playground - noun: a place where people can play

import UIKit
func generate(_ numRows: Int) -> [[Int]] {
    var res: [[Int]] = [[]]
    var cur: [Int] = []
    for i in 0...(numRows-1){
        if i == 0 {
            res.append([1])
        }else if i == 1 {
            res.append([1,1])
        }else{
            for j in 0...(i){
                if j == 0 {
                    cur.append(1)
                    
                }else if j == (i) {
                    cur.append(1)
                }else{
                    cur.append(res[i][j-1]+res[i][j])
                }
            }
            res.append(cur)
            cur = []
        }
        
    }
    return res
}

print(generate(5))

