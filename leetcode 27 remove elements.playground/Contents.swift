//: Playground - noun: a place where people can play
// inout para - refers to prarmeter that changed while you modift it within the function. (make it a var, not let)


import UIKit

func removeElements(_ s:[Int], _ val: Int) -> Int {
    let sR = s.filter{$0 != val}
    return sR.count
}
