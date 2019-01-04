//: Playground - noun: a place where people can play

import UIKit
var test = [
    ["X", ".", "X", "X"],
    ["X", ".", ".", "."],
    ["X", ".", "X", "."],
    ["X", ".", "X", "."],
]


func countBattleships(_ board: [[String]]) -> Int {
    var res = 0
    for i in 0..<board.count{
        for j in 0..<board[0].count{
            
            if board[i][j] == "X" && (j == 0 || board[i][j-1] == ".") && (i == 0 || board[i-1][j] == "."){
                res += 1
            }
            
        }
    }
    return res
}

countBattleships(test)
