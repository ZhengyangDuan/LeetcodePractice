//: Playground - noun: a place where people can play

import UIKit
let test1 = [0,2,0,2,0]
let test2 = [10,10,10]

func numRabbits(_ answers: [Int]) -> Int {
    var res = 0
    var count = 0
    let a = answers.sorted()
    
    for i in 0..<a.count{
        if (i == 0 || a[i]>a[i-1]){
            res += (a[i]+1)
            count = 1
        }else if(a[i]==a[i-1]){
            count+=1
            if(count>a[i]+1){
                count=1
                res+=a[i]+1
            }
        }
    }
    return max(res, answers.count)
}

numRabbits(test1)
numRabbits(test2)
