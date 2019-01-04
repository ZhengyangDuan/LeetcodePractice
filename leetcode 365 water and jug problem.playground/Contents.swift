import UIKit

class Solution {
    func canMeasureWater(_ x: Int, _ y: Int, _ z: Int) -> Bool {
        if (x+y)<z {return false}
        if (x == 0) && (y == 0) {
            if z == 0{
                return true
            }else{return false}}
        return z%gcd(x,y) == 0
        
    }
    
    func gcd(_ x: Int, _ y: Int) -> Int {
        if y == 0 {
            return x
        } else{
            return gcd(y, x%y)
        }
        
    }
}
