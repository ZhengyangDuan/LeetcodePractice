//: Playground - noun: a place where people can play
// Easy question, one pass iteration.
import UIKit
func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    var adjcent = 0 // how many possiable position
    var c = 1// how many consequent 0 start with 0 because plant can be placed at first position it means the left of first position is 0 as well as the last position.
    for i in 0..<flowerbed.count{
        if flowerbed[i] == 0 {
            c += 1
        }else{
            adjcent += (c-1)/2
            c = 0
        }

    }
    adjcent += c/2
    return adjcent >= n
}

canPlaceFlowers([], 2)
