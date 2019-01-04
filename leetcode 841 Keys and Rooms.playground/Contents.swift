//: Playground - noun: a place where people can play

import UIKit

// the logic is to find if there is a room no other room contains its key
var test = [[1,3],[3,0,1],[2],[0]]
func canVisitAllRooms(_ rooms: [[Int]]) -> Bool {
    var open = Array(repeating: 0, count: rooms.count)
    open[0] = 1
    openRoom(&open, rooms, roomNo: 0)
    print(open)
    return !open.contains(0)
}
func openRoom(_ o: inout [Int], _ keys: [[Int]], roomNo: Int){
    
    for i in 0..<keys[roomNo].count{
        if o[keys[roomNo][i]] == 0 {
            o[keys[roomNo][i]] = 1
            openRoom(&o, keys, roomNo: keys[roomNo][i])
        }
    }
}
canVisitAllRooms(test)


