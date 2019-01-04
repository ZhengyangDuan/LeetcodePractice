//: Playground - noun: a place where people can play

import UIKit

func getRow(_ rowIndex: Int) -> [Int] {
    var res: [Int] = [1]
    return search(res, rowIndex)
}
func search(_ row: [Int], _ count: Int) -> [Int]{
    if count == 0 {return row}
    var new: [Int] = [1]
    if row.count == 1 {
        new = [1,1]
    }else{
        for i in 0..<row.count{
            if i == row.count - 1{
                new.append(1)
            }else{
                new.append(row[i] + row[i+1])
            }
        }
    }
    return search(new, count-1)
}
print(getRow(3))

