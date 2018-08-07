//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        if matrix.count == 0{
            return false
        }
        if matrix[0].count == 0{
            return false
        }
        var s = helper(matrix,target)
        for elements in s[0] {
            if elements == target{
                return true
            }
        }
        return false
        
    }
    func helper(_ matrix: [[Int]], _ target: Int) -> [[Int]]{
        if matrix.count == 1 {
            return matrix
        }else{
            let n = matrix.count
            let mid = n/2
            let lfs:[[Int]] = Array(matrix[0..<mid])
            let rhs:[[Int]] = Array(matrix[mid..<n])
            if rhs[0][0] > target{
                return helper(lfs, target)
            }else{
                return helper(rhs, target)
            }
        }
        
    }



searchMatrix([[1,3,5,7],[10,11,16,20],[23,30,34,50]],3)
helper([[1],[4]], 3)

