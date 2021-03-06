//: Playground - noun: a place where people can play

import UIKit

func numDecodings(_ s: String) -> Int {
    let length = s.count
    let s = Array(s)
    if length < 1 || s[0] == "0" {
        return 0
    }
    var dp: [Int] = Array(repeating: 1, count: length + 1)
    for i in 1 ..< length {
        // zero voids ways of the last because zero cannot be used separately
        if s[i] == "0" {
            dp[i] = 0
        }
        
        // possible two-digit letter, so new dp is sum of both while new r2 is the old r1
        if s[i - 1] == "1" || (s[i - 1] == "2" && s[i] <= "6") {
            dp[i+1] = dp[i-1] + dp[i]
        }
            // one-digit letter, no new way added
        else {
            dp[i+1] = dp[i]
        }
    }
    
    return dp.last!
}

print(numDecodings("221234136"))
