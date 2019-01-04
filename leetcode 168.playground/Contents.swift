import UIKit

func convertToTitle(_ n: Int) -> String {
    var num = n
    var res: String = ""
    
    while num != 0 {
        let uni = (num - 1) % 26
        num = (num - 1) / 26
        let cha = Character(UnicodeScalar(uni + 65)!)
        res.append(cha)
    }
    return String(res.reversed())
    
}

convertToTitle(52)


